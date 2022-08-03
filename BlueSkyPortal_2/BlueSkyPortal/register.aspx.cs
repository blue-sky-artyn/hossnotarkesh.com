using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cruder.Core;
using bluesky.artyn;
public partial class dashboard_login : System.Web.UI.Page
{
    public tblAdmin CurrentMember
    {
        get
        {
            if (Session["tblUser"] == null)
            {
                return null;
            }
            else return ((tblAdmin)Session["tblUser"]);

        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (CurrentMember != null)
        {
            Response.Redirect("admin/default.aspx");
        }
    }

    protected void btnEnter_Click(object sender, EventArgs e)
    {
        bool flag = true, passCheck = false;
        tblSubscribers membersTbl = new tblSubscribers();

        if (txtPass1.Text.Trim().Length > 0 && txtPass2.Text.Trim().Length > 0)
        {
            if (txtPass1.Text.Trim() == txtPass2.Text.Trim())
            {
                passCheck = true;
            }
        }


        if (txtEmail.Text.Trim().Length > 0 && gridCheck.Checked && passCheck)
        {
            membersTbl.planId = 1;
            membersTbl.UserName = txtEmail.Text;
            membersTbl.UserPass = txtPass1.Text;


            membersTbl.UserFirstName = txtName.Text;
            membersTbl.UserFamily = txtFamily.Text;
            
            membersTbl.UserInsertDate = DateTime.Now.ToString("yyyyMMdd");
            
            membersTbl.UserDetail = txtDetails.Text;
            membersTbl.UserStartDate = DateTime.Now.ToString("yyyyMMdd");
            membersTbl.UserStartTime = DateTime.Now.ToString("hh:mm:ss");
            membersTbl.UserEndDate = "0";
            membersTbl.UserEndTime = "";
            membersTbl.UserEmail = txtEmail.Text;
            membersTbl.UserTel = txtTel.Text;
            membersTbl.UserAddress = txtAddr.Text;
            membersTbl.UserAddressBill = txtAddr.Text;

            #region extra items

            membersTbl.UserCity = "";
            membersTbl.UserProvince = "";
            membersTbl.UserSchoolName = "";
            membersTbl.UserLevelOfEducation = "";
            membersTbl.UserAge = 0;

            #endregion

            membersTbl.allow = "1";

            #region profile picture
            
            string filename = string.Empty;
            if (IsPostBack)
            {
                Boolean fileOK = false;
                String path = Server.MapPath("~/images/members/");
                if (fuGallery.HasFile)
                {
                    String fileExtension = System.IO.Path.GetExtension(fuGallery.FileName).ToLower();
                    filename = fuGallery.FileName;
                    String[] allowedExtensions = { ".jpg", ".png", ".bmp", ".gif", ".tiff", ".tif", ".jfif", ".jpeg" };
                    for (int i = 0; i < allowedExtensions.Length; i++)
                    {
                        if (fileExtension == allowedExtensions[i])
                        {
                            fileOK = true;
                        }
                    }
                }

                if (fileOK)
                {
                    try
                    {
                        fuGallery.PostedFile.SaveAs(path + filename);
                        filename = fuGallery.FileName;
                    }
                    catch (Exception ex)
                    {
                        lblError.InnerText = "A problem accurred while uplouding picture" + ex;
                        lblError.Visible = true;
                    }
                }
                else
                {
                    lblError.InnerText = "Not valid picture file";
                    lblError.Visible = true;
                }

                membersTbl.UserPicName = filename;
                membersTbl.UserPicAddr = "images/members/";
            }
            #endregion

            if (flag)
            {
                membersTbl.Create();
                Response.Redirect("user-login.aspx?itemMail=" + txtEmail.Text);
            }
        }
        else
        {
            lblError.Visible = true;
            
            if (passCheck == false)
                lblError.InnerText = "Passwords are not matched.";
            else
                lblError.InnerText = "Please enter required items.";
        }

    }
}