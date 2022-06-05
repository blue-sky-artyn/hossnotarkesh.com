using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bluesky.artyn;
using Cruder.Core;

public partial class about : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tblCompanyCollection companyTbl = new tblCompanyCollection();
        companyTbl.ReadList();

        if (companyTbl.Count > 0)
        {

            #region title
            
            companyNameHtml.InnerText = companyTbl[0].CoName;
            companyDet1.InnerText = companyTbl[0].CoOwner;
            companyDet1.HRef = "https://" + companyTbl[0].website;
            coEmailHtml.InnerText = companyTbl[0].Email;
            coEmailHtml.HRef= "mailto:" + companyTbl[0].Email;

            #endregion

            #region Company about details

            aboutHtml.InnerHtml = companyTbl[0].aboutPage;

            #endregion

            #region socials
            //Facebook
            if (companyTbl[0].Facebook.Length > 0)
            {
                socialHtml.InnerHtml = "<li class='social__item'>"+
                                       "<a href='"+ companyTbl[0].Facebook +"' class='social__link facebook'>"+
                                       "<i class='fa fa-facebook'></i></a></li>";
            }

            //Instagram
            if (companyTbl[0].Instagram.Length > 0)
            {
                socialHtml.InnerHtml += "<li class='social__item'>" +
                                       "<a href='" + companyTbl[0].Instagram + "' class='social__link instagram-carousel'>" +
                                       "<i class='fa fa-instagram'></i></a></li>";
            }
            //Twiter
            if (companyTbl[0].Twitter.Length > 0)
            {
                socialHtml.InnerHtml += "<li class='social__item'>" +
                                       "<a href='" + companyTbl[0].Twitter + "' class='social__link twitter'>" +
                                       "<i class='fa fa-twitter'></i></a></li>";
            }

            //Telegram
            if (companyTbl[0].Telegram.Length > 0)
            {
                socialHtml.InnerHtml += "<li class='social__item'>" +
                                       "<a href='" + companyTbl[0].Telegram + "' class='social__link twitter'>" +
                                       "<i class='fa fa-telegram'></i></a></li>";
            }

            //LinkedIn
            if (companyTbl[0].Linkedin.Length > 0)
            {
                socialHtml.InnerHtml += "<li class='social__item'>" +
                                       "<a href='" + companyTbl[0].Linkedin + "' class='social__link twitter'>" +
                                       "<i class='fa fa-linkedin'></i></a></li>";
            }

            //Youtube
            if (companyTbl[0].youtube.Length > 0)
            {
                socialHtml.InnerHtml += "<li class='social__item'>" +
                                       "<a href='" + companyTbl[0].youtube + "' class='social__link pinterest'>" +
                                       "<i class='fa fa-youtube'></i></a></li>";
            }

            #endregion
        }

    }
}