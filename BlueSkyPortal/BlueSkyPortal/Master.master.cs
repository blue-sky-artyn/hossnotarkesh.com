using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Cruder.Core;
using bluesky.artyn;

public partial class Master : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        #region read customer ID

        int customerIDCookie = 0;

        if (Request.Cookies["customerID"] != null)
        {
            customerIDCookie = Convert.ToInt32(Request.Cookies["customerID"].Value);
        }

        #endregion

        tblCustomerGuestCollection customerGeustTbl = new tblCustomerGuestCollection();

        customerGeustTbl.ReadList(Criteria.NewCriteria(tblCustomerGuest.Columns.customerID, CriteriaOperators.Equal, customerIDCookie));

        tblCustomerGuestItemsCollection customerBasketTbl = new tblCustomerGuestItemsCollection();
        tblProductCollection productTbl = new tblProductCollection();

        #region fill the cart (popup / side popup)

        string cartStr = "";
        if (customerGeustTbl.Count > 0)
        {
            customerBasketTbl.ReadList(Criteria.NewCriteria(tblCustomerGuestItems.Columns.guestID, CriteriaOperators.Equal, customerGeustTbl[0].id));

            for (int i = 0; i < customerBasketTbl.Count; i++)
            {
                productTbl.ReadList(Criteria.NewCriteria(tblProduct.Columns.id, CriteriaOperators.Equal, customerBasketTbl[i].ProductID));

                cartStr += "<li class='mini-cart__product'>" +

                                "<div class='mini-cart__product__image'><img src='" + productTbl[0].productCoverPicAdd + productTbl[0].productCoverPicName + "' alt='" + productTbl[0].productName + "'></div>" +
                                "<div class='mini-cart__product__content'>" +
                                "<a class='mini-cart__product__title' href='product-details.aspx?productId=" + productTbl[0].id + "'>" + productTbl[0].productName + "</a>" +
                                 "<span class='mini-cart__product__quantity'>QTY: " + customerBasketTbl[i].QTY + "</span></div></li>";


            }

        }
        //cartHtml.InnerHtml = cartStr;


        #endregion

    }
}
