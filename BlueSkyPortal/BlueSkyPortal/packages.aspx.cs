using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bluesky.artyn;
using Cruder.Core;

public partial class news : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string servicesStr = "";
        tblServicesCollection servicesTbl = new tblServicesCollection();
        servicesTbl.ReadList();
        int counter = 0;
        
        for (int i = 0; i < servicesTbl.Count; i++)
        {

            if (counter == 1)
            {
                servicesStr += "<section data-bs-version='5.1' class='features16 cid-t6WDPRHuh2' id='features17-l'>" +
                "<div class='container-fluid'><div class='content-wrapper' style='padding-bottom: 0;padding-top: 0;'><div class='row align-items-center'>" +


                "<div class='col-12 col-lg'><div class='text-wrapper'>" +
                "<h6 class='card-title mbr-fonts-style display-5'>" +


                "<strong>" + servicesTbl[i].ServiceTitle + "</strong>" +

                "</h6><p class='mbr-text mbr-fonts-style mb-4 display-4'>";

                if (servicesTbl[i].ServiceDetail.Length > 270)
                    servicesStr += servicesTbl[i].ServiceDetail.Substring(0, 270) + " ...";
                else
                    servicesStr += servicesTbl[i].ServiceDetail;

                servicesStr += "</p>" +
                        "<div class='mbr-section-btn mt-3'><a class='btn btn-primary display-4' href='services.aspx?servId=" + servicesTbl[i].id + "'>Learn more</a>" +
                        "</div></div></div>" +





                "<div class='col-12 col-lg-6' style='padding-right: 0;padding-left: 0;'><div class='image-wrapper'>" +

                "<img src='" + servicesTbl[i].coverPic + "' alt='" + servicesTbl[i].ServiceTitle + "' >" +

                "</div></div>" +




                        "</div></div></div></section>";

                counter = 0;
            }
            else
            {
                servicesStr += "<section data-bs-version='5.1' class='features16 cid-t6WDPRHuh2' id='features17-l'>" +
                    "<div class='container-fluid'><div class='content-wrapper' style='padding-bottom: 0;padding-top: 0;'><div class='row align-items-center'>" +
                    "<div class='col-12 col-lg-6' style='padding-right: 0;padding-left: 0;'><div class='image-wrapper'>" +

                    "<img src='" + servicesTbl[i].coverPic + "' alt='" + servicesTbl[i].ServiceTitle + "' >" +

                    "</div></div>" +

                    "<div class='col-12 col-lg'><div class='text-wrapper'>" +
                    "<h6 class='card-title mbr-fonts-style display-5'>" +


                    "<strong>" + servicesTbl[i].ServiceTitle + "</strong>" +

                    "</h6><p class='mbr-text mbr-fonts-style mb-4 display-4'>";

                if (servicesTbl[i].ServiceDetail.Length > 270)
                    servicesStr += servicesTbl[i].ServiceDetail.Substring(0, 270) + " ...";
                else
                    servicesStr += servicesTbl[i].ServiceDetail;

                servicesStr += "</p>" +
                        "<div class='mbr-section-btn mt-3'><a class='btn btn-primary display-4' href='services.aspx?servId=" + servicesTbl[i].id + "'>Learn more</a>" +
                        "</div></div></div></div></div></div></section>";
              
                counter++;

            }

        }

        packagesHtml.InnerHtml = servicesStr;
    }
}