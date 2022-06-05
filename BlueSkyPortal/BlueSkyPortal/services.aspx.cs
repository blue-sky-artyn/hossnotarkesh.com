using System;
using System.Activities.Expressions;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using bluesky.artyn;
using Cruder.Core;

public partial class product_category : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tblServicesCollection servicesTbl = new tblServicesCollection();
        servicesTbl.ReadList();

        tblServiceGroupCollection servicesGrpTbl = new tblServiceGroupCollection();
        tblServicePicCollection servicesPicTbl = new tblServicePicCollection();


        #region Get data from url

        int mainId = 0;int groupId = 0;
        if (Request.QueryString["servId"] != null)
        {
            mainId = int.Parse(Request.QueryString["servId"]);
            //read data for title
            servicesTbl.ReadList(Criteria.NewCriteria(tblServices.Columns.id,CriteriaOperators.Equal, mainId));
            servicesGrpTbl.ReadList(Criteria.NewCriteria(tblServiceGroup.Columns.id, CriteriaOperators.Equal, servicesTbl[0].idServiceGroup));
        }
        else if (Request.QueryString["servGrpId"] != null)
        {
            groupId = Convert.ToInt32(Request.QueryString["servGrpId"]);
            servicesGrpTbl.ReadList(Criteria.NewCriteria(tblServiceGroup.Columns.id, CriteriaOperators.Equal, groupId));
            servicesTbl.ReadList(Criteria.NewCriteria(tblServices.Columns.idServiceGroup, CriteriaOperators.Equal, groupId));

        }
        else
        {
            servicesTbl.ReadList();
        }

        #endregion

        #region titles


        if (servicesGrpTbl.Count == 1)
        {
            mainGrpHtml.InnerText = servicesGrpTbl[0].ServiceGroupTitle;
        }
        else
        {
            mainGrpHtml.InnerText = "All Services";
        }

        #endregion

   
        #region filling items

        string serviceStr = string.Empty;int minLevel = 0;

        if (servicesTbl.Count > 0)
        {
            for (int i = servicesTbl.Count - 1; i >= 0; i--)
            {
                servicesGrpTbl.ReadList(Criteria.NewCriteria(tblServiceGroup.Columns.id, CriteriaOperators.Equal, servicesTbl[i].idServiceGroup));
                servicesPicTbl.ReadList(Criteria.NewCriteria(tblServicePic.Columns.idService, CriteriaOperators.Equal, servicesTbl[i].id));

                serviceStr += "<div class='col-xl-4 col-sm-6 mb--50'><div class='zakas-product-list'><div class='product-inner'>" +
                        "<figure class='product-image'>" +
                        "<a><img src='" + servicesPicTbl[0].picAddr + servicesPicTbl[0].picName + "' alt='" + servicesTbl[i].ServiceTitle + "'></a>" +
                        "</figure><div class='product-info'>" +
                        "<h3 class='product-title mb--25'><a>" + servicesTbl[i].ServiceTitle + "</a></h3>" +
                        "<div class='product-price-wrapper mb--15 mb-sm--10'><span class='money'>" + servicesGrpTbl[0].ServiceGroupTitle + "</span></div>" +
                        "<p class='product-short-description mb--20'>" + servicesTbl[i].ServiceDetail + "</p><div class='zakas-product-action-list d-flex'>" +
                        //"<a href='cart.html' class='btn btn-small btn-bg-sand btn-color-dark'>Service Details</a>"+
                        //"<a href='serivces-details.aspx?servId=" + servicesTbl[i].id + "' class='ml--20 action-btn'><i class='flaticon flaticon-like'></i></a>" +
                        "</div></div></div></div></div>";

            }
        }

        servicesHtml.InnerHtml = serviceStr;

        #endregion

        #region filling group items
        
        servicesGrpTbl.ReadList();
        string servicesGrpStr = string.Empty;
        
        for (int i = 0; i < servicesGrpTbl.Count; i++)
        {
            servicesGrpStr += "<li><a href='services.aspx?servGrpId=" + servicesGrpTbl[i].id + "'>" +
                            "<span class='category-title'>" + servicesGrpTbl[i].ServiceGroupTitle + "</span>" +
                            "<i class='fa fa-angle-double-right'></i></a></li>";
        }

        servicesGrpHtml.InnerHtml = servicesGrpStr;
        #endregion
    }
}