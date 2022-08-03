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

public partial class booking : System.Web.UI.Page
{
    Hashtable appListGlobal;

    protected void Page_Load(object sender, EventArgs e)
    {
        tblStaffCollection staffTbl = new tblStaffCollection();
        staffTbl.ReadList();

        tblAppointmentCollection appTbl = new tblAppointmentCollection();
        appTbl.ReadList(Criteria.NewCriteria(tblAppointment.Columns.idStaff, CriteriaOperators.Equal, staffTbl[0].id));

        #region read all cookies content

        string staffId = "", appoId = "", name = "", fname = "", phone = "", email = "",appoNote="",appoType ="", appoDate = "", appoHour = "";

        //Staff
        if (Response.Cookies["staffId"] != null)
            staffId = Response.Cookies["staffId"].Value;
        //Date
        if (Response.Cookies["appoDate"] != null)
            appoDate = Response.Cookies["appoDate"].Value;
        
        //appoId
        if (Response.Cookies["idApp"] != null)
            appoId = Response.Cookies["idApp"].Value;
        //name
        if (Response.Cookies["name"] != null)
            name = Response.Cookies["name"].Value;

        //fname
        if (Response.Cookies["fname"] != null)
            fname= Response.Cookies["fname"].Value;

        //phone
        if (Response.Cookies["phone"] != null)
            phone = Response.Cookies["phone"].Value;

        //email
        if (Response.Cookies["email"] != null)
            email = Response.Cookies["email"].Value;


        //appoType
        if (Response.Cookies["appoType"] != null)
            appoType = Response.Cookies["appoType"].Value;

        //appoHrs
        if (Response.Cookies["appoHrs"] != null)
            appoHour = Response.Cookies["appoHrs"].Value;

        //appoNote
        if (Response.Cookies["appoNote"] != null)
            appoNote = Response.Cookies["appoNote"].Value;

        #endregion

        #region kill cookies

        if (!IsPostBack)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "myfunction", "killCookie();", true);
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
        

