using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using bluesky.artyn;
using System.Xml.Linq;
using Cruder.Core;
using System.Linq;
using System.Web.Services.Description;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int dateNow = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
        string timeNow = DateTime.Now.ToString("hh:mm:ss");

        string htmlString = string.Empty;

        #region Slider

        string sliderStr = string.Empty;
        tblSliderCollection sliderTbl = new tblSliderCollection();
        sliderTbl.ReadList();

        for (int i = 0; i < sliderTbl.Count; i++)
        {

            sliderStr += "<div class='single-slide slider-height bg-style d-flex align-items-center' style='background-image: url(" + sliderTbl[i].SliderPicAddr + sliderTbl[i].SliderPicName + ");'>"+
                         "<div class='container'><div class='row'><div class='col-xl-6 col-md-7 col-sm-8'><div class='slider-content bg-shape text-center ptb--100'>"+
                         "<h2 class='heading__primary mb--30'>"+
                         "<span class='heading__primary--sub' data-animation='fadeInUp' data-duration='.4s' data-delay='.7s'>" + sliderTbl[i].SliderTitle + "</span>" +
                         "<span class='heading__primary--main' data-animation='fadeInUp' data-duration='.4s' data-delay='1s'>" + sliderTbl[i].SliderDetail + "</span></h2>" +
                         "<a href='" + sliderTbl[i].SliderLink + "' class='btn' data-animation='fadeInUp' data-duration='.4s' data-delay='1.2s'>" + sliderTbl[i].SliderLinkTitle + "<i class='fa fa-angle-double-right'></i></a>" +
                         "</div></div></div></div></div>";
        }
        //sliderHtml.InnerHtml += sliderStr;

        #endregion

        #region company details

        tblCompanyCollection companyTbl = new tblCompanyCollection();
        companyTbl.ReadList();

        tblCompanyHonorsCollection companyHonorTbl = new tblCompanyHonorsCollection();

        if (companyTbl.Count > 0)
        {
            companyHonorTbl.ReadList(Criteria.NewCriteria(tblCompanyHonors.Columns.idCompany, CriteriaOperators.Equal, companyTbl[0].id));

            //coWordHtml.InnerText = companyTbl[0].CoOwnerWord;
            
            if (companyHonorTbl.Count > 0)
            {
                //honorPicHtml.Src = companyHonorTbl[0].HonorPicAddr + companyHonorTbl[0].HonorPicName;
                //honorPicHtml.Alt = companyHonorTbl[0].HonorTitle;

                //aboutCompanyHtml.InnerHtml = "<h2>" + companyHonorTbl[0].HonorTitle + "</h2>";
                //aboutCompanyHtml.InnerHtml += companyHonorTbl[0].HonorDetails;
            }
        }

        #endregion

        #region Product
        tblProductCollection productTbl = new tblProductCollection();
        productTbl.ReadList();
        tblProductDealCollection productExpTbl = new tblProductDealCollection();
        tblProductPicsCollection productPicsTbl = new tblProductPicsCollection();

        tblProductGroupCollection productGrpTbl = new tblProductGroupCollection();
        tblProductSubGroupCollection productSubGrpTbl = new tblProductSubGroupCollection();

        int tempReadDate = 0; string groupName = string.Empty; int lowLevel = 0;
        string productStr = "";

        if (productTbl.Count > 15)
            lowLevel = productTbl.Count - 15;

        for (int i = productTbl.Count - 1; i > lowLevel; i--)
        {
            //Expiery date 
            productExpTbl.ReadList(Criteria.NewCriteria(tblProductDeal.Columns.productId, CriteriaOperators.Equal, productTbl[i].id));

            #region group/subgroup name

            productGrpTbl.ReadList(Criteria.NewCriteria(tblProductGroup.Columns.id, CriteriaOperators.Equal, productTbl[i].productGrpId));
            groupName = productGrpTbl[0].groupName;

            if (productTbl[i].productSubGrpId != 0)
            {
                productSubGrpTbl.ReadList(Criteria.NewCriteria(tblProductSubGroup.Columns.id, CriteriaOperators.Equal, productTbl[i].productSubGrpId));
                groupName += "/" + productSubGrpTbl[0].subGrpName;
            }

            #endregion

            if (productExpTbl.Count > 0 && productExpTbl[0].endDate == "0")
                tempReadDate = dateNow;
            else
                tempReadDate = Convert.ToInt32(productExpTbl[0].endDate.Substring(0, 4) + productExpTbl[0].endDate.Substring(5, 2) + productExpTbl[0].endDate.Substring(8, 2));

            if (tempReadDate >= dateNow && productTbl[i].Archive == "0")
            {
                productStr += "<div class='item'><article class='blog'><div class='blog-media'>"+
                              "<figure class='image'><a href='product-details.aspx?productId=" + productTbl[i].id + "'><img src='" + productTbl[i].productCoverPicAdd + productTbl[i].productCoverPicName + "' alt='" + productTbl[i].productName + "'></a></figure></div>" +
                              "<div class='blog-info'><h2 class='blog-title'><a href='product-details.aspx?productId=" + productTbl[i].id + "'>" + productTbl[i].productName + "</a></h2>" +
                              "<div class='blog-meta'><div class='blog-meta--left'>"+
                              //"<a href='product-details.aspx?productCode=" + productTbl[i].id + "' class='blog-meta-btn'><i class='fa fa-comment-o'></i><sup>05</sup></a>" +
                              //"<a href='product-details.aspx?productCode=" + productTbl[i].id + "' class='blog-meta-btn'><i class='fa fa-heart-o'></i><sup>06</sup></a>" +
                              "</div><div class='blog-meta--right'>" +
                              "<a href='product-details.aspx?productId=" + productTbl[i].id + "' class='btn btn-no-bg btn-color-dark'>Details<i class='fa fa-angle-double-right'></i></a>" +
                              "</div></div></div></article></div>";

            }
        }
        
        //productsHtml.InnerHtml = productStr;
        #endregion

        #region Rss news
        string newsString = "";
        string RssFeedUrl;
        tblNewsRssCollection rssNewsTbl = new tblNewsRssCollection();
        rssNewsTbl.ReadList();

        for (int i = 0; i < rssNewsTbl.Count; i++)
        {
            if (rssNewsTbl[i].RssLink.Trim().Length > 3)
            {
                RssFeedUrl = rssNewsTbl[i].RssLink;

                newsString += PopulateRssFeed(RssFeedUrl);
            }
        }

        //rssHtml.InnerHtml = newsString;
        #endregion

        #region Information
        htmlString = ""; int counter = 1;
        tblInformationDetailCollection infoTbl = new tblInformationDetailCollection();
        infoTbl.ReadList();

        tblInformationGroupCollection infoGrpTbl = new tblInformationGroupCollection();

        #region content of information section
        if (infoTbl.Count > 0)
        {
            for (int i = infoTbl.Count - 1; i >= 0; i--)
            {
                infoGrpTbl.ReadList(Criteria.NewCriteria(tblInformationGroup.Columns.id,CriteriaOperators.Equal,infoTbl[i].idInfoGroup));


                if (counter == 2)
                {
                    htmlString += "<div class='row flex-row-reverse align-items-center'><div class='col-md-6 offset-lg-1'>";
                    htmlString += @"<div class= ""zakas-element-carousel nav-center-bottom""+ data-slick-options='{ ""slidesToShow"": 1, ""arrows"": true, ""prevArrow"": {""buttonClass"": ""slick-btn slick-prev"", ""iconClass"": ""fa fa-angle-double-left"" }, ""nextArrow"": {""buttonClass"": ""slick-btn slick-next"", ""iconClass"": ""fa fa-angle-double-right"" } }'>";



                    htmlString += "<div class='item'><figure><img src='" + infoTbl[i].frontFile + "' alt='" + infoTbl[i].infDetailTitle + "' class='w-100'></figure></div>" +
                                  //"<div class='item'><figure><img src='assets/img/box4.jpg' alt='Banner' class='w-100'></figure></div>"+
                                  "</div></div>" +
                                  "<div class='col-md-4 offset-lg-1 mt-sm--40'><div class='banner-box'><div class='banner-info text-left text-md-right'>" +
                                  "<p class='font-size-14 color--primary font-weight-light mb--0'>" + infoTbl[i].infDetailTitle + "</p>" +
                                  "<p class='banner-title-2 font-weight-light heading-color mb--0'>" + infoTbl[i].infDetailsGist + "</p>" +
                                  "<a href='info-details.aspx?infoId=" + infoTbl[i].id + "' title='" + infoTbl[i].infDetailTitle + "' class='btn btn-no-bg btn-color-dark icon-left'><i class='fa fa-angle-double-left'></i>Read Details</a>" +
                                  "</div></div></div></div>";
                }
                else
                {
                    htmlString += "<div class='row align-items-center mb--50'><div class='col-md-6'>";
                    htmlString += @"<div class= ""zakas-element-carousel nav-center-bottom""+ data-slick-options='{ ""slidesToShow"": 1, ""arrows"": true, ""prevArrow"": {""buttonClass"": ""slick-btn slick-prev"", ""iconClass"": ""fa fa-angle-double-left"" }, ""nextArrow"": {""buttonClass"": ""slick-btn slick-next"", ""iconClass"": ""fa fa-angle-double-right"" } }'>";

                    htmlString += "<div class='item'><figure><img src='" + infoTbl[i].frontFile + "' alt='" + infoTbl[i].infDetailTitle + "' class='w-100'></figure></div>" +
                                  //"<div class='item'><figure><img src='assets/img/box2.jpg' alt='Banner' class='w-100'></figure></div>" +
                                  "</div></div>" +
                                  "<div class='col-lg-5 offset-lg-1 col-md-6 mt-sm--40'><div class='banner-box'><div class='banner-info'>" +
                                  "<p class='font-size-14 color--primary font-weight-light mb--0'>" + infoTbl[i].infDetailTitle + "</p>" +
                                  "<p class='banner-title-2 font-weight-light heading-color mb--0'>" + infoTbl[i].infDetailsGist + "</p>" +
                                  "<a href='info-details.aspx?infoId=" + infoTbl[i].id + "' title='" + infoTbl[i].infDetailTitle + "' class='btn btn-no-bg btn-color-dark'>Read Details<i class='fa fa-angle-double-right'></i></a></div></div></div></div>";



                    counter = 1;
                }

                counter++;

                #region cover picture

                //if (informationTbl[i].frontFileType == 0)
                //    newsStr += "<a href='information-details.aspx?itemGet=" + informationTbl[i].id + "'><img src='./images/info/" + informationTbl[i].frontFile + "' alt='TICC " + informationTbl[i].frontFile + "' style='width: 100%;border-radius: 15px 0px 15px 0px;'></a>";
                //else if (informationTbl[0].frontFileType == 1)
                //    newsStr += "<div><a href='information-details.aspx?itemGet=" + informationTbl[i].id + "'><i class='video-icon fa fa-video-camera' aria-hidden='true'></i><video style='width: 100%;border-radius: 15px 0px 15px 0px;'><source src='../movie/info/" + informationTbl[i].frontFile + "' type='video/mp4'>Your browser does not support HTML5 video.</video></a></div>";
                //else
                //    newsStr += informationTbl[i].frontFile;

                #endregion

            }
        }

        #endregion

        //infoDetHtml.InnerHtml = htmlString;
        #endregion

        #region services

        string serviceStr = string.Empty;
        
        tblServiceGroupCollection serviceGroupTbl = new tblServiceGroupCollection();
        serviceGroupTbl.ReadList();

        tblServicesCollection serviceTbl = new tblServicesCollection();

        tblServicePicCollection servicePicsTbl = new tblServicePicCollection();

        for (int i = 0; i < serviceGroupTbl.Count; i++)
        {
            serviceTbl.ReadList(Criteria.NewCriteria(tblServices.Columns.idServiceGroup, CriteriaOperators.Equal, serviceGroupTbl[i].id));
            if (serviceTbl.Count > 0)
            {

                servicePicsTbl.ReadList(Criteria.NewCriteria(tblServicePic.Columns.idService, CriteriaOperators.Equal, serviceTbl[0].id));

                serviceStr += "<div class='item'>";
                if (servicePicsTbl.Count > 0)
                    serviceStr += "<figure><img src='" + servicePicsTbl[0].picAddr + servicePicsTbl[0].picName + "' alt='" + serviceTbl[0].ServiceTitle + "'>";

                serviceStr += "<h2 class='service-desc'>" + serviceGroupTbl[i].ServiceGroupTitle + "/" + serviceTbl[0].ServiceTitle + "</h2>" +
                                            "<p>" + serviceTbl[0].ServiceDetail + "</p>" +
                                        "</figure></div>";

            }
        }

        //servicesHtml.InnerHtml = serviceStr;

        #endregion

        #region news
        htmlString = "";
        int tempDateShow = 0; int tempDateExp = 0; counter = 1;
        tblNewsDetailsCollection newsTbl = new tblNewsDetailsCollection();
        newsTbl.ReadList(Criteria.NewCriteria(tblNewsDetails.Columns.SetAsHotNews,CriteriaOperators.Equal,"1"));

        tblNewsGroupCollection newsGrpTbl = new tblNewsGroupCollection();

        for (int i = 0; i < newsTbl.Count; i++)
        {
            newsGrpTbl.ReadList(Criteria.NewCriteria(tblNewsGroup.Columns.id, CriteriaOperators.Equal, newsTbl[i].idGroup));
            if (newsTbl.Count > 0)
            {
                tempDateShow = Convert.ToInt32(newsTbl[i].newsDetStartDate.Substring(0, 4) + newsTbl[i].newsDetStartDate.Substring(5, 2) + newsTbl[i].newsDetStartDate.Substring(8, 2));
                tempDateExp = Convert.ToInt32(newsTbl[i].newsDetEndDate.Substring(0, 4) + newsTbl[i].newsDetEndDate.Substring(5, 2) + newsTbl[i].newsDetEndDate.Substring(8, 2));
            }

            if (tempDateShow <= dateNow && tempDateExp >= dateNow)
            {
                if (counter == 2)
                {
                    htmlString += "<div class='row flex-row-reverse align-items-center'><div class='col-md-6 offset-lg-1'>";
                    htmlString += @"<div class= ""zakas-element-carousel nav-center-bottom""+ data-slick-options='{ ""slidesToShow"": 1, ""arrows"": true, ""prevArrow"": {""buttonClass"": ""slick-btn slick-prev"", ""iconClass"": ""fa fa-angle-double-left"" }, ""nextArrow"": {""buttonClass"": ""slick-btn slick-next"", ""iconClass"": ""fa fa-angle-double-right"" } }'>"; 



                    htmlString += "<div class='item'><figure><img src='" + newsTbl[i].topPageFileAddr + "' alt='" + newsTbl[i].newsDetTitle + "' class='w-100'></figure></div>" +
                                  //"<div class='item'><figure><img src='assets/img/box4.jpg' alt='Banner' class='w-100'></figure></div>"+
                                  "</div></div>"+
                                  "<div class='col-md-4 offset-lg-1 mt-sm--40'><div class='banner-box'><div class='banner-info text-left text-md-right'>"+
                                  "<p class='font-size-14 color--primary font-weight-light mb--0'>" + newsTbl[i].newsDetTitle + "</p>" +
                                  "<p class='banner-title-2 font-weight-light heading-color mb--0'>" + newsTbl[i].newsDetGist + "</p>" +
                                  "<a href='news-details.aspx?newsId=" + newsTbl[i].id + "' title='" + newsTbl[i].newsDetTitle + "' class='btn btn-no-bg btn-color-dark icon-left'><i class='fa fa-angle-double-left'></i>Read Details</a>" +
                                  "</div></div></div></div>";
                }
                else {
                    htmlString += "<div class='row align-items-center mb--50'><div class='col-md-6'>";
                    htmlString += @"<div class= ""zakas-element-carousel nav-center-bottom""+ data-slick-options='{ ""slidesToShow"": 1, ""arrows"": true, ""prevArrow"": {""buttonClass"": ""slick-btn slick-prev"", ""iconClass"": ""fa fa-angle-double-left"" }, ""nextArrow"": {""buttonClass"": ""slick-btn slick-next"", ""iconClass"": ""fa fa-angle-double-right"" } }'>";

                    htmlString += "<div class='item'><figure><img src='" + newsTbl[i].topPageFileAddr + "' alt='" + newsTbl[i].newsDetTitle + "' class='w-100'></figure></div>" +
                                  //"<div class='item'><figure><img src='assets/img/box2.jpg' alt='Banner' class='w-100'></figure></div>" +
                                  "</div></div>" +
                                  "<div class='col-lg-5 offset-lg-1 col-md-6 mt-sm--40'><div class='banner-box'><div class='banner-info'>" +
                                  "<p class='font-size-14 color--primary font-weight-light mb--0'>" + newsTbl[i].newsDetTitle + "</p>" +
                                  "<p class='banner-title-2 font-weight-light heading-color mb--0'>" + newsTbl[i].newsDetGist + "</p>" +
                                  "<a href='news-details.aspx?newsId=" + newsTbl[i].id + "' title='" + newsTbl[i].newsDetTitle + "' class='btn btn-no-bg btn-color-dark'>Read Details<i class='fa fa-angle-double-right'></i></a></div></div></div></div>";

                
                    
                    counter = 1;
                }

                counter++;
            }

        }

        //newsDetHtml.InnerHtml = htmlString;

        #endregion

        #region special offer (popup section)
        string popPageStr = string.Empty;int popUpStartDate = 0; int popUpEndDate = 0;
        tblPopupPageCollection popUpPageTbl = new tblPopupPageCollection();
        popUpPageTbl.ReadList(Criteria.NewCriteria(tblPopupPage.Columns.allow, CriteriaOperators.Like, "1"));

        for (int i = 0; i < popUpPageTbl.Count; i++)
        {
            popUpStartDate = Convert.ToInt32(popUpPageTbl[i].StartDate.Substring(0, 4) + popUpPageTbl[i].StartDate.Substring(5, 2) + popUpPageTbl[i].StartDate.Substring(8, 2));
            popUpEndDate = Convert.ToInt32(popUpPageTbl[i].EndDate.Substring(0, 4) + popUpPageTbl[i].EndDate.Substring(5, 2) + popUpPageTbl[i].EndDate.Substring(8, 2));

            if (popUpStartDate <= dateNow && popUpEndDate > dateNow)
            {
                exampleModalLongTitle.InnerText = popUpPageTbl[i].popupTitle;

                popPageStr += popUpPageTbl[i].popupDetails;

                popupFooterHtml.InnerText = "This promotion will end on " + popUpPageTbl[i].EndDate;
            }

        }
        
        if (popUpStartDate <= dateNow && popUpEndDate > dateNow)
            ScriptManager.RegisterStartupScript(this, GetType(), "myfunction", "runModal();", true);

        popupContentHtml.InnerHtml = popPageStr;
        #endregion

        #region subscribers Plans (promotional plans)

        string subPlanStr = "";
        tblSubscriptionPlansCollection subPlanTbl = new tblSubscriptionPlansCollection();
        subPlanTbl.ReadList();

        for (int i = 0; i < subPlanTbl.Count; i++)
        {
            subPlanStr += subPlanTbl[i].planDetails;
        }

        //promotionalPlanHtml.InnerHtml = subPlanStr;

        #endregion

        #region Appointments Hours

        string appoHrsStr = "";
        tblAppointmentCollection appointmentTbl = new tblAppointmentCollection();
        appointmentTbl.ReadList();

        tblAppointmentDaysCollection appoDaysTbl = new tblAppointmentDaysCollection();
        tblAppointmentHoursCollection appoHrsTbl = new tblAppointmentHoursCollection();
        tblStaffCollection staffTbl = new tblStaffCollection();


        for (int i = 0; i < appointmentTbl.Count; i++)
        {
            appoDaysTbl.ReadList(Criteria.NewCriteria(tblAppointmentDays.Columns.idApp, CriteriaOperators.Equal, appointmentTbl[i].id));

            if (appoDaysTbl.Count > 0)
            {
                appoHrsStr += "<div class='appointment-box col-4 text-center'><h3 class='appo-title'>" + appointmentTbl[i].appTitle + "</h3><ul>";
                for (int j = 0; j < appoDaysTbl.Count; j++)
                {
                    appoHrsTbl.ReadList(Criteria.NewCriteria(tblAppointmentHours.Columns.idAppoDays, CriteriaOperators.Equal, appoDaysTbl[j].id));

                    switch (appoDaysTbl[j].weekDays)
                    {
                        case 1:
                            if (appoHrsTbl.Count > 0)
                                appoHrsStr += "<li> Mon ";
                            break;
                        case 2:
                            if (appoHrsTbl.Count > 0)
                                appoHrsStr += "<li> Tus ";
                            break;
                        case 3:
                            if (appoHrsTbl.Count > 0)
                                appoHrsStr += "<li> Wed ";
                            break;
                        case 4:
                            if (appoHrsTbl.Count > 0)
                                appoHrsStr += "<li> Thu ";  
                            break;
                        case 5:
                            if (appoHrsTbl.Count > 0)
                                appoHrsStr += "<li> Fri ";
                            break;
                        case 6:
                            if (appoHrsTbl.Count > 0)
                                appoHrsStr += "<li> Sat ";
                            break;
                        case 7:
                            if (appoHrsTbl.Count > 0)
                                appoHrsStr += "<li> Sun ";
                            break;

                    }
                    

                    for (int k = 0; k < appoHrsTbl.Count; k++)
                    {
                        appoHrsStr += "<span class='appo-times'>" + appoHrsTbl[k].hourFrom + " - " + appoHrsTbl[k].hourTo + "</span>";
                    }

                    appoHrsStr += "</li>";

                }
                
                staffTbl.ReadList(Criteria.NewCriteria(tblStaff.Columns.id, CriteriaOperators.Equal, appointmentTbl[i].idStaff));

                appoHrsStr += "</ul><a href='booking.aspx?appId=" + appointmentTbl[i].id + "' class='btn'>Book Now with " + staffTbl[0].StaffName + "</a></div>";
            }

        }
        //appointmentsHrsHtml.InnerHtml = appoHrsStr;
        
        #endregion

    }


    private string PopulateRssFeed(string rssLink)
    {
        string RssFeedUrl = rssLink;
        try
        {
            int counter = 1;
            string newsString = "";
            XDocument xDoc = new XDocument();
            xDoc = XDocument.Load(RssFeedUrl);
            var items = (from x in xDoc.Descendants("item")
                         select new
                         {
                             //title of RSS
                             title = x.Element("title").Value,
                             //link to page
                             link = x.Element("link").Value,
                             //published date
                             pubDate = x.Element("pubDate"),
                             //details of RSS
                             description = x.Element("description").Value,
                             //picture
                             enclosure = x.Element("enclosure").Value    
                         });

            if (items != null)
            {
                foreach (var i in items)
                {
                    newsString += "<div class='card'>";
                    if (i.enclosure.Trim().Length > 0)
                    {
                        newsString += "<img class='card-img-top' src='" + i.enclosure + "' alt='TICC company'>";
                    }

                    newsString += "<div class='card-body'>" +
                            "<h5 class='card-title'>" + i.title + "</h5>" +
                            "<p class='card-text'>" + i.description + "</p>" +
                            "<a href='" + i.link + "' class='btn-rss'>Read more</a></div></div>";

                }
                newsString += "</div>";

            }
            return newsString;
        }
        catch (Exception ex)
        {
            string newsString = "error is ( " + ex.ToString() + " )";
            return newsString;
        }
    }


    protected void btnSaubscribe_Click(object sender, EventArgs e)
    {
        tblMemberOfDailyEmail subEmailTbl = new tblMemberOfDailyEmail();
        try
        {

        subEmailTbl.memberName = "";
        subEmailTbl.memberSurname = "";
        //subEmailTbl.memberEmail = newsletter_email.Value; 

        subEmailTbl.memberInsDate = DateTime.Now.ToString("yyyy/MM/dd");

        subEmailTbl.memberExpDate = "";
        subEmailTbl.memberRequestToDea = "0";
        subEmailTbl.allow = "1";

        subEmailTbl.Create();

       // subRegHtml.InnerText = newsletter_email.Value + ", You Register to Receive Daily Emails";
        }
        catch (Exception ex)
        {
           // subRegHtml.InnerText = newsletter_email.Value + ", You Could not Register to Receive Daily Emails, " + ex.ToString();

        }

    }
}