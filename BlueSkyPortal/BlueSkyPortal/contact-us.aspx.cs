using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Cruder.Core;
using bluesky.artyn;

using System.Net;
using System.Net.Mail;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string companyDetStr = string.Empty;
        tblCompanyCollection companyTbl = new tblCompanyCollection();
        companyTbl.ReadList();

        #region contact details
        
        if (companyTbl[0].Tel.Length > 0)
            companyDetStr += "<small>Phone: " + companyTbl[0].Tel + "</small>";

        if (companyTbl[0].Phone.Length > 0)
            companyDetStr += "<small>Fax:  " + companyTbl[0].Phone + "</small>";

        if (companyTbl[0].Email.Length > 0)
            companyDetStr += "<p><a href='mail:" + companyTbl[0].Email + "'>" + companyTbl[0].Email + "</a></p>";

        if (companyTbl[0].website.Length > 0)
            companyDetStr += "<p><a href='" + companyTbl[0].website+ "'>" + companyTbl[0].website + "</a></p>";

        //contactDetHtml.InnerHtml = companyDetStr;
        #endregion

        #region contact address

        coTelHtml.InnerText = companyTbl[0].Tel;
        coTelHtml.HRef = "tel:" + companyTbl[0].Tel;

        coEmailHtml.InnerText = companyTbl[0].Email;
        coEmailHtml.HRef = "mailto:" + companyTbl[0].Email;

        coAddrHtml.InnerText = companyTbl[0].CoAddr;

        coGoogleMapHtml.Src = "https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d1438.1344395715666!2d"+companyTbl[0].CoLocB+ "!3d" + companyTbl[0].CoLocA + "!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1632109376623!5m2!1sen!2sca";

        #endregion

        #region social links
        companyDetStr = "";

        if (companyTbl[0].Facebook.Length > 0)
            companyDetStr += "<li class='social__item'><a href='" + companyTbl[0].Facebook + "' class='social__link facebook'><i class='fa fa-facebook'></i></a></li>";

        if (companyTbl[0].Twitter.Length > 0)
            companyDetStr += "<li class='social__item'><a href='" + companyTbl[0].Twitter + "' class='social__link twitter'><i class='fa fa-twitter'></i></a></li>";

        if (companyTbl[0].Instagram.Length > 0)
            companyDetStr += "<li class='social__item'><a href='" + companyTbl[0].Instagram + "' class='social__link instagram'><i class='fa fa-instagram'></i></a></li>";
                

        if (companyTbl[0].SocialNumber.Length > 0)
            companyDetStr += "<li class='social__item'><a href='" + companyTbl[0].SocialNumber+ "' class='social__link instagram'><i class='fa fa-instagram'></i></a></li>";

        if (companyTbl[0].Telegram.Length > 0)
            companyDetStr += "<li class='social__item'><a href='" + companyTbl[0].Telegram + "' class='social__link facebook'><i class='fa fa-telegram'></i></a></li>";

        if (companyTbl[0].Linkedin.Length > 0)
            companyDetStr += "<li class='social__item'><a href='" + companyTbl[0].Linkedin + "' class='social__link facebook'><i class='fa fa-linkedin'></i></a></li>";        

        if (companyTbl[0].youtube.Length > 0)
            companyDetStr += "<li class='social__item'><a href='" + companyTbl[0].youtube + "' class='social__link instagram'><i class='fa fa-youtube'></i></a></li>";
        


        socialHtml.InnerHtml = companyDetStr;

        #endregion

        #region working hrs
        string woringHrsStr = "";
        tblCompanyWorkingHrsCollection workingHoursTbl = new tblCompanyWorkingHrsCollection();
        workingHoursTbl.ReadList();

        if (workingHoursTbl.Count > 0)
        {
            if (workingHoursTbl[0].Mon.Trim().Length > 0)
                woringHrsStr += "<li><p><span class='working-hrs-days'>Monday</span> " + workingHoursTbl[0].Mon + "</p>";
            if (workingHoursTbl[0].Tus.Trim().Length > 0)
                woringHrsStr += "<li><p><span class='working-hrs-days'>Tuesday</span> " + workingHoursTbl[0].Tus + "</p>";
            if (workingHoursTbl[0].Wed.Trim().Length > 0)
                woringHrsStr += "<li><p><span class='working-hrs-days'>Wednsday</span> " + workingHoursTbl[0].Wed + "</p>";
            if (workingHoursTbl[0].Thu.Trim().Length > 0)
                woringHrsStr += "<li><p><span class='working-hrs-days'>Thursday</span> " + workingHoursTbl[0].Thu + "</p>";
            if (workingHoursTbl[0].Fri.Trim().Length > 0)
                woringHrsStr += "<li><p><span class='working-hrs-days'>Friday</span> " + workingHoursTbl[0].Fri + "</p>";
            if (workingHoursTbl[0].Sat.Trim().Length > 0)
                woringHrsStr += "<li><p><span class='working-hrs-days'>Saturday</span> " + workingHoursTbl[0].Sat + "</p>";
            if (workingHoursTbl[0].Sun.Trim().Length > 0)
                woringHrsStr += "<li><p><span class='working-hrs-days'>Sunday</span> " + workingHoursTbl[0].Sun + "</p>";
        }


        workigHrs.InnerHtml = woringHrsStr;
        #endregion


    }

    protected void btnSend_Click(object sender, EventArgs e)
    {
        tblEmailSendDetailsCollection emailDetTbl = new tblEmailSendDetailsCollection();
        emailDetTbl.ReadList();

        #region Sending Email

        string smtpText = emailDetTbl[0].smtp;
        int portNumber = Convert.ToInt32(emailDetTbl[0].portNumber);
        string userName = emailDetTbl[0].emailAddr;
        string password = emailDetTbl[0].password;
        string path = Server.MapPath("doc\\");


        try
        {

            SmtpClient smtp = new SmtpClient(smtpText, portNumber);

            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.UseDefaultCredentials = false;

            smtp.Credentials = new NetworkCredential(userName, password);
            MailMessage message = new MailMessage();
            //message.To.Add("info@bondelectric.ca");
            message.To.Add("sama.kariminia@gmail.com");
            message.Bcc.Add("i8net2000@yahoo.com");


            //string toAddress = "";
            //foreach (var item in toAddress.Split(new[] { ";" }, StringSplitOptions.RemoveEmptyEntries))                //Read from a string with ; as delimiter and split them and put them i an array



            message.From = new MailAddress(userName);
            message.Subject = txtName.Value + " " + txtEmail.Value + " (" + txtPhone.Value + ")";
            message.Body = txtDetails.Value;

            smtp.Send(message);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Email has been sent');", true);
            //Response.Redirect("contact.aspx.aspx");
            lblErrorHtml.InnerText = "your email has been sent sucessfully.";
        }
        catch (Exception ex)
        {

            lblErrorHtml.InnerText = "Email has not been sent because " + ex.Message;
        }

        #endregion
    }
}