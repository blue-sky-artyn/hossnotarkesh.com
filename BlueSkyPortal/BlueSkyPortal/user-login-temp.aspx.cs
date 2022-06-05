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
    public tblSubscribers CurrentMember
    {
        get
        {
            if (Session["tblMembers"] == null)
            {
                return null;
            }
            else return ((tblSubscribers)Session["tblMembers"]);

        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        string itemGet = string.Empty;
        if (Request.QueryString["itemMail"] != null)
            txtUser.Text = Request.QueryString["itemMail"];
        
        if (CurrentMember != null)
        {
            Response.Redirect("myaccount.aspx");
        }
    }

    protected void btnEnter_Click(object sender, EventArgs e)
    {
        tblSubscribers memberList = tblSubscribers.loginCheck(txtUser.Text, txtPass.Text);
        if (memberList == null)
        {
            lblError.Visible = true;
        }
        else
        {
            Session["tblMembers"] = memberList;
            if (Session["UrlReferrer"] == null)
            {
                Response.Redirect("myaccount.aspx");
            }
        }
    }
    protected void btnReg_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}