using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Cruder.Core;
using bluesky.artyn;

public partial class checkout : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        #region read customer ID

        int customerIDCookie = 0;

        if (Request.Cookies["customerID"] != null)
        {
            customerIDCookie = Convert.ToInt32(Request.Cookies["customerID"].Value);
        }
        else
            Response.Redirect("default.aspx");

        #endregion

        #region fill the invoice
        
        string invoiceStr = "";
        tblCustomerGuestCollection customerTbl = new tblCustomerGuestCollection();
        customerTbl.ReadList(Criteria.NewCriteria(tblCustomerGuest.Columns.customerID, CriteriaOperators.Equal, customerIDCookie));

        tblCustomerGuestItemsCollection customerItemsTbl = new tblCustomerGuestItemsCollection();
        customerItemsTbl.ReadList(Criteria.NewCriteria(tblCustomerGuestItems.Columns.guestID, CriteriaOperators.Equal, customerTbl[0].id));

        tblProductCollection productTbl = new tblProductCollection();

        for (int i = 0; i < customerItemsTbl.Count ; i++)
        {
            productTbl.ReadList(Criteria.NewCriteria(tblProduct.Columns.id, CriteriaOperators.Equal, customerItemsTbl[i].ProductID));

            invoiceStr += "<tr><th>"+productTbl[0].productName + "</th>" +
                           "<td class='text-right'>" + customerItemsTbl[i].QTY +"</td></tr>";
        }

        invoiceHtml.InnerHtml = invoiceStr;


        #endregion
    }

    protected void btnPlaceOrder_Click(object sender, EventArgs e)
    {
        #region read customer ID

        int customerIDCookie = 0;

        if (Request.Cookies["customerID"] != null)
        {
            customerIDCookie = Convert.ToInt32(Request.Cookies["customerID"].Value);
        }
        else
            Response.Redirect("default.aspx");

        #endregion

        tblCustomerGuestCollection customerGuestTbl = new tblCustomerGuestCollection();
        customerGuestTbl.ReadList(Criteria.NewCriteria(tblCustomerGuest.Columns.customerID,CriteriaOperators.Equal, customerIDCookie));

        #region update the customer table

        if (txtName.Value.Length > 0 && txtPhone.Value.Length > 0 && txtEmail.Value.Length > 0)
        {
            string dateInsert = DateTime.Now.ToString("yyyy/MM/dd");

            customerGuestTbl[0].customerName = txtName.Value;
            customerGuestTbl[0].customerfName = txtfName.Value;
            customerGuestTbl[0].customerEmail = txtEmail.Value;
            customerGuestTbl[0].customerTel = txtPhone.Value;
            customerGuestTbl[0].customerAddr = txtAddr.Value;

            customerGuestTbl[0].customerNote = txtOrderNotes.Value;
            customerGuestTbl[0].customerOrderDate = dateInsert;
            customerGuestTbl[0].allow = "1";
            
            customerGuestTbl[0].Update();

            ScriptManager.RegisterStartupScript(this, GetType(), "myfunction", "killCookie();", true);

            lblError.InnerText = "Your refrence number is: " + customerIDCookie;


        }
        else
        {
            lblError.InnerText = "Please first enter required fields.";
        }

        #endregion
    }
}