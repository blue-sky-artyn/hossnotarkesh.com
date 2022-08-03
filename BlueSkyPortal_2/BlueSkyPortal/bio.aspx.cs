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
            companyDet1.HRef = companyTbl[0].website;
            coEmailHtml.InnerText = companyTbl[0].Email;
            coEmailHtml.HRef = "mailto:" + companyTbl[0].Email;

            #endregion

            #region Company about details

            coBioHtml.InnerHtml = companyTbl[0].ownerPage;

            #endregion

            #region socials
            //Facebook
            if (companyTbl[0].Facebook.Length > 0)
            {
                socialHtml.InnerHtml = "<li class='social__item'>" +
                                       "<a href='" + companyTbl[0].Facebook + "' class='social__link facebook'>" +
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

        #region services

        string servicesStr = string.Empty;
        tblServicesCollection servicesTbl = new tblServicesCollection();
        servicesTbl.ReadList();
        tblServicePicCollection servicesPicTbl = new tblServicePicCollection();
        tblServiceGroupCollection servicesGrpTbl = new tblServiceGroupCollection();

        for (int i = 0; i < servicesTbl.Count; i++)
        {
            servicesPicTbl.ReadList(Criteria.NewCriteria(tblServicePic.Columns.idService,CriteriaOperators.Equal,servicesTbl[i].id));
            servicesGrpTbl.ReadList(Criteria.NewCriteria(tblServiceGroup.Columns.id, CriteriaOperators.Equal,servicesTbl[i].idServiceGroup));

            servicesStr += "<div class='recent-post__item'><div class='recent-post__thumb'>" +
                           "<a href='services.aspx?idService=" + servicesTbl[i].id + "'><img src='" + servicesPicTbl[0].picAddr + servicesPicTbl[0].picName + "' alt='" + servicesTbl[i].ServiceTitle + "'></a>" +
                           "</div><div class='recent-post__content'>" +
                           "<h3 class='recent-post__title text-truncate'><a href='services.aspx?idService=" + servicesTbl[i].id + "'>" + servicesTbl[i].ServiceTitle + "</a></h3>" +
                           "<span class='recent-post__meta'>" + servicesGrpTbl[0].ServiceGroupTitle + "</span></div></div>";
        }

        servicesHtml.InnerHtml = servicesStr;
        #endregion

        #region products

        string productsStr = string.Empty;
        tblProductCollection productsTbl = new tblProductCollection();
        productsTbl.ReadList();
        
        tblProductGroupCollection productGrpTbl = new tblProductGroupCollection();

        for (int i = 0; i < productsTbl.Count; i++)
        {
            
            productGrpTbl.ReadList(Criteria.NewCriteria(tblProductGroup.Columns.id, CriteriaOperators.Equal, productsTbl[i].productGrpId));

            productsStr += "<div class='recent-post__item'><div class='recent-post__thumb'>" +
                           "<a href='products.aspx?idProduct=" + productsTbl[i].id + "'><img src='" + productsTbl[i].productCoverPicAdd + productsTbl[i].productCoverPicName + "' alt='" + productsTbl[i].productName + "'></a>" +
                           "</div><div class='recent-post__content'>" +
                           "<h3 class='recent-post__title text-truncate'><a href='products.aspx?idService=" + productsTbl[i].id + "'>" + productsTbl[i].productName + "</a></h3>" +
                           "<span class='recent-post__meta'>" + productGrpTbl[0].groupName + "</span></div></div>";
        }

        productsHtml.InnerHtml = productsStr;
        #endregion
    }
}