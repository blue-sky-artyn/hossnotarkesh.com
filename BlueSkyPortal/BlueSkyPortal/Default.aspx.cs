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
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int dateNow = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
        string timeNow = DateTime.Now.ToString("hh:mm:ss");

        string htmlString = string.Empty;




        #region fetching items
        tblHomeElementsGroupCollection homeElementsGrpTbl = new tblHomeElementsGroupCollection();

        tblHomeElementCollection homeElementsTbl = new tblHomeElementCollection();
        homeElementsTbl.ReadList();
        //var orederedPriority = homeElementsTbl.ToDictionary(id=> id.id, p => p.priority).GroupBy(p=>p.Value);
        
        var dtOrdered = homeElementsTbl.ToDataTable();
        DataView dv = new DataView();
        dv = dtOrdered.AsDataView();
        dv.Sort = "priority ASC";

        string sectionsAddedStr = string.Empty;

        for (int i = 0; i < dv.Count; i++)
        {
            //homeElementsTbl.ReadList(Criteria.NewCriteria(tblHomeElement.Columns.id,CriteriaOperators.Equal , Convert.ToInt32(dv[i]["idElement"].ToString())));
            homeElementsGrpTbl.ReadList(Criteria.NewCriteria(tblHomeElementsGroup.Columns.id,CriteriaOperators.Equal, Convert.ToInt32(dv[i]["idGroup"])));
            tblCompanyCollection companyDetTbl = new tblCompanyCollection();
            companyDetTbl.ReadList();

            switch (homeElementsGrpTbl[0].title)
            {
                case "Context 1":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    sectionsAddedStr += dv[i]["detail"];
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;

                case "Context 2":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    string context2Str = "<h2 class='mbr-section-title pb-2 mbr-fonts-style display-2'>" + dv[i]["title"] + "</h2>";
                    sectionsAddedStr += context2Str;
                    sectionsAddedStr += dv[i]["detail"];
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;

                case "Booking 1":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    sectionsAddedStr += dv[i]["detail"];
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;

                case "Booking 2":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    string booking2Str = "<div class='media-content col-md-10'>" +
                                         "<h1 class='mbr-section-title align-center mbr-white pb-3 mbr-bold mbr-fonts-style display-1'>" + dv[i]["title"] +
                                         "</h1><div class='mbr-text align-center mbr-white pb-3'>" +
                                         "<p class='mbr-text mbr-fonts-style display-5'>" + dv[i]["detail"] + "</p>" +
                                         "</div><div class='mbr-section-btn align-center'>" +
                                         "<a class='btn btn-md btn-primary display-4' href='" + dv[i]["link"] + "'>BOOK NOW</a>" +
                                         //<a class="btn btn-md btn-white-outline display-4" href="#">Read More...</a>
                                         "</div></div><div class='mbr-figure pt-5'>";
                    if (dv[i]["defaultPicAddr"] != null)
                        booking2Str += "<img src='" + dv[i]["defaultPicAddr"] + "' alt='" + dv[i]["title"] + "' style='width: 80%;opacity: 0.8;border-radius: 50%;'>";
                    booking2Str += "</div>";
                    sectionsAddedStr += booking2Str;
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;

                case "Testimonials 1":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    sectionsAddedStr += dv[i]["detail"];
                    string testimonialStr = "";
                    tblCompanyTestimonialsCollection testimonialTbl = new tblCompanyTestimonialsCollection();
                    testimonialTbl.ReadList();
                    int counterPlus = 0;
                    for (int z = 0; z < testimonialTbl.Count; z++)
                    {
                        if (counterPlus == 1)
                        {
                            testimonialStr += "<div class='media-container-row'>" +

                                "<div class='media-content px-5 align-self-center mbr-white py-2'>" +
                                              "<p class='mbr-text testimonial-text mbr-fonts-style display-7'>" + testimonialTbl[z].detail + "</p>" +
                                              "<p class='mbr-author-name pt-4 mb-2 mbr-fonts-style display-7' style='text-align: right;'>" + testimonialTbl[z].guestName + "</p>" +
                                              "<p class='mbr-author-desc mbr-fonts-style display-7' style='text-align: right;'>" + testimonialTbl[z].guestSigniture + "</p></div>" +

                                              "<div class='mbr-figure pr-lg-3' style='width: 18%;'>" +
                                              "<img src='" + testimonialTbl[z].guestPic + "' alt='" + testimonialTbl[z].title + "'>" +
                                              "</div>" +
                                              "</div>";
                            testimonialStr += "<div class='media-content px-8 align-self-center mbr-white py-2'><div class='avatar-placeholder'>" +
                                              "<div class='centerize card-block'><div class='avatar'>" +
                                              //"<img src='" + companyDetTbl[0].managerPic + "' alt='' />" +
                                              "</div></div>" +
                                              "<div class='color-dark content-avatar' style='background-color: black;padding: 5rem;color: white;font-size: 2rem;'><p>" + testimonialTbl[z].adminReply + "</p><div class='intro-avatar'>" +
                                              //"<p class='name-avatar'>" + companyDetTbl[0].CoOwner + "</p><p class='post-avatar'>" + companyDetTbl[0].managerTitle + "</p>" +
                                              "</div></div></div></div>";
                            counterPlus = 0;
                        }
                        else
                        {
                            testimonialStr += "<div class='mb-5 media-container-row'><div class='mbr-figure pl-lg-3' style='width: 18%;'>" +
                                                                      "<img src='" + testimonialTbl[z].guestPic + "' alt='" + testimonialTbl[z].title + "'>" +
                                                                      "</div><div class='media-content px-5 align-self-center mbr-white py-2'>" +
                                                                      "<p class='mbr-text testimonial-text mbr-fonts-style display-7'>" + testimonialTbl[z].detail + "</p>" +
                                                                      "<p class='mbr-author-name pt-4 mb-2 mbr-fonts-style display-7'>" + testimonialTbl[z].guestName + "</p>" +
                                                                      "<p class='mbr-author-desc mbr-fonts-style display-7'>" + testimonialTbl[z].guestSigniture + "</p></div></div>";
                            testimonialStr += "<div class='media-content px-5 align-self-center mbr-white py-2'><div class='avatar-placeholder'>" +
                                              "<div class='centerize card-block'><div class='avatar'>" +
                                              //"<img src='" + companyDetTbl[0].managerPic + "' alt='' />" +
                                              "</div></div>" +
                                              "<div class='color-dark content-avatar' style='background-color: black;padding: 5rem;color: white;font-size: 2rem;'><p>" + testimonialTbl[z].adminReply + "</p><div class='intro-avatar'>" +
                                              //"<p class='name-avatar'>" + companyDetTbl[0].CoOwner + "</p><p class='post-avatar'>" + companyDetTbl[0].managerTitle + "</p>" +
                                              "</div></div></div></div>";
                            counterPlus++;
                        }
                    }
                    sectionsAddedStr += testimonialStr;
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;

                case "Our Partner":
                    string partnersStr = "";
                    tblCompanyPartnersCollection partnersTbl = new tblCompanyPartnersCollection();
                    partnersTbl.ReadList();
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    sectionsAddedStr += "<div class='container'><div class='row'><div class='col-12' style='text-align: center;'><h2 class='mbr-section-title pb-3 mbr-fonts-style display-2' style='font-size: 24px;font-weight: bold;'> " + dv[i]["title"] + "</h2><h3 class='mbr-section-subtitle mbr-light mbr-fonts-style display-5'>" + dv[i]["detail"] + "</h3></div></div></div>";
                    for (int k = 0; k < partnersTbl.Count; k++)
                    {
                        partnersStr += "<div class='carousel-item'><div class='media-container-row'><div class='col-md-12'><div class='wrap-img'>"+
                                       "<img src='" + partnersTbl[k].picAddr +"' class='img-responsive clients-img' alt='" + partnersTbl[k].title +"'>"+
                                       "</div></div></div></div>";
                    }
                    sectionsAddedStr += partnersStr;
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;

                case "Introduction":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    //sectionsAddedStr += "<div class='header-container'><h4 class='text-stroke'>Introduction</h4><h4 class='text-over-stroke'>Who Am I?</h4></div>";
                    sectionsAddedStr += "<div class='media-content px-3 align-self-center mbr-white py-2' style='color: black;'>";
                    sectionsAddedStr += dv[i]["detail"];
                    sectionsAddedStr += "</div><div class='mbr-figure pl-lg-5' style='width: 130%;'>" +
                                        "<img src = '"+ dv[i]["defaultPicAddr"] +"' >" +
                                        "</div>";
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;

                case "Missions":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    string missionStr = "<div class='mbr-figure m-auto' style='width: 50%;'>" +
                                       "<img src='"+ dv[i]["defaultPicAddr"] + "' alt='"+ dv[i]["title"] + "' title='"+ dv[i]["title"] + "'></div>";
                    missionStr += "<div class='align-left aside-content'>"+
                        //"<h2 class='mbr-title pt-2 mbr-fonts-style display-2'>Our Mission</h2>" +
                        "<div class='mbr-section-text'>"+
                        "<p class='mbr-text mb-5 pt-3 mbr-light mbr-fonts-style display-5'>"+ dv[i]["title"] + "</p></div><div class='block-content'>";
                    sectionsAddedStr += missionStr;
                    sectionsAddedStr += dv[i]["detail"];
                    sectionsAddedStr += "</div></div>";
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;

                case "Timeline":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    sectionsAddedStr += dv[i]["detail"];
                    tblCompanyMilestoneCollection milestoneTbl = new tblCompanyMilestoneCollection();
                    milestoneTbl.ReadList();

                    string timelineStr = "<div class='row timeline-element reverse separline'>";

                    #region add the first item, start spare
                    if (milestoneTbl.Count > 0)
                    {
                        //left wing
                        if (milestoneTbl[0].detail.Trim().Length > 0)
                        {
                            timelineStr += "<div class='col-xs-12 col-md-6 align-left'>" +
                                        "<div class='timeline-text-content'>";
                            timelineStr += "<h4 class='mbr-timeline-title pb-3 mbr-fonts-style display-5'>" + milestoneTbl[0].title + "</h4>";
                            timelineStr += "<p class='mbr-timeline-text mbr-fonts-style display-7'>" + milestoneTbl[0].detail + "</p>";
                        }
                        else
                        {
                            timelineStr += "<div class='timeline-date-panel col-xs-12 col-md-6 align-left'>" +
                                        "<div class='time-line-date-content'>";
                            timelineStr += "<p class='small-timeline mbr-timeline-date mbr-fonts-style display-5'>" + milestoneTbl[0].title + "</p>";
                        }
                        timelineStr += "</div></div>";

                        timelineStr += "<span class='iconBackground'></span>";
                    }

                    if(milestoneTbl.Count > 1)
                    {
                        //right wing
                        if (milestoneTbl[1].detail.Trim().Length > 0)
                        {
                            timelineStr += "<div class='col-xs-12 col-md-6 align-right'>" +
                                        "<div class='timeline-text-content'>";
                            timelineStr += "<h4 class='mbr-timeline-title pb-3 mbr-fonts-style display-5'>" + milestoneTbl[1].title + "</h4>";
                            timelineStr += "<p class='mbr-timeline-text mbr-fonts-style display-7'>" + milestoneTbl[1].detail + "</p>";
                        }
                        else
                        {
                            timelineStr += "<div class='timeline-date-panel col-xs-12 col-md-6 align-right'>" +
                                        "<div class='time-line-date-content'>";
                            timelineStr += "<p class='small-timeline mbr-timeline-date mbr-fonts-style display-5'>" + milestoneTbl[1].title + "</p>";
                        }
                        timelineStr += "</div></div>";
                    }
                    timelineStr += "</div>";
                    sectionsAddedStr += timelineStr;
                    #endregion

                    if (milestoneTbl.Count > 2)
                    {
                        timelineStr = "";
                        for (int s = 2; s < milestoneTbl.Count ; s++)
                        {
                            timelineStr += "<div class='row timeline-element separline'>";
                            //left wing
                            if (milestoneTbl[s].detail.Trim().Length > 0)
                            {
                                timelineStr += "<div class='col-xs-12 col-md-6 align-left'>" +
                                            "<div class='timeline-text-content'>";
                                timelineStr += "<h4 class='mbr-timeline-title pb-3 mbr-fonts-style display-5'>" + milestoneTbl[s].title + "</h4>";
                                timelineStr += "<p class='mbr-timeline-text mbr-fonts-style display-7'>" + milestoneTbl[s].detail + "</p>";
                            }
                            else
                            {
                                timelineStr += "<div class='timeline-date-panel col-xs-12 col-md-6 align-left'>" +
                                            "<div class='time-line-date-content'>";
                                timelineStr += "<p class='small-timeline mbr-timeline-date mbr-fonts-style display-5'>" + milestoneTbl[s].title + "</p>";
                            }
                            timelineStr += "</div></div>";

                            if (milestoneTbl.Count > (s+1))
                            {
                                s++;
                                //right wing
                                if (milestoneTbl[s].detail.Trim().Length > 0)
                                {
                                    timelineStr += "<div class='col-xs-12 col-md-6 align-right'>" +
                                                   "<div class='timeline-text-content'>";
                                    timelineStr += "<h4 class='mbr-timeline-title pb-3 mbr-fonts-style display-5'>" + milestoneTbl[s].title + "</h4>";
                                    timelineStr += "<p class='mbr-timeline-text mbr-fonts-style display-7'>" + milestoneTbl[s].detail + "</p>";
                                }
                                else
                                {
                                    timelineStr += "<div class='timeline-date-panel col-xs-12 col-md-6 align-right'>" +
                                                   "<div class='time-line-date-content'>";
                                    timelineStr += "<p class='small-timeline mbr-timeline-date mbr-fonts-style display-5'>" + milestoneTbl[s].title + "</p>";
                                }
                                timelineStr += "</div></div>";
                            }
                            timelineStr += "</div>";
                        }
                    }
                    sectionsAddedStr += timelineStr;
                    sectionsAddedStr += "<div class='row timeline-element reverse'><div class='timeline-date-panel col-xs-12 col-md-6  align-left'><div class='time-line-date-content'>" +
                    "</div></div>"+
                    "<span class='iconBackground'></span></div>";
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;

                    break;

                case "Video Background":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    sectionsAddedStr += dv[i]["detail"];
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;

                    break;

                case "Steps":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    tblCompanyMissionCollection missionTbl = new tblCompanyMissionCollection();
                    missionTbl.ReadList();
                    sectionsAddedStr += "<h2 class='mbr-section-title pb-3 mbr-fonts-style align-center display-2'>"+ dv[i]["title"] + "</h2>";
                    sectionsAddedStr += dv[i]["detail"];
                    sectionsAddedStr += "<div class='step-container'>";
                    for (int p = 0; p < missionTbl.Count; p++)
                    {
                        sectionsAddedStr += "<div class='card separline pb-4'><div class='step-element d-flex'>"+
                                "<div class='step-wrapper pr-3'><h3 class='step d-flex align-items-center justify-content-center'>" + (p+1) + "</h3></div>"+
                                "<div class='step-text-content'><h4 class='mbr-step-title pb-3 mbr-fonts-style display-5'>"+ dv[i]["title"] + "</h4>" +
                                "<p class='mbr-step-text mbr-fonts-style display-7'>"+ dv[i]["title"] + "</p></div></div></div>";
                    }
                    sectionsAddedStr += "</div>";
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;

                    break;

                case "Follow us":
                    string followUsStr = "";
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    followUsStr += "<h2 class='pb-3 mbr-section-title mbr-fonts-style display-2'>"+ dv[i]["title"] +"</h2><div><div class='mbr-social-likes' data-counters='false'>";
                    sectionsAddedStr += followUsStr;
                    sectionsAddedStr += dv[i]["detail"];
                    followUsStr = "";
                    if (companyDetTbl[0].Facebook.Trim().Length > 0)
                    {
                        followUsStr += "<a href='" + companyDetTbl[0].Facebook +"'><span class='btn btn-social facebook mx-2' title='Facebook'><i class='socicon socicon-facebook'></i></span></a>";
                    }
                    if (companyDetTbl[0].Twitter.Trim().Length > 0)
                    {
                        followUsStr += "<a href='" + companyDetTbl[0].Twitter + "'><span class='btn btn-social twitter mx-2' title='Twitter'><i class='socicon socicon-twitter'></i></span></a>";
                    }
                    if (companyDetTbl[0].Instagram.Trim().Length > 0)
                    {
                        followUsStr += "<a href='" + companyDetTbl[0].Instagram + "'><span class='btn btn-social facebook mx-2' title='Facebook'><i class='socicon fa fa-instagram' aria-hidden='true'></i></span></a>";
                    }
                    if (companyDetTbl[0].Telegram.Trim().Length > 0)
                    {
                        followUsStr += "<a href='" + companyDetTbl[0].Telegram + "'><span class='btn btn-social facebook mx-2' title='Facebook'><i class='socicon fa fa-telegram' aria-hidden='true'></i></span></a>";
                    }
                    if (companyDetTbl[0].Linkedin.Trim().Length > 0)
                    {
                        followUsStr += "<a href='" + companyDetTbl[0].Linkedin + "'><span class='btn btn-social facebook mx-2' title='Facebook'><i class='socicon fa fa-linkedin' aria-hidden='true'></i></span></a>";
                    }
                    sectionsAddedStr += followUsStr;
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;

                    break;

                case "Custom 1":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    sectionsAddedStr += "<div class='header-container'><h4 class='text-stroke'>Testimonial</h4><h4 class='text-over-stroke'>What Others Think About Us</h4></div>";

                    sectionsAddedStr += dv[i]["detail"];
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;
                case "Proof of Concept":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;

                    tblCompanyTestimonials2Collection testimonial2Tbl = new tblCompanyTestimonials2Collection();
                    testimonial2Tbl.ReadList();
                    string testimonial2Str = ""; 
                    for (int t = 0; t < testimonial2Tbl.Count; t++)
                    {
                        testimonial2Str += "<div class='row justify-content-center mb-5'>" +
                            "<div class='col-12 col-md'>" +
                            //"<h6 class='mbr-section-subtitle mbr-fonts-style mb-4 display-5'>"+ testimonial2Tbl[t].guestName + "<p class='vice-signiture'>" + testimonial2Tbl[t].guestSigniture +  "</p></h6>" +
                            "<img src='images/f2.png' alt='' style='width: 170px;'/>" +
                            "</div>" +
                            "<div class='col-md-12 col-lg-6'><p class='mbr-text mbr-fonts-style display-7'>"+ testimonial2Tbl[t].detail + "</p></div>" +
                            "<div class='col-12 col-md-10 mt-5'>" +
                            "<blockquote><h5 class='mbr-section-title mbr-fonts-style mb-2 display-7'><strong>Hoss Notarkesh</strong></h5>"+
                            "<p class='mbr-text mbr-fonts-style display-4 reply-text'>" + testimonial2Tbl[t].adminReply + "</p></blockquote></div>" +
                            "</div> <hr/>";
                    }
                    sectionsAddedStr += testimonial2Str;
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;
                
                case "Black Box":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    string boxContent = "";
                    if (dv[i]["title"] != "" || dv[i]["title"] != "")
                    {
                        boxContent += "<h2 style='text-align: center;width: 75%;font-weight: bold;margin: 0 auto;line-height: 3rem;'>" + dv[i]["title"] + "</h2>";
                    }
                    boxContent += "<hr class='line' />";
                    if (dv[i]["detail"].ToString().Length > 0)
                    {
                        boxContent += "<p class='mbr-text align-center mbr-fonts-style my-4 display-5'>" + dv[i]["detail"] + "</p>";
                        boxContent += "<hr class='line' />";
                    }
                    sectionsAddedStr += boxContent;
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;
                case "White Box":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    boxContent = "";
                    if (dv[i]["title"] != "" || dv[i]["title"] != "")
                    {
                        boxContent += "<h2 style='text-align: center;width: 75%;font-weight: bold;margin: 0 auto;line-height: 3rem;'>" + dv[i]["title"] + "</h2>";
                    }
                    boxContent += "<hr class='line' />";
                    if (dv[i]["detail"] != null || dv[i]["detail"] != "")
                        boxContent += "<p class='mbr-text align-center mbr-fonts-style my-4 display-5'>" + dv[i]["detail"] + "</p>";
                    boxContent += "<hr class='line' />";
                    sectionsAddedStr += boxContent;
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;
                case "Single Testimonial(LTR)":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    string singleTestStr = "";
                    singleTestStr += "<div class='pb-4 pt-4 media-container-row'>" +
                        "<div class='mbr-figure m-auto pl-lg-3' style='width:18%;'>" +
                            "<img src='" + dv[i]["defaultPicAddr"] + "' alt='Hoss Notarkesh' style='border-radius: 50%;'/>" +
                        "</div>" +
                        "<div class='media-content px-5 align-self-center mbr-white py-2' style='color: black;'>" +
                            dv[i]["detail"] +
                        "</div>" +
                        "</div>";
                    sectionsAddedStr += singleTestStr;
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;
                case "Single Testimonial(RTL)":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    singleTestStr = "";
                    singleTestStr += "<div class='pb-4 pt-4 media-container-row'>" +
                        "<div class='media-content px-5 align-self-center mbr-white py-2' style='color: black;'>" +
                            dv[i]["detail"] +
                        "</div>" +
                        "<div class='mbr-figure m-auto pl-lg-3' style='width:18%;'>" +
                            "<img src='" + dv[i]["defaultPicAddr"] + "' alt='Hoss Notarkesh' style='border-radius: 50%;' />" +
                        "</div>" +
                        "</div>";
                    sectionsAddedStr += singleTestStr;
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;
                case "Services":
                    tblServicesCollection servciesTbl = new tblServicesCollection();
                    servciesTbl.ReadList();

                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    sectionsAddedStr += dv[i]["detail"];
                    string servicesStr = "";

                    #region Right side
                    servicesStr += "<div class='block-content align-right' style='margin-top: 7rem;'>";
                    for (int b = 0; b < 2; b++)
                    {
                        servicesStr += "<div class='card pl-3 pr-3 pb-5' style='margin-bottom: 7rem;text-align: center;'><div class='mbr-card-img-title'><div class='card-img pb-3' style='text-align: center;'>" +
                            "<img src='" + servciesTbl[b].coverPic + "' alt='" + servciesTbl[b].ServiceTitle + "' style='width: 100%; margin: 0 auto;' />" +
                            "</div><div class='mbr-crt-title'>" +
                            "<h4 class='card-title py-2 mbr-crt-title mbr-fonts-style display-7' style='line-height: 35px;'>" + servciesTbl[b].ServiceTitle + "</h4>" +
                            "</div></div><div class='card-box'>" +
                            "<p class='mbr-text mbr-section-text mbr-fonts-style display-7'>";
                        if (servciesTbl[b].ServiceDetail.Length > 270)
                            servicesStr += servciesTbl[b].ServiceDetail.Substring(0, 270) + " ...";
                        else
                            servicesStr += servciesTbl[b].ServiceDetail;

                        servicesStr += "</p>" +
                            "<a class='btn btn-md btn-secondary display-4' href='services.aspx?servId=" + servciesTbl[b].id + "' style='margin-left: 0 !important;background-color: #0b86ce !important;padding: 10px 10px;'>Read more</a>" +
                            "</div></div>";
                    }
                    servicesStr += "</div>";
                    sectionsAddedStr += servicesStr;
                    #endregion

                    #region pic for middle
                    //sectionsAddedStr += homeElementsGrpTbl[0].detail;
                    int endPoint = servciesTbl.Count;
                    servicesStr = "";

                    servicesStr += "<div class='mbr-figure m-auto' style='width: 50%;''>";

                    #region top of pic
                    servicesStr += "<div class='card pl-3 pr-3 pb-5 size-middle' style='text-align: center;margin: 0 auto;'><div class='mbr-card-img-title'><div class='card-img pb-3' style='text-align: center;'>" +
                      "<img src='" + servciesTbl[5].coverPic + "' alt='" + servciesTbl[5].ServiceTitle + "' style='margin: 0 auto;' />" +
                      "</div><div class='mbr-crt-title'>" +
                      "<h4 class='card-title py-2 mbr-crt-title mbr-fonts-style display-7' style='line-height: 35px;'>" + servciesTbl[5].ServiceTitle + "</h4>" +
                      "</div></div><div class='card-box'>" +
                      "<p class='mbr-text mbr-section-text mbr-fonts-style display-7'>";

                    if (servciesTbl[5].ServiceDetail.Length > 270)
                        servicesStr += servciesTbl[5].ServiceDetail.Substring(0, 570) + " ...";
                    else
                        servicesStr += servciesTbl[5].ServiceDetail;

                    servicesStr += "</p>" +
                       "<a class='btn btn-md btn-secondary display-4' href='services.aspx?servId=" + servciesTbl[5].id + "' style='margin-left: 0 !important;background-color: #0b86ce !important;padding: 10px 10px;'>Read more</a>" +
                       "</div></div>";
                    #endregion

                    //middle pic
                    servicesStr += "<img src='assets/images/business executive.jpg' alt='' title=''>";

                    #region bottom of pic
                    servicesStr += "<div class='card pl-3 pr-3 pt-5 size-middle' style='text-align: center;margin: 0 auto;'><div class='mbr-card-img-title'><div class='card-img pb-3' style='text-align: center;'>" +
                       "<img src='" + servciesTbl[4].coverPic + "' alt='" + servciesTbl[4].ServiceTitle + "' style='margin: 0 auto;' />" +
                       "</div><div class='mbr-crt-title'>" +
                       "<h4 class='card-title py-2 mbr-crt-title mbr-fonts-style display-7' style='line-height: 35px;'>" + servciesTbl[4].ServiceTitle + "</h4>" +
                       "</div></div><div class='card-box'>" +
                       "<p class='mbr-text mbr-section-text mbr-fonts-style display-7'>";

                    if (servciesTbl[4].ServiceDetail.Length > 270)
                        servicesStr += servciesTbl[4].ServiceDetail.Substring(0, 270) + " ...";
                    else
                        servicesStr += servciesTbl[4].ServiceDetail;

                    servicesStr += "</p>" +
                       "<a class='btn btn-md btn-secondary display-4' href='services.aspx?servId=" + servciesTbl[4].id + "' style='margin-left: 0 !important;background-color: #0b86ce !important;padding: 10px 10px;'>Read more</a>" +
                       "</div></div>";
                    #endregion

                    servicesStr += "</div>";
                    
                    sectionsAddedStr += servicesStr;

                    #endregion

                    #region Left Side
                    servicesStr = "";
                    servicesStr += "<div class='block-content align-left' style='margin-top: 7rem;'>";

                    for (int b = 2; b < 4; b++)
                    {
                        servicesStr += "<div class='card pl-3 pr-3 pb-5' style='margin-bottom: 7rem;text-align: center;'><div class='mbr-card-img-title'><div class='card-img pb-3' style='text-align: center;'>" +
                           "<img src='" + servciesTbl[b].coverPic + "' alt='" + servciesTbl[b].ServiceTitle + "' style='width: 100%; margin: 0 auto;' />" +
                           "</div><div class='mbr-crt-title'>" +
                           "<h4 class='card-title py-2 mbr-crt-title mbr-fonts-style display-7' style='line-height: 35px;'>" + servciesTbl[b].ServiceTitle + "</h4>" +
                           "</div></div><div class='card-box'>" +
                           "<p class='mbr-text mbr-section-text mbr-fonts-style display-7'>";

                        if (servciesTbl[b].ServiceDetail.Length > 270)
                            servicesStr += servciesTbl[b].ServiceDetail.Substring(0, 270) + " ...";
                        else
                            servicesStr += servciesTbl[b].ServiceDetail;

                        servicesStr += "</p>" +
                           "<a class='btn btn-md btn-secondary display-4' href='services.aspx?servId=" + servciesTbl[b].id + "' style='margin-left: 0 !important;background-color: #0b86ce !important;padding: 10px 10px;'>Read more</a>" +
                           "</div></div>";
                    }

                    servicesStr += "</div>";
                    sectionsAddedStr += servicesStr;
                    #endregion

                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;
                case "Success Stories 11":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;

                    testimonialStr = "";
                    tblCompanyTestimonialsCollection testimonialCarTbl = new tblCompanyTestimonialsCollection();
                    testimonialCarTbl.ReadList();

                    for (int L = 0; L < testimonialCarTbl.Count; L++)
                    {
                        testimonialStr += "<div class='carousel-item'>"+
                            "<div class='media-container-row'><div class='col-md-12'><div class='card-wrap'><div class='content-wrap'>"+
                            "<p class='card-text mbr-fonts-style align-center display-7'>" + testimonialCarTbl[L].detail + "</p>" +
                            "<h5 class='mbr-section-title card-title mbr-fonts-style align-center m-0 display-5' style='font-weight: bold;font-size: 20px;'>" + testimonialCarTbl[L].guestName + "</h5>" +
                            "<h6 class='mbr-role mbr-fonts-style align-center mb-3 display-4' style='font-size: 12px;'>" + testimonialCarTbl[L].guestSigniture + "</h6>" +
                            "</div></div></div></div></div>";
                    }

                    sectionsAddedStr += testimonialStr;

                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;

                    break;

                case "Success Stories 2":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    testimonialStr = "";

                    tblCompanyTestimonialsCollection testimonialCar1Tbl = new tblCompanyTestimonialsCollection();
                    testimonialCar1Tbl.ReadList();

                    if (testimonialCar1Tbl.Count > 0)
                    {
                        testimonialStr += "<input class='input-carol' type='radio' name='slider' id='item-1' checked>";
                    }

                    for (int L = 0; L < testimonialCar1Tbl.Count -1; L++)
                    {
                        testimonialStr += "<input class='input-carol' type='radio' name='slider' id='item-" + (L + 2).ToString() + "' >";
                    }


                    testimonialStr += "<div class='cards cards-carol'>";
                    
                    for (int L = 0; L < testimonialCar1Tbl.Count; L++)
                    {
                        testimonialStr += " <label class='card card-carol' for='item-" + (L + 1).ToString() + "' id='song-" + (L + 1).ToString() + "' style='width: 85%;'>";
                        testimonialStr += "<div class='img-carol'>" +
                           "<div class='media-container-row'><div class='col-md-12'><div class='card-wrap'>" +
                           "<div class='pic-testimonial'>" +
                           "<img src='" + testimonialCar1Tbl[L].guestPic + "' alt'" + testimonialCar1Tbl[L].title + "' />" +
                           "</div>" +
                           "<div class='content-wrap'>";
                        if (testimonialCar1Tbl[L].detail.Length > 400)
                            testimonialStr += "<p class='card-text mbr-fonts-style align-center display-7' style='font-size: 12px;'>" + testimonialCar1Tbl[L].detail + "</p>";
                        else
                            testimonialStr += "<p class='card-text mbr-fonts-style align-center display-7'>" + testimonialCar1Tbl[L].detail + "</p>";

                        testimonialStr += "<h5 class='mbr-section-title card-title mbr-fonts-style align-center m-0 display-5' style='font-weight: bold;font-size: 20px;'>" + testimonialCar1Tbl[L].guestName + "</h5>" +
                           "<h6 class='mbr-role mbr-fonts-style align-center mb-3 display-4' style='font-size: 12px;'>" + testimonialCar1Tbl[L].guestSigniture + "</h6>" +
                           "</div></div></div></div></div>";

                        testimonialStr += "</label>";
                    }

                    testimonialStr += "</div>";


                    sectionsAddedStr += testimonialStr;

                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;

                    break;
                case "Grid Multiple":
                    sectionsAddedStr += homeElementsGrpTbl[0].openTag;
                    string gridStr = "";
                    gridStr += "<div class='mbr-section-head' style='text-align: center;'>";
                    //gridStr += "<h2 class='mbr-section-title pb-3 mbr-fonts-style display-2'>" + dv[i]["title"] + "</h2>";
                    gridStr += "</div>";
                    gridStr += "<div class='row justify-content-center mt-4' style='width: 100%;'>";
                    gridStr += dv[i]["detail"];
                    gridStr += "</div>";
                    sectionsAddedStr += gridStr;
                    sectionsAddedStr += homeElementsGrpTbl[0].closeTag;
                    break;

                default:
                    break;
            }


        }

        objectAddedHtml.InnerHtml = sectionsAddedStr;
        #endregion

        #region Slider

        string sliderStr = string.Empty;
        tblSliderCollection sliderTbl = new tblSliderCollection();
        sliderTbl.ReadList();

        
        
        if (sliderTbl.Count > 0)
        {
            //for (int i = 0; i < sliderTbl.Count; i++)
            //{

            sliderStr += "<h1 class='mbr-section-title mbr-bold pb-3 mbr-fonts-style display-1'>" + sliderTbl[0].SliderTitle + "</h1>" +
                           "<p class='mbr-text pb-3 mbr-fonts-style display-5'>" + sliderTbl[0].SliderDetail + "</p>";

            //sliderStr += "<div class='single-slide slider-height bg-style d-flex align-items-center' style='background-image: url(" + sliderTbl[i].SliderPicAddr + sliderTbl[i].SliderPicName + ");'>"+
            //             "<div class='container'><div class='row'><div class='col-xl-6 col-md-7 col-sm-8'><div class='slider-content bg-shape text-center ptb--100'>"+
            //             "<h2 class='heading__primary mb--30'>"+
            //             "<span class='heading__primary--sub' data-animation='fadeInUp' data-duration='.4s' data-delay='.7s'>" + sliderTbl[i].SliderTitle + "</span>" +
            //             "<span class='heading__primary--main' data-animation='fadeInUp' data-duration='.4s' data-delay='1s'>" + sliderTbl[i].SliderDetail + "</span></h2>" +
            //             "<a href='" + sliderTbl[i].SliderLink + "' class='btn' data-animation='fadeInUp' data-duration='.4s' data-delay='1.2s'>" + sliderTbl[i].SliderLinkTitle + "<i class='fa fa-angle-double-right'></i></a>" +
            //             "</div></div></div></div></div>";
            //}

        }
        sliderHtml.InnerHtml = sliderStr;

        #endregion

        #region seperated items

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

        #region special offer (popup section)
        if (!IsPostBack)
        {
            if (20230101 > dateNow)
            {
                //exampleModalLongTitle.InnerText = popUpPageTbl[i].popupTitle;

                //popPageStr += popUpPageTbl[i].popupDetails;

                //popupFooterHtml.InnerText = "This promotion will end on " + popUpPageTbl[i].EndDate;

                ScriptManager.RegisterStartupScript(this, GetType(), "myfunction", "runModalPopup();", true);
            }
        }
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

    protected void btnSendEmail_Click(object sender, EventArgs e)
    {
        tblEmailSendDetailsCollection emailDetTbl = new tblEmailSendDetailsCollection();
        emailDetTbl.ReadList();

        #region Sending Email

        string smtpText = emailDetTbl[0].smtp;
        int portNumber = Convert.ToInt32(emailDetTbl[0].portNumber);
        string userName = emailDetTbl[0].emailAddr;
        string password = emailDetTbl[0].password;

        try
        {
            SmtpClient smtp = new SmtpClient(smtpText, portNumber);
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.UseDefaultCredentials = false;

            smtp.Credentials = new NetworkCredential(userName, password);
            MailMessage message = new MailMessage();
            message.To.Add("hoss@hossnotarkesh.com");
            //message.To.Add("i8net2000@yahoo.com");
            //message.Bcc.Add("i8net2000@yahoo.com");
            message.Bcc.Add("erfan@hossnotarkesh.com");
            

            //string toAddress = "";
            //foreach (var item in toAddress.Split(new[] { ";" }, StringSplitOptions.RemoveEmptyEntries))                //Read from a string with ; as delimiter and split them and put them i an array



            message.From = new MailAddress(userName);
            message.Subject = "BOOK A ZEN TEAM BUILDING WORKSHOP FOR " + txtNamePopup.Value;
            message.Body = "This is a request for appointment for Mr/Mrs" + txtNamePopup.Value + " by the email address of " + txtEmailPopup.Value;

            smtp.Send(message);

            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Email has been sent, we get to you soon');", true);
            //Response.Redirect("contact.aspx.aspx");
            //lblErrorHtml.InnerText = "your email has been sent sucessfully.";
        }
        catch (Exception ex)
        {

            //lblErrorHtml.InnerText = "Email has not been sent because " + ex.Message;
        }

        #endregion

        #region save as a member of daily email
        //tblMemberOfDailyEmail dailyMemberTbl = new tblMemberOfDailyEmail()
        //{
        //    memberEmail = txtEmailPopup.Value,
        //    memberExpDate = DateTime.Now.AddYears(1).ToString("yyyy-MM-dd"),
        //    memberInsDate = DateTime.Now.ToString("yyyy-MM-dd"),
        //    memberName = txtNamePopup.Value,
        //    memberRequestToDea = "",
        //    allow = "1",
        //    memberSurname = txtNamePopup.Value,
        //};
        //dailyMemberTbl.Create();
        #endregion
    }
}