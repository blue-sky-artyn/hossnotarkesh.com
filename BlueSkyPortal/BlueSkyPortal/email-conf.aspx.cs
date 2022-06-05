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
        tblSubscribersCollection subscriberTbl = new tblSubscribersCollection();
        subscriberTbl.ReadList();
        tblSubscribersApprovalCollection subscriberApprovalTbl = new tblSubscribersApprovalCollection();
        subscriberApprovalTbl.ReadList();

        try
        {
            #region Get data from url

            int userId = 0; string approvalCode = "";


            if (Request.QueryString["appC"] != null && Request.QueryString["ussINumber"] != null)
            {

                userId = int.Parse(Request.QueryString["ussINumber"]);
                approvalCode = Request.QueryString["appC"];

                //read data 
                subscriberTbl.ReadList(Criteria.NewCriteria(tblSubscribers.Columns.id, CriteriaOperators.Equal, userId));
                subscriberApprovalTbl.ReadList(Criteria.NewCriteria(tblSubscribersApproval.Columns.idSubscribes, CriteriaOperators.Equal, userId));
            }
            else
            {
                Response.Redirect("505.aspx");
            }

            #endregion

            #region update subsciber table
            if (subscriberApprovalTbl[0].approvalCode == approvalCode)
            {
                subscriberTbl[0].allow = "1";
                subscriberTbl[0].Update();
                approvedEmailHtml.InnerText = "Your registraion has been completed, Please login now.";
            }
            else
                approvedEmailHtml.InnerText = "The process of validation has been collapsed, try again";

            #endregion

            #region filling group items
            tblServiceGroupCollection servicesGrpTbl = new tblServiceGroupCollection();
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
        catch (Exception ex)
        {
            approvedEmailHtml.InnerText = ex.ToString();

        }
    }
}