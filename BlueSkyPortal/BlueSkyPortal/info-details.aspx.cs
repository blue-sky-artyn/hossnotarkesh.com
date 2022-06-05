using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using bluesky.artyn;
using Cruder.Core;

public partial class info_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tblInformationDetailCollection infoDetTbl = new tblInformationDetailCollection();
        tblInformationGroupCollection infoGrpTbl = new tblInformationGroupCollection();

        #region Get item from url

        int infoId = 0;
        if (Request.QueryString["infoId"] != null)
        {
            infoId = int.Parse(Request.QueryString["infoId"]);
            infoDetTbl.ReadList(Criteria.NewCriteria(tblInformationDetail.Columns.id, CriteriaOperators.Equal, infoId));
            infoGrpTbl.ReadList(Criteria.NewCriteria(tblInformationGroup.Columns.id, CriteriaOperators.Equal, infoDetTbl[0].idInfoGroup));
        }
        else
            Response.Redirect("404.aspx");

        #endregion

        #region enter content
        if (infoDetTbl.Count > 0)
        {
            //Title
            titleInfoId.InnerText = infoDetTbl[0].infDetailTitle;

            //subtitle
            infosubTitleTId.InnerText = infoDetTbl[0].infDetailsGist;

            //picture
            if (infoDetTbl[0].frontFileType == 0)
            {
                //PICTURE

                infoPic.Src = infoDetTbl[0].frontFile;
                infoPic.Alt = infoDetTbl[0].infDetailTitle;
            }
            else if (infoDetTbl[0].frontFileType == 1)
            {
                //MOVIE

                //infoPic.Src = infoDetTbl[0].frontFile;
            }
            else
            {
                //LINK
            }

            //Details
            infoDetId.InnerHtml = infoDetTbl[0].infDetailDescription;

            //insert Date
            infoDateId.InnerText = infoDetTbl[0].infDetailInsertDate;


            #region groups side menu


            string goupsStr = "";
            infoGrpTbl.ReadList();
            for (int i = 0; i < infoGrpTbl.Count; i++)
            {
                goupsStr += "<li><a href='information.aspx?infoGrp=" + infoGrpTbl[i].id + "'><span>" + infoGrpTbl[i].infGroupTitle + "</span><i class='fa fa-angle-double-right'></i></a></li>";
            }

            catInfoId.InnerHtml = goupsStr;
            #endregion


            #region recent post
            string recentPostStr = "";
            infoDetTbl.ReadList();

            int minLevel = 0;
            if ((infoDetTbl.Count - 5) > 0)
                minLevel = infoDetTbl.Count - 5;
            
            for (int i = infoDetTbl.Count - 1; i > minLevel; i--)
            {
             recentPostStr +=
                              "<div class='recent-post__item'>" +
                              //"<div class='recent-post__thumb'>"+
                              //          "<a href='info-details.aspx?infoId="+ infoDetTbl[i].id + "'>" +
                              //          "<img src='assets/img/blog/blog-1-70x70.jpg' alt='Blog'></a></div>" +
                              "<div class='recent-post__content'><h3 class='recent-post__title text-truncate'><a href='info-details.aspx?infoId=" + infoDetTbl[i].id + "'>" + infoDetTbl[i].infDetailTitle + "</a></h3>" +
                              "<span class='recent-post__meta'>" + infoDetTbl[i].infDetailInsertDate + "</span></div></div>";
            }

            recentPostId.InnerHtml = recentPostStr;
            #endregion
        }

        #endregion
    }
}