using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using bluesky.artyn;
using Cruder.Core;

public partial class Menu : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string companyStr = string.Empty;
        tblCompanyCollection companyTbl = new tblCompanyCollection();
        companyTbl.ReadList();

        #region Services on Menu

        tblServiceGroupCollection servicesGrpTbl = new tblServiceGroupCollection();
        servicesGrpTbl.ReadList();
        tblServicesCollection serviceTbl = new tblServicesCollection();

        string serviceStr = "";
        for (int i = 0; i < servicesGrpTbl.Count; i++)
        {

            serviceStr += "<li class='menu-item-has-children'>" +
                "<a href='services.aspx?servGrpId=" + servicesGrpTbl[i].id + "'><span class='mm-text'>" + servicesGrpTbl[i].ServiceGroupTitle + "</span></a>";

            serviceTbl.ReadList(Criteria.NewCriteria(tblServices.Columns.idServiceGroup, CriteriaOperators.Equal, servicesGrpTbl[i].id));

            serviceStr += "<ul class='sub-menu'>";
            for (int j = 0; j < serviceTbl.Count; j++)
            {
                serviceStr += "<li><a href='services.aspx?servId=" + serviceTbl[j].id + "'><span class='mm-text'>" + serviceTbl[j].ServiceTitle + "</span></a></li>";
            }
            serviceStr += "</ul></li>";
        }

        //servicesHtml.InnerHtml = serviceStr;
        #endregion

        #region Services on Menu (BKP_Second view)

        //tblServiceGroupCollection servicesGrpTbl = new tblServiceGroupCollection();
        //servicesGrpTbl.ReadList();
        //tblServicesCollection serviceTbl = new tblServicesCollection();

        //string serviceStr = "";
        //for (int i = 0; i < servicesGrpTbl.Count; i++)
        //{
        //    serviceStr += "<li><a class='megamenu-title' href='services.aspx?servGrpId=" + servicesGrpTbl[i].id + "'><span class='mm-text'>" + servicesGrpTbl[i].ServiceGroupTitle + "</span></a>";

        //    serviceTbl.ReadList(Criteria.NewCriteria(tblServices.Columns.idServiceGroup, CriteriaOperators.Equal, servicesGrpTbl[i].id));

        //    serviceStr += "<ul>";
        //    for (int j = 0; j < serviceTbl.Count; j++)
        //    {
        //        serviceStr += "<li><a href='services.aspx?servId=" + serviceTbl[j].id + "'><span class='mm-text'>" + serviceTbl[j].ServiceTitle + "</span></a></li>";
        //    }
        //    serviceStr += "</ul></li>";
        //}

        //servicesHtml.InnerHtml = serviceStr;
        #endregion


        #region social links

        if (companyTbl.Count > 0)
        {
            if (companyTbl[0].Facebook.Trim().Length > 0)
                companyStr += "<a class='facebook' href='" + companyTbl[0].Facebook + "' data-tooltip='tooltip' data-placement='bottom' title='Facebook'><i class='fa fa-facebook'></i></a>";
            if (companyTbl[0].Twitter.Trim().Length > 0)
                companyStr += "<a class='twitter' href='" + companyTbl[0].Twitter + "' data-tooltip='tooltip' data-placement='bottom' title='Twitter'><i class='fa fa-twitter'></i></a>";
            //if (companyTbl[0].Facebook.Trim().Length > 0)
            //    companyStr += "<a class='google' href='" + companyTbl[0].GooglePlus + "' data-tooltip='tooltip' data-placement='bottom' title='Google Plus'><i class='fa fa-google-plus'></i></a>";
            if (companyTbl[0].Linkedin.Trim().Length > 0)
                companyStr += "<a class='linkedin' href='" + companyTbl[0].Linkedin + "' data-tooltip='tooltip' data-placement='bottom' title='Linkedin'><i class='fa fa-linkedin'></i></a>";
            //if (companyTbl[0].Facebook.Trim().Length > 0)
            //    companyStr += "<a class='pinterest' href='" + companyTbl[0].p + "' data-tooltip='tooltip' data-placement='bottom' title='Pinterest'><i class='fa fa-pinterest'></i></a>";
            if (companyTbl[0].Telegram.Trim().Length > 0)
                companyStr += "<a class='telegram' href='" + companyTbl[0].Telegram + "' data-tooltip='tooltip' data-placement='bottom' title='telegram'><i class='fa fa-telegram' aria-hidden='true'></i></a>";
            if (companyTbl[0].Instagram.Trim().Length > 0)
                companyStr += "<a class='instagram' href='" + companyTbl[0].Instagram + "' data-tooltip='tooltip' data-placement='bottom' title='instagram'><i class='fa fa-instagram' aria-hidden='true'></i></a>";
        }
        //socialHtml.InnerHtml = companyStr;

        #endregion

        #region contact det

        companyStr = "";
        if (companyTbl.Count > 0)
        {
            if (companyTbl[0].CoAddr.Trim().Length > 0)
                companyStr += "<strong><i class='fa fa-map-marker' aria-hidden='true'></i></strong> "+ companyTbl[0].CoAddr + "&nbsp;&nbsp;";
            if (companyTbl[0].Tel.Trim().Length > 0)
                companyStr += "<strong><i class='fa fa-phone'></i></strong> " + companyTbl[0].Tel + " &nbsp;&nbsp;";
            if (companyTbl[0].Email.Trim().Length > 0)
                companyStr += "<strong><i class='fa fa-envelope'></i></strong> <a href='mailto:" + companyTbl[0].Email + "'>" + companyTbl[0].Email + "</a>";
        }
        //contactInfoHtml.InnerHtml = companyStr;

        #endregion

        #region products
        string productMenuStr = "";
        tblProductGroupCollection productMainGrpTbl = new tblProductGroupCollection();
        productMainGrpTbl.ReadList();

        tblProductSubGroupCollection productSubGrpTbl = new tblProductSubGroupCollection();
        //tbl

        for (int i = 0; i < productMainGrpTbl.Count; i++)
        {
            if (productMainGrpTbl[i].subGroup == "0")
            {


                productMenuStr += "<li><a href='products.aspx?mainCat=" + productMainGrpTbl[i].id + "'><span class='mm-text'>" + productMainGrpTbl[i].groupName + "</span></a></li>";

                //productMenuStr += "<ul>";
                //for (int j = 0; j < serviceTbl.Count; j++)
                //{
                    //productMenuStr += "<li><a href='services.aspx?servId=" + serviceTbl[j].id + "'><span class='mm-text'>" + serviceTbl[j].ServiceTitle + "</span></a></li>";
                //}
                    //"</ul>" +
                    
            }
            else
            {
                productMenuStr += "<h4 main-cat='" + productMainGrpTbl[i].id + "' class='main-cat'>" + productMainGrpTbl[i].groupName + "</h4>";
                productSubGrpTbl.ReadList(Criteria.NewCriteria(tblProductSubGroup.Columns.idGroup, CriteriaOperators.Equal,productMainGrpTbl[i].id));

                productMenuStr += "<ul sub-cat='"+ productMainGrpTbl[i].id + "' class='sub-cat-menu'>";
                for (int j = 0; j < productSubGrpTbl.Count; j++)
                    productMenuStr += "<li><a href='products.aspx?subCat=" + productSubGrpTbl[j].id + "'>" + productSubGrpTbl[j].subGrpName + "</a></li>";
                productMenuStr += "</ul>";
            }
        }

        //productMenuHtml.InnerHtml = productMenuStr;



        #endregion

        #region shopping card

        int customerIDCookie = 0;

        if (Request.Cookies["customerID"] != null)
        {
            customerIDCookie = Convert.ToInt32(Request.Cookies["customerID"].Value);
        }

        tblCustomerGuestCollection customerGeustTbl = new tblCustomerGuestCollection();
        customerGeustTbl.ReadList(Criteria.NewCriteria(tblCustomerGuest.Columns.customerID,CriteriaOperators.Equal, customerIDCookie));

        tblCustomerGuestItemsCollection customerBasketTbl = new tblCustomerGuestItemsCollection();
        
        if (customerGeustTbl.Count > 0)
        {
            customerBasketTbl.ReadList(Criteria.NewCriteria(tblCustomerGuestItems.Columns.guestID,CriteriaOperators.Equal, customerGeustTbl[0].id));
            //shoppingCardHtml.InnerHtml += "<sup class='mini-cart-count'>"+ customerBasketTbl.Count + "</sup>"; 
        }
        //else
            //shoppingCardHtml.InnerHtml += "<sup class='mini-cart-count'>0</sup>";

        #endregion

        #region news

        string newsStr = "";
        tblNewsGroupCollection newsGroupTbl = new tblNewsGroupCollection();
        newsGroupTbl.ReadList();

        for (int i = 0; i < newsGroupTbl.Count; i++)
        {
           newsStr += "<li><a href='news.aspx?mainCat=" + newsGroupTbl[i].id + "'><span class='mm-text'>" + newsGroupTbl[i].newsGroupTitle + "</span></a></li>";
        }
        //newsMenuHtml.InnerHtml = newsStr;
        #endregion

        #region information

        string infoStr = "";
        tblInformationGroupCollection infoGrpTbl = new tblInformationGroupCollection();
        infoGrpTbl.ReadList();

        for (int i = 0; i < infoGrpTbl.Count; i++)
        {
            infoStr += "<li><a href='information.aspx?mainCat=" + infoGrpTbl[i].id + "'><span class='mm-text'>" + infoGrpTbl[i].infGroupTitle + "</span></a></li>";
        }
        //infoMenuHtml.InnerHtml = infoStr;
        #endregion

        #region special events

        int startStr = 0, endStr = 0;
        string occasionsStr = string.Empty;
        int dateNow = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));

        tblOccasionCollection occasionsTbl = new tblOccasionCollection();
        occasionsTbl.ReadList();


        for (int i = 0; i < occasionsTbl.Count; i++)
        {
            startStr = Convert.ToInt32(occasionsTbl[i].StartDate.ToString().Substring(0, 4) + occasionsTbl[i].StartDate.ToString().Substring(5, 2) + occasionsTbl[i].StartDate.ToString().Substring(8, 2));
            endStr = Convert.ToInt32(occasionsTbl[i].EndDate.ToString().Substring(0, 4) + occasionsTbl[i].EndDate.ToString().Substring(5, 2) + occasionsTbl[i].EndDate.ToString().Substring(8, 2));

            if (startStr <= dateNow && endStr > dateNow)
            {
                occasionsStr += occasionsTbl[i].OccasionDetails;
            }
        }

        //eventHtml.InnerHtml = occasionsStr;

        #endregion
    }

    protected void lbUpdate_Click(object sender, EventArgs e)
    {
        Session.Remove("tblMembers");
        Response.Redirect("default.aspx");
    }
}

