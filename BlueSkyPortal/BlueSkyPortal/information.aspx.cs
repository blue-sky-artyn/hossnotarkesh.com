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
        string infoStr = string.Empty; string writerStr = string.Empty;
        tblInformationDetailCollection infoDetTbl = new tblInformationDetailCollection();
        tblInformationGroupCollection infoGroupTbl = new tblInformationGroupCollection();

        #region Get data from url

        int groupId = 0;
        if (Request.QueryString["mainCat"] != null)
        {
            groupId = int.Parse(Request.QueryString["mainCat"]);
            infoDetTbl.ReadList(Criteria.NewCriteria(tblInformationDetail .Columns.idInfoGroup, CriteriaOperators.Equal, groupId));
        }
        else
        {
            infoDetTbl.ReadList();

        }

        #endregion

        #region information 

        tblStaffCollection infoWriterTbl = new tblStaffCollection();

        for (int i = 0; i < infoDetTbl.Count; i++)
        {
            infoGroupTbl.ReadList(Criteria.NewCriteria(tblInformationGroup.Columns.id, CriteriaOperators.Equal, infoDetTbl[i].idInfoGroup));
            //infoWriterTbl.ReadList(Criteria.NewCriteria(tblStaff.Columns.id, CriteriaOperators.Equal, infoDetTbl[i].id));
            //if (newsWriterTbl.Count > 0)
            //    writerStr = newsWriterTbl[0].StaffName;
            //else
            //    writerStr = "admin";

            infoStr += "<div class='content blog-list'><div class='blog-wrapper clearfix'><div class='blog-meta'>" +
                "<h3><a href='info-details.aspx?infoId=" + infoDetTbl[i].id + "' title='" + infoDetTbl[i].infDetailTitle + "'>" + infoDetTbl[i].infDetailTitle + "</a></h3><small>(<a href='information.aspx?mainCat=" + infoGroupTbl[0].id + "'>" + infoGroupTbl[0].infGroupTitle + "</a>)</small>" +
                "<ul class='list-inline' style='width:100%;font-size:10px;text-align:right;'><li>" + infoDetTbl[i].infDetailInsertDate + "</li></ul></div><div class='blog-media'>" +
                "<a href='info-details.aspx?infoId=" + infoDetTbl[i].id + "' title='" + infoDetTbl[i].infDetailTitle + "'>";

            if (infoDetTbl[i].frontFileType == 0)
                infoStr += "<img src='" + infoDetTbl[i].frontFile + "' alt='" + infoDetTbl[i].infDetailTitle + "' class='img-responsive img-rounded'  style='max-width:auto;'>";
            else if (infoDetTbl[i].frontFileType == 1)
                infoStr += "<div class='img-responsive img-rounded'><video style='width:100%;'><source src='" + infoDetTbl[i].frontFile + "' type='video/mp4'>Your browser does not support HTML5 video.</video></div>";
            else
                infoStr += "<div class='img-responsive img-rounded'>" + infoDetTbl[i].frontFile + "</div>";

            infoStr += "</a></div><div class='blog-desc-big'>" +
                "<p class='lead'>" + infoDetTbl[i].infDetailsGist + "</p>" +
                //"<p class='news-gist'>" + newsTbl[i].newsDetGist + "</p>" +
                //"<p>" + newsTbl[i].newsDetDetails + "</p>" +
                "<a href='info-details.aspx?infoId=" + infoDetTbl[i].id + "' class='btn btn-primary'>Read More</a></div></div></div>";
        }

        infoHtml.InnerHtml = infoStr;

        #endregion

        #region recent post

        int limit = 0; infoStr = "";
        if (infoDetTbl.Count > 4)
            limit = infoDetTbl.Count - 4;
        
        for (int i = infoDetTbl.Count - 1; i >= limit; i--)
        {
            infoStr += "<div class='media' style='margin-bottom: 1.2rem;'> ";

            if (infoDetTbl[i].frontFileType == 0)
                infoStr += "<img src='" + infoDetTbl[i].frontFile + "' alt='" + infoDetTbl[i].infDetailTitle + "' class='img-responsive alignleft img-rounded' style='max-width: 25%;'/>";
            else if (infoDetTbl[i].frontFileType == 1)
                infoStr += "<div class='img-responsive alignleft img-rounded'><video style='width:100%;'><source src='" + infoDetTbl[i].frontFile + "' type='video/mp4'>Your browser does not support HTML5 video.</video></div>";
            else
                infoStr += "<div class='img-responsive alignleft img-rounded'>" + infoDetTbl[i].frontFile + "</div>";

            infoStr += "<div class='media-body'>" +
                "<h5 class='mt-0'><a href='info-details.aspx?infoId=" + infoDetTbl[i].id + "'>" + infoDetTbl[i].infDetailTitle + "</a></h5>" +
                "<div class='blog-meta' style='text-align: right;'>" +
                "<ul class='list-inline' style='width: 100%;'><li style='font-size: 9px;'>" + infoDetTbl[i].infDetailInsertDate + "</li></ul>" +
                "</div></div></div>";
        }

        recentPostHtml.InnerHtml = infoStr;

        #endregion
    }
}