        if (appoId != null)
        {
            tblAppointmentCollection appPostBackTbl = new tblAppointmentCollection();
            appPostBackTbl.ReadList(Criteria.NewCriteria(tblAppointment.Columns.id, CriteriaOperators.Equal, Convert.ToInt32(appoId)));

            ddlApp.SelectedValue = appPostBackTbl[0].id.ToString();


            tblStaffCollection staffPostBackTbl = new tblStaffCollection();
            staffPostBackTbl.ReadList(Criteria.NewCriteria(tblStaff.Columns.id, CriteriaOperators.Equal, appPostBackTbl[0].idStaff));

            appListGlobal = getAppList(Convert.ToInt32(appoId));

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
            string bookedDetStr = "";

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
            appHrsTbl.ReadList(Criteria.NewCriteria(tblAppointmentHours.Columns.idAppoDays,CriteriaOperators.Equal, appDaysTbl[i].id));

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

        #region add cookie of selected service provider

        if (txtName.Value.Length > 0)
            Response.Cookies["name"].Value = txtName.Value;
        if (txtfName.Value.Length > 0)
            Response.Cookies["fname"].Value = txtfName.Value;
        if (ddlAppoType.SelectedValue.Length > 0)
            Response.Cookies["appoType"].Value = ddlAppoType.SelectedValue;
        if (txtPhone.Value.Length > 0)
            Response.Cookies["phone"].Value = txtPhone.Value;
        if (txtEmail.Value.Length > 0)
            Response.Cookies["email"].Value = txtEmail.Value;
        if (ddlSatff.SelectedValue.Length > 0)
            Response.Cookies["staffId"].Value = ddlSatff.SelectedValue;
        if (ddlApp.SelectedValue.Length > 0)
            Response.Cookies["idApp"].Value = ddlApp.SelectedValue;
        if (ddlHours.SelectedValue.Length > 0)
            Response.Cookies["appoHrs"].Value = ddlHours.SelectedValue;

        if (txtAppoNote.Value.Length > 0)
            Response.Cookies["appoNote"].Value = txtAppoNote.Value;

        #endregion

    }
    protected void itemSelected2(object sender, EventArgs e)
    {

        #region Date cookie update
        string date = "";
        if (Response.Cookies["appoDate"] != null)
            date = Response.Cookies["appoDate"].Value;
        #endregion

        #region kill cookies

        if (!IsPostBack)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "myfunction", "killCookie();", true);
        }

        #endregion 

        string idApp = ddlApp.SelectedValue;



        #region add cookie of selected service 

        Response.Cookies["idApp"].Value = idApp;

        if (txtName.Value.Length > 0)
            Response.Cookies["name"].Value = txtName.Value;
        if (txtfName.Value.Length > 0)
            Response.Cookies["fname"].Value = txtfName.Value;
        if (ddlAppoType.SelectedValue.Length > 0)
            Response.Cookies["appoType"].Value = ddlAppoType.SelectedValue;
        if (txtPhone.Value.Length > 0)
            Response.Cookies["phone"].Value = txtPhone.Value;
        if (txtEmail.Value.Length > 0)
            Response.Cookies["email"].Value = txtEmail.Value;
        if (ddlSatff.SelectedValue.Length > 0)
            Response.Cookies["staffId"].Value = ddlSatff.SelectedValue;
        if (ddlApp.SelectedValue.Length > 0)
            Response.Cookies["idApp"].Value = ddlApp.SelectedValue;
        if (ddlHours.SelectedValue.Length > 0)
            Response.Cookies["appoHrs"].Value = ddlHours.SelectedValue;
        if (txtAppoNote.Value.Length > 0)
            Response.Cookies["appoNote"].Value = txtAppoNote.Value;
        
        if (date !=  null)
            Response.Cookies["appoDate"].Value = date;



        #endregion



        Response.Redirect("booking - new.aspx");
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

        if (!IsPostBack)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "myfunction", "killCookie();", true);
        }

        #endregion

        #region send request to page load to set details

        string idApp = ddlApp.SelectedValue;

        //lblIdApp.Text = idApp;

        Response.Cookies["idApp"].Value = idApp;
        if (appHrsTbl.Count > 0)
        {
            Response.Redirect("booking - new.aspx?idAppDay=" + appDayTbl[0].id);
        }
        else
            Response.Redirect("booking - new.aspx?idAppDay=" + 0);

        #endregion

        #region add cookie of selected date
        
        Response.Cookies["appoDate"].Value = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
        Response.Cookies["idApp"].Value = idApp;

        if (txtName.Value.Length > 0)
            Response.Cookies["name"].Value = txtName.Value;
        if (txtfName.Value.Length > 0)
            Response.Cookies["fname"].Value = txtfName.Value;
        if (ddlAppoType.SelectedValue.Length > 0)
            Response.Cookies["appoType"].Value = ddlAppoType.SelectedValue;
        if (txtPhone.Value.Length > 0)
            Response.Cookies["phone"].Value = txtPhone.Value;
        if (txtEmail.Value.Length > 0)
            Response.Cookies["email"].Value = txtEmail.Value;
        if (ddlSatff.SelectedValue.Length > 0)
            Response.Cookies["staffId"].Value = ddlSatff.SelectedValue;
        if (ddlApp.SelectedValue.Length > 0)
            Response.Cookies["idApp"].Value = ddlApp.SelectedValue;
        if (ddlHours.SelectedValue.Length > 0)
            Response.Cookies["appoHrs"].Value = ddlHours.SelectedValue;

        if (txtAppoNote.Value.Length > 0)
            Response.Cookies["appoNote"].Value = txtAppoNote.Value;


        #endregion
    }

    protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
    {
        //LabelAction.Text = "Month changed to :" + e.NewDate.ToShortDateString();
    }

    protected void btnAppo_Click(object sender, EventArgs e)
    {
        tblAppointmentBooked appoBookedTbl = new tblAppointmentBooked();

        refCodeHtml.InnerText = "Date changed to :" + Calendar1.SelectedDate.ToShortDateString();

        if (txtName.Value.Length > 0 && txtPhone.Value.Length > 0 && ddlHours.SelectedValue.Length > 0)
        {
            appoBookedTbl.idApp = Convert.ToInt32(ddlApp.SelectedValue);
            appoBookedTbl.appDate = Calendar1.SelectedDate.ToString("yyyy/MM/dd");
            appoBookedTbl.allow = true;

            //appoBookedTbl.Create();

            refCodeHtml.InnerText = "your refrence code is, Sama-1";

        }
        else
            refCodeHtml.InnerText = "Please filled the required fields first.";
    }
}