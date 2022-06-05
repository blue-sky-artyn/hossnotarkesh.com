using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Cruder.Core;
using bluesky.artyn;

using System.Xml.Linq;
using System.Collections;
using System.Net;
using System.Net.Mail;

public partial class booking : System.Web.UI.Page
{
    Hashtable appListGlobal;

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
        tblStaffCollection staffTbl = new tblStaffCollection();
        staffTbl.ReadList();

        tblAppointmentCollection appTbl = new tblAppointmentCollection();
        appTbl.ReadList(Criteria.NewCriteria(tblAppointment.Columns.idStaff, CriteriaOperators.Equal, staffTbl[0].id));

        if (Request.Cookies["appoDate"] != null)
        {
            string dateAppo = Request.Cookies["appoDate"].Value;
            selectedDate.InnerText = dateAppo;
        }



        #region kill cookies

        if (!IsPostBack)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "myfunction", "killCookie();", true);
            //ScriptManager.RegisterStartupScript(this, GetType(), "myfunction1", "killAppoDate();", true);
        }

        #endregion

        if (!IsPostBack)
        {
            #region ddl staff

            for (int i = 0; i < staffTbl.Count; i++)
            {
                ddlSatff.Items.Add(new ListItem(staffTbl[i].StaffName + " " + staffTbl[i].StaffFamily, staffTbl[i].id.ToString()));
            }

            #endregion

            #region ddl appointments

            for (int i = 0; i < appTbl.Count; i++)
            {
                ddlApp.Items.Add(new ListItem(appTbl[i].appTitle, appTbl[i].id.ToString()));
            }

            #endregion

        }

        #region calendar items
        string dateToday = DateTime.Now.ToString("yyyy/MM/dd");

        Calendar1.Caption = "Appointments Time List";
        //Calendar1.FirstDayOfWeek = FirstDayOfWeek.Sunday;
        Calendar1.NextPrevFormat = NextPrevFormat.ShortMonth;
        Calendar1.TitleFormat = TitleFormat.Month;
        Calendar1.ShowGridLines = true;
        Calendar1.DayStyle.Height = new Unit(50);
        Calendar1.DayStyle.Width = new Unit(150);
        Calendar1.DayStyle.HorizontalAlign = HorizontalAlign.Center;
        Calendar1.DayStyle.VerticalAlign = VerticalAlign.Middle;
        Calendar1.OtherMonthDayStyle.BackColor = System.Drawing.Color.AliceBlue;

        #endregion

        #region post back after itemselected
        string idAppPostBack = "";

        if (Request.Cookies["idApp"] != null)
        {
            idAppPostBack = Request.Cookies["idApp"].Value;

            tblAppointmentCollection appPostBackTbl = new tblAppointmentCollection();
            appPostBackTbl.ReadList(Criteria.NewCriteria(tblAppointment.Columns.id, CriteriaOperators.Equal, Convert.ToInt32(idAppPostBack)));

            ddlApp.SelectedValue = appPostBackTbl[0].id.ToString();


            tblStaffCollection staffPostBackTbl = new tblStaffCollection();
            staffPostBackTbl.ReadList(Criteria.NewCriteria(tblStaff.Columns.id, CriteriaOperators.Equal, appPostBackTbl[0].idStaff));

            appListGlobal = getAppList(Convert.ToInt32(idAppPostBack));

            ddlSatff.SelectedValue = staffPostBackTbl[0].id.ToString();
        }
        else
            appListGlobal = getAppList(appTbl[0].id);

        #endregion

        #region after post back set the edtails of appointments

        int itemGet = 0;
        if (Request.QueryString["idAppDay"] != null)
        {
            itemGet = int.Parse(Request.QueryString["idAppDay"]);

            tblAppointmentDaysCollection appDayTbl = new tblAppointmentDaysCollection();
            appDayTbl.ReadList(Criteria.NewCriteria(tblAppointmentDays.Columns.id, CriteriaOperators.Equal, itemGet));

            tblAppointmentHoursCollection appHrsTbl = new tblAppointmentHoursCollection();

            if (appDayTbl.Count > 0)
                appHrsTbl.ReadList(Criteria.NewCriteria(tblAppointmentHours.Columns.idAppoDays, CriteriaOperators.Equal, appDayTbl[0].id));

            if (appHrsTbl.Count > 0)
            {
                for (int i = 0; i < appHrsTbl.Count; i++)
                {
                    ddlHours.Items.Add(new ListItem(appHrsTbl[i].hourFrom + " " + appHrsTbl[i].hourTo, appHrsTbl[i].id.ToString()));
                }
            }
            else
                appDetListHtml.InnerHtml = "<li><span>There is no appointment for this day.</span></li>";
        }
        #endregion

        #region check member login

        if (CurrentMember == null)
        {
            //Response.Redirect("user-login.aspx");
            lblUser.InnerText = "Register as a guest, Please enter your detail.";

        }
        else
        {
            btnLogin.Visible = false;
            lblUser.InnerText = "Mr/Mrs: " + CurrentMember.UserFirstName;

            reg1.Visible = false;
            reg2.Visible = false;
            reg3.Visible = false;

        }
        #endregion

    }
    private Hashtable getAppList(int appSent)
    {
        Hashtable appList = new Hashtable();



        tblAppointmentCollection appTbl = new tblAppointmentCollection();
        appTbl.ReadList(Criteria.NewCriteria(tblAppointment.Columns.id, CriteriaOperators.Equal, appSent));

        tblAppointmentDaysCollection appDaysTbl = new tblAppointmentDaysCollection();
        appDaysTbl.ReadList(Criteria.NewCriteria(tblAppointmentDays.Columns.idApp, CriteriaOperators.Equal, appSent));

        tblAppointmentHoursCollection appHrsTbl = new tblAppointmentHoursCollection();



        for (int i = 0; i < appDaysTbl.Count; i++)
        {
            appHrsTbl.ReadList(Criteria.NewCriteria(tblAppointmentHours.Columns.idAppoDays, CriteriaOperators.Equal, appDaysTbl[i].id));

            if (appHrsTbl.Count > 0)
            {


                switch (appDaysTbl[i].weekDays)
                {
                    case 1:
                        appList["Mon"] = "Mon";
                        break;
                    case 2:
                        appList["Tue"] = "Tue";
                        break;
                    case 3:
                        appList["Wed"] = "Wed";
                        break;
                    case 4:
                        appList["Thu"] = "Thu";
                        break;
                    case 5:
                        appList["Fri"] = "Fri";
                        break;
                    case 6:
                        appList["Sat"] = "Sat";
                        break;
                    case 7:
                        appList["Sun"] = "Sun";
                        break;

                }
            }
        }

        return appList;
    }
    protected void itemSelected1(object sender, EventArgs e)
    {
        tblAppointmentCollection appTbl = new tblAppointmentCollection();
        appTbl.ReadList(Criteria.NewCriteria(tblAppointment.Columns.idStaff, CriteriaOperators.Equal, Convert.ToInt32(ddlSatff.SelectedValue)));

        #region ddl appointments

        for (int i = 0; i < appTbl.Count; i++)
        {
            ddlApp.Items.Add(new ListItem(appTbl[i].appTitle, appTbl[i].id.ToString()));
        }

        #endregion
    }
    protected void itemSelected2(object sender, EventArgs e)
    {
        #region kill cookies

        if (!IsPostBack)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "myfunction", "killCookie();", true);
        }

        #endregion 

        string idApp = ddlApp.SelectedValue;

        //lblIdApp.Text = idApp;

        #region read contents and set cookies 

        Response.Cookies["idApp"].Value = idApp;

        #endregion

        Response.Redirect("booking.aspx");
    }

    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        string dateToday = DateTime.Now.ToString("ddd");

        if (appListGlobal[e.Day.Date.ToString("ddd")] != null)
        {
            Literal literal1 = new Literal();
            literal1.Text = "<br/>";
            e.Cell.Controls.Add(literal1);
            System.Web.UI.WebControls.Label label123 = new System.Web.UI.WebControls.Label();

            label123.Text += "Time Available"; //(string)appListGlobal[e.Day.Date.ToString("ddd")];

            label123.Font.Size = new FontUnit(FontSize.XXSmall);
            label123.ForeColor = System.Drawing.Color.Red;
            e.Cell.Controls.Add(label123);
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        string dateSelectedStr = ""; int dayNumber = 0;
        dateSelectedStr = Calendar1.SelectedDate.ToString("ddd");

        switch (dateSelectedStr)
        {
            case "Mon":
                dayNumber = 1;
                break;
            case "Tue":
                dayNumber = 2;
                break;

            case "Wed":
                dayNumber = 3;
                break;
            case "Thu":
                dayNumber = 4;
                break;
            case "Fri":
                dayNumber = 5;
                break;
            case "Sat":
                dayNumber = 6;
                break;
            case "Sun":
                dayNumber = 7;
                break;
        }



        tblAppointmentCollection appTbl = new tblAppointmentCollection();
        appTbl.ReadList(Criteria.NewCriteria(tblAppointment.Columns.id, CriteriaOperators.Equal, Convert.ToInt32(ddlApp.SelectedValue)));

        tblAppointmentDaysCollection appDayTbl = new tblAppointmentDaysCollection();
        appDayTbl.ReadList(Criteria.NewCriteria(tblAppointmentDays.Columns.idApp, CriteriaOperators.Equal, Convert.ToInt32(ddlApp.SelectedValue)) & Criteria.NewCriteria(tblAppointmentDays.Columns.weekDays, CriteriaOperators.Equal, dayNumber));

        tblAppointmentHoursCollection appHrsTbl = new tblAppointmentHoursCollection();

        if (appDayTbl.Count > 0)
            appHrsTbl.ReadList(Criteria.NewCriteria(tblAppointmentHours.Columns.idAppoDays, CriteriaOperators.Equal, appDayTbl[0].id));

        if (appHrsTbl.Count > 0)
        {
            for (int i = 0; i < appHrsTbl.Count; i++)
            {
                ddlHours.Items.Add(new ListItem(appHrsTbl[i].hourFrom + " " + appHrsTbl[i].hourTo, appHrsTbl[i].id.ToString()));
            }
        }
        else
            appDetListHtml.InnerHtml = "<li><span>There is no appointment for this day.</span></li>";

        #region kill cookies

        ScriptManager.RegisterStartupScript(this, GetType(), "myfunction", "killAppoDate();", true);

        #endregion

        #region create a cookie for selected date

        Response.Cookies["appoDate"].Value = Calendar1.SelectedDate.ToString("yyyy/MM/dd");

        #endregion

        #region send request to page load to set details

        string idApp = ddlApp.SelectedValue;

        //lblIdApp.Text = idApp;

        Response.Cookies["idApp"].Value = idApp;
        if (appHrsTbl.Count > 0)
        {
            Response.Redirect("booking.aspx?idAppDay=" + appDayTbl[0].id);
        }
        else
            Response.Redirect("booking.aspx?idAppDay=" + 0);

        #endregion

    }

    protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
    {
        //LabelAction.Text = "Month changed to :" + e.NewDate.ToShortDateString();
    }

    protected void btnAppo_Click(object sender, EventArgs e)
    {
        try
        {


            #region read the cookie of selected date
            string appoDate = "";
            if (Request.Cookies["appoDate"] != null)
            {
                appoDate = Request.Cookies["appoDate"].Value;

                #endregion

                #region check this is already taken by someone else

                Boolean checkAlreadyBooked = false;

                tblAppointmentBookedCollection appoBookedCheckTbl = new tblAppointmentBookedCollection();
                appoBookedCheckTbl.ReadList(Criteria.NewCriteria(tblAppointmentBooked.Columns.appDate, CriteriaOperators.Like, appoDate));

                tblAppointmentBookedDetailsCollection appoBookedDetailsCheckTbl = new tblAppointmentBookedDetailsCollection();
                tblAppointmentHoursCollection appHrsBookedCheckTbl = new tblAppointmentHoursCollection();
                if (ddlHours.SelectedValue != null)
                {


                    appHrsBookedCheckTbl.ReadList(Criteria.NewCriteria(tblAppointmentHours.Columns.id, CriteriaOperators.Equal, ddlHours.SelectedValue));

                    for (int i = 0; i < appoBookedCheckTbl.Count; i++)
                    {
                        appoBookedDetailsCheckTbl.ReadList(Criteria.NewCriteria(tblAppointmentBookedDetails.Columns.idAppBooked, CriteriaOperators.Equal, appoBookedCheckTbl[i].id));

                        if (appoBookedDetailsCheckTbl[0].appTimeFrom == appHrsBookedCheckTbl[0].hourFrom)
                        {
                            checkAlreadyBooked = true;
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Day has been found');", true);
                        }
                    }

                    #endregion

                    #region Save data
                    //check entered content and cookie date 
                    tblAppointmentBooked appoBookedTbl = new tblAppointmentBooked();
                    tblAppointmentBookedDetails appoBookedDetTbl = new tblAppointmentBookedDetails();
                    tblAppointmentGuest appoGuestTbl = new tblAppointmentGuest();

                    //tblAppointment appoTbl = new tblAppointment();
                    tblAppointmentBookedCollection appoBookedSetIdTbl = new tblAppointmentBookedCollection();
                    tblAppointmentGuestCollection appoGuestSetIdTbl = new tblAppointmentGuestCollection();
                    tblAppointmentHoursCollection appoHoursTbl = new tblAppointmentHoursCollection();
                    if (!checkAlreadyBooked)
                    {

                        if (CurrentMember != null || (txtName.Value.Length > 0 && txtPhone.Value.Length > 0))
                        {
                            if (ddlHours.SelectedValue.Length > 0 && appoDate.Length > 0 && ddlApp.SelectedValue.Length > 0)
                            {
                                #region tblAppointmentBooked

                                appoBookedTbl.idApp = Convert.ToInt32(ddlApp.SelectedValue);
                                appoBookedTbl.appDate = appoDate;
                                appoBookedTbl.allow = true;

                                appoBookedTbl.Create();

                                #endregion

                                #region tblAppointmentGuest
                                if (CurrentMember == null)
                                {
                                    appoGuestTbl.appGuestName = txtName.Value;
                                    appoGuestTbl.appGuestFname = txtfName.Value;
                                    appoGuestTbl.appGuestTel = txtPhone.Value;
                                    appoGuestTbl.appGuestEmail = txtEmail.Value;
                                    appoGuestTbl.appGuestDetails = txtAppoNote.Value;
                                    appoGuestTbl.allow = "1";

                                    appoGuestTbl.Create();
                                }

                                #endregion

                                #region tblAppointmentBookedDetails

                                appoBookedSetIdTbl.ReadList();

                                appoHoursTbl.ReadList(Criteria.NewCriteria(tblAppointmentHours.Columns.id, CriteriaOperators.Equal, Convert.ToInt32(ddlHours.SelectedValue)));

                                if (CurrentMember == null)
                                {
                                    appoGuestSetIdTbl.ReadList();
                                    appoBookedDetTbl.idGuest = appoGuestSetIdTbl[appoGuestSetIdTbl.Count - 1].id;
                                    appoBookedDetTbl.idSubscriber = 0;
                                }
                                else
                                {
                                    appoBookedDetTbl.idGuest = 0;
                                    appoBookedDetTbl.idSubscriber = CurrentMember.id;
                                }

                                appoBookedDetTbl.idAppBooked = appoBookedSetIdTbl[appoBookedSetIdTbl.Count - 1].id;


                                appoBookedDetTbl.appTimeFrom = appoHoursTbl[0].hourFrom;
                                appoBookedDetTbl.appTimeTo = appoHoursTbl[0].hourTo;

                                appoBookedDetTbl.appTitle = "";
                                appoBookedDetTbl.appDetails = txtAppoNote.Value;

                                appoBookedDetTbl.appoConfirm = false;
                                appoBookedDetTbl.appoDone = false;
                                appoBookedDetTbl.appoReasonDet = "";

                                appoBookedDetTbl.allow = true;

                                appoBookedDetTbl.Create();
                                #endregion

                                #region Set saved values

                                refCodeHtml.InnerText = "Sama_" + appoBookedSetIdTbl[appoBookedSetIdTbl.Count - 1].id.ToString();
                                if (CurrentMember == null)
                                {
                                    detName.InnerText = txtName.Value + " " + txtfName.Value;
                                }
                                else
                                    detName.InnerText = CurrentMember.UserFirstName + " " + CurrentMember.UserFamily;

                                tblStaffCollection staffTbl = new tblStaffCollection();
                                staffTbl.ReadList(Criteria.NewCriteria(tblStaff.Columns.id, CriteriaOperators.Equal, Convert.ToInt32(ddlSatff.SelectedValue)));
                                detServProvider.InnerText = staffTbl[0].StaffName + " " + staffTbl[0].StaffFamily;

                                tblAppointmentCollection appoTbl = new tblAppointmentCollection();
                                appoTbl.ReadList(Criteria.NewCriteria(tblAppointment.Columns.id, CriteriaOperators.Equal, Convert.ToInt32(ddlApp.SelectedValue)));
                                detService.InnerText = appoTbl[0].appTitle;


                                tblAppointmentHoursCollection appoHrsTbl = new tblAppointmentHoursCollection();
                                appoHrsTbl.ReadList(Criteria.NewCriteria(tblAppointmentHours.Columns.id, CriteriaOperators.Equal, Convert.ToInt32(ddlHours.SelectedValue)));
                                detTime.InnerText = appoHrsTbl[0].hourFrom + " " + appoHrsTbl[0].hourTo;


                                detDate.InnerText = appoDate;

                                #endregion

                                #region emails

                                tblEmailSendDetailsCollection emailSendDetTbl = new tblEmailSendDetailsCollection();
                                emailSendDetTbl.ReadList();

                                tblCompanyCollection companyDetTbl = new tblCompanyCollection();
                                companyDetTbl.ReadList();

                                #region email details
                                string smtpText = emailSendDetTbl[0].smtp; //"smtp.gmail.com"; //"smtp.mail.yahoo.com"; //"webmail.megmc.ir";
                                int portNumber = Convert.ToInt32(emailSendDetTbl[0].portNumber); // 587;//Convert.ToInt32(emailsDetTbl[0].emailPortNo);//587;//465;//143;
                                string userName = emailSendDetTbl[0].emailAddr; //"decowallinc.noreply@gmail.com";//"powerplant.mashhad@gmail.com"//emailsDetTbl[0].emailAddr;//"powerplant.mashhad@gmail.com";//"i8net2000@yahoo.com";//"staff_department@megmc.ir";
                                string password = emailSendDetTbl[0].password; //"Admin@1639";//"Mashhad2019";;//emailsDetTbl[0].emailPass;//"Mashhad2019";//"w123e456";//"Aa123456";

                                #endregion

                                #region email to customer & admin
                                SmtpClient smtp = new SmtpClient(smtpText, portNumber);

                                smtp.EnableSsl = true;
                                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                                smtp.UseDefaultCredentials = false;

                                smtp.Credentials = new NetworkCredential(userName, password);
                                MailMessage message = new MailMessage();

                                message.IsBodyHtml = true;     //////////// beacuse the body is NOT a TEXT and it is HTML
                                if (CurrentMember == null && txtEmail.Value.Trim().Length > 0)
                                {
                                    message.To.Add(txtEmail.Value);
                                    message.Bcc.Add(emailSendDetTbl[0].emailAddr);
                                }
                                else if (CurrentMember != null)
                                {
                                    message.To.Add(CurrentMember.UserEmail);
                                    message.Bcc.Add(emailSendDetTbl[0].emailAddr);
                                }

                                message.From = new MailAddress(userName);
                                message.Subject = "Confirmation of booking for " + companyDetTbl[0].CoName;
                                string emailBody = "<div><div>" +
                                                   "<h2>Your Appointment Details:</h2></div>" +
                                                   "<div><table><thead>" +
                                                   "<tr><th>Ref. Code</th><th>" + appoBookedSetIdTbl[appoBookedSetIdTbl.Count - 1].id.ToString() + "</th></tr></thead><tbody>";
                                if (CurrentMember == null)
                                {

                                    emailBody += "<tr><th>Full Name:</th><td>" + txtName.Value + " " + txtfName.Value + "</td></tr>";
                                }
                                else
                                    emailBody += "<tr><th>Full Name:</th><td>" + CurrentMember.UserFirstName + " " + CurrentMember.UserFamily + "</td></tr>";
                                emailBody += "<tr><th>Service Provider:</th><td>" + staffTbl[0].StaffName + " " + staffTbl[0].StaffFamily + "</td></tr>" +
                                             "<tr><th>Service:</th><td>" + appoTbl[0].appTitle + "</td>" +
                                             "</tr></tbody><tfoot>" +
                                             "<tr><th>time:</th><td>" + appoHrsTbl[0].hourFrom + " " + appoHrsTbl[0].hourTo + "</td></tr>" +
                                             "<tr><th>Date:</th><td>" + appoDate + "</td>" +
                                             "</tr></tfoot></table></div></div>";


                                message.Body = Server.HtmlDecode(emailBody);

                                smtp.Send(message);

                                #endregion

                                #endregion

                            }
                        }
                        else
                            lblError.InnerText = "Please enter required information.";
                    }
                    else
                        lblError.InnerText = "This time slot has been already taken by someone else, please choose another time.";
                    #endregion
                }
                else
                    lblError.InnerText = "Please choose youe desired time slot please.";
            }
            else
                lblError.InnerText = "Please choose a day first.";
            ScriptManager.RegisterStartupScript(this, GetType(), "myfunction1", "killAppoDate();", true);

        }
        catch (Exception ex)
        {
            lblError.InnerText = "There was a problem over process of booking, " + ex.Message;
            ScriptManager.RegisterStartupScript(this, GetType(), "myfunction1", "killAppoDate();", true);
        }
    }
}