using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Cruder.Core;
using bluesky.artyn;

public partial class sama_plans : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string promoStr = "";
        tblOccasionCollection promoTbl = new tblOccasionCollection();
        promoTbl.ReadList();

        for (int i = 0; i < promoTbl.Count; i++)
        {
            promoStr += "<div class='col-lg-4 col-md-6 mb--50'><article class='bg-white blog blog-style-2'><div class='blog-media'><figure class='image promotional-details'>" +
                        "<p>"+promoTbl[i].OccasionDetails+"</p>" +
                        "</figure></div><div class='blog-info'>" +
                        "<h2 class='blog-title'>" + promoTbl[i].OccasionTitle + "</h2>" +
                        "<div class='blog-meta'><div class='blog-meta--left'>" +
                        "<a href='#' class='blog-meta-btn'><i class='fa fa-calendar'></i>" +
                        "<sup class='date-show'>ends in " + promoTbl[i].EndDate + "</sup>" +
                        "</a></div></div></div></article></div></div>";
        }

        promoHtml.InnerHtml = promoStr;


    }
}