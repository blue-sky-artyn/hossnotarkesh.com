using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Cruder.Core;
using bluesky.artyn;

public partial class myaccount : System.Web.UI.Page
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

        if (CurrentMember == null)
        {
            Response.Redirect("user-login.aspx");
        }
        else
        {

            #region user datails

            dashboard.InnerHtml = "<img src='" + CurrentMember.UserPicAddr + CurrentMember.UserPicName + "' alt='" + CurrentMember.UserFirstName + "' class='profile-img' />" +
                "<p>Hello<strong> " + CurrentMember.UserFirstName + "</strong> wellcome to your user profile on Sama Cosmetic Clinic protal.</p>";

            #endregion

            #region addresses
            if (!IsPostBack)
            {
                if (CurrentMember.UserAddress.Trim().Length > 0)
                {
                    txtAddr.Text = CurrentMember.UserAddress;
                }
                else
                    txtAddr.Text = "You have not set up this type of address yet.";

                if (CurrentMember.UserAddressBill.Trim().Length > 0)
                {
                    txtAddrBill.Text = CurrentMember.UserAddressBill;
                }
                else
                    txtAddrBill.Text = "You have not set up this type of address yet.";
            }

            #endregion

            #region my appointmetns
            string appStr = "";
            tblAppointmentBookedDetailsCollection appBookedDetTbl = new tblAppointmentBookedDetailsCollection();
            appBookedDetTbl.ReadList(Criteria.NewCriteria(tblAppointmentBookedDetails.Columns.idSubscriber, CriteriaOperators.Equal, CurrentMember.id));

            tblAppointmentBookedCollection appDetTbl = new tblAppointmentBookedCollection();
            tblAppointmentCollection appTbl = new tblAppointmentCollection();
            tblStaffCollection staffTbl = new tblStaffCollection();
            tblAppoinmentTypesCollection appTypeTbl = new tblAppoinmentTypesCollection();

            for (int i = 0; i < appBookedDetTbl.Count; i++)
            {
                appDetTbl.ReadList(Criteria.NewCriteria(tblAppointmentBooked.Columns.id, CriteriaOperators.Equal, appBookedDetTbl[i].idAppBooked));
                appTbl.ReadList(Criteria.NewCriteria(tblAppointment.Columns.id, CriteriaOperators.Equal, appDetTbl[0].idApp));
                staffTbl.ReadList(Criteria.NewCriteria(tblStaff.Columns.id, CriteriaOperators.Equal, appTbl[0].idStaff));
                appTypeTbl.ReadList(Criteria.NewCriteria(tblAppoinmentTypes.Columns.id, CriteriaOperators.Equal, appTbl[0].idStaff));
                appStr += "<tr>" +
                           "<td class='wide-column'>" + appDetTbl[0].appDate + "(" + appBookedDetTbl[0].appTimeFrom + " , " + appBookedDetTbl[0].appTimeTo + ")</td>" +
                           "<td>" + appTbl[0].appTitle + "</td>" +
                           "<td>" + staffTbl[0].StaffName + "</td>" +
                           "<td>in-person</td>" +
                          "</tr>";
            }

            appHtml.InnerHtml = appStr;

            #endregion

            #region account details
            if (!IsPostBack)
            {
                f_name.Text = CurrentMember.UserFirstName;
                l_name.Text = CurrentMember.UserFamily;
                email.Text = CurrentMember.UserEmail;
            }

            #endregion

            #region patient file
            tblSubscribersProfileAdminCollection profileAdminTbl = new tblSubscribersProfileAdminCollection();
            profileAdminTbl.ReadList(Criteria.NewCriteria(tblSubscribersProfileAdmin.Columns.idSubscribes, CriteriaOperators.Equal, CurrentMember.id));
            int counter = 0;
            for (int i = 0; i < profileAdminTbl.Count; i++)
            {
                tblSubscribersProfileAdminPicsCollection profileAdminPicTbl = new tblSubscribersProfileAdminPicsCollection();
                profileAdminPicTbl.ReadList(Criteria.NewCriteria(tblSubscribersProfileAdminPics.Columns.idProfile, CriteriaOperators.Equal, profileAdminTbl[i].id));

                userProfileHtml.InnerHtml += "<div class='row'><div class='col-md-6 mb-sm--20'>" +
                                            "<h3>Hitory of treatments</h3>" +
                                            "<p class='date-treatment'>" + profileAdminTbl[i].dateUser + "</p>" +
                                            "<p class='details-treatment'>" + profileAdminTbl[i].detailsProfile + "</p>";

                userProfileHtml.InnerHtml += "</div><div class='col-md-6 mb-sm--20'>" +
                    "<ul class='block-pic-treatment'>";

                for (int j = 0; j < profileAdminPicTbl.Count; j++)
                {
                    if (counter == 3)
                    {
                        userProfileHtml.InnerHtml += "</ul><ul class='block-pic-treatment'>";
                        counter = 0;
                    }
                    userProfileHtml.InnerHtml += "<li class='pic-container-treatment'><img class='pic-teartment' src='" + profileAdminPicTbl[j].picAddr + profileAdminPicTbl[j].picName + "' alt='" + profileAdminTbl[i].titleProfile + "' /></li>";
                    counter++;
                }
                userProfileHtml.InnerHtml += "</ul></div></div><hr />";
            }

            #endregion
        }
    }

    protected void btnUpdateAddr_Click(object sender, EventArgs e)
    {
        tblSubscribersCollection subscribersTbl = new tblSubscribersCollection();

        if (CurrentMember == null)
        {
            Response.Redirect("user-login.aspx");
        }
        else
        {
            subscribersTbl.ReadList(Criteria.NewCriteria(tblSubscribers.Columns.id, CriteriaOperators.Equal, CurrentMember.id));

            if (txtAddr.Text.Trim().Length > 0)
            {
                subscribersTbl[0].UserAddress = txtAddr.Text;
                subscribersTbl[0].Update();
                Response.Redirect("myaccount.aspx");
            }
            else
                lblError.InnerText = "Please enter the address first.";

        }

    }

    protected void btnUpdateBillAddr_Click(object sender, EventArgs e)
    {
        tblSubscribersCollection subscribersTbl = new tblSubscribersCollection();

        if (CurrentMember == null)
        {
            Response.Redirect("user-login.aspx");
        }
        else
        {
            subscribersTbl.ReadList(Criteria.NewCriteria(tblSubscribers.Columns.id, CriteriaOperators.Equal, CurrentMember.id));

            if (txtAddrBill.Text.Trim().Length > 0)
            {
                subscribersTbl[0].UserAddressBill = txtAddrBill.Text;
                subscribersTbl[0].Update();
                Response.Redirect("myaccount.aspx");
            }
            else
                lblError.InnerText = "Please enter the billing address first.";

        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        tblSubscribersCollection subscribersTbl = new tblSubscribersCollection();
        if (CurrentMember == null)
        {
            Response.Redirect("user-login.aspx");
        }
        else
        {
            subscribersTbl.ReadList(Criteria.NewCriteria(tblSubscribers.Columns.id, CriteriaOperators.Equal, CurrentMember.id));

            if (f_name.Text.Trim().Length > 0)
                subscribersTbl[0].UserFirstName = f_name.Text;
            else
                subscribersTbl[0].UserFirstName = f_name.Text;

            if (l_name.Text.Trim().Length > 0)
                subscribersTbl[0].UserFamily = l_name.Text;
            else
                subscribersTbl[0].UserFamily = l_name.Text;

            if (email.Text.Trim().Length > 0)
                subscribersTbl[0].UserEmail = email.Text;
            else
                subscribersTbl[0].UserEmail = email.Text;

            if (CurrentMember.UserPass == cur_pass.Text)
            {
                if (new_pass.Text == conf_new_pass.Text)
                {
                    subscribersTbl[0].UserPass = new_pass.Text;
                }
            }

            subscribersTbl[0].Update();

            lblError.InnerText = "Please enter the address first.";

            subscribersTbl[0].Update();
        }
    }
}