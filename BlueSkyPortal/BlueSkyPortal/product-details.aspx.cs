using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using bluesky.artyn;
using Cruder.Core;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tblProductCollection productTbl = new tblProductCollection();
        tblProductDetailsCollection productDetTbl = new tblProductDetailsCollection();

        tblProductGroupCollection productMainGroupTbl = new tblProductGroupCollection();
        tblProductSubGroupCollection productSubGroupTbl = new tblProductSubGroupCollection();
        
        string productStr = string.Empty;int counter = 0;

        #region Get item from url

        int productCode = 0;
        if (Request.QueryString["productId"] != null)
        {
            productCode = int.Parse(Request.QueryString["productId"]);
            productTbl.ReadList(Criteria.NewCriteria(tblProduct.Columns.id, CriteriaOperators.Equal, productCode));
            productDetTbl.ReadList(Criteria.NewCriteria(tblProductDetails.Columns.productId, CriteriaOperators.Equal, productCode));
        }
        else
            Response.Redirect("404.aspx");

        #endregion

        #region titles

        productMainGroupTbl.ReadList(Criteria.NewCriteria(tblProductGroup.Columns.id, CriteriaOperators.Equal, productTbl[0].productGrpId));
        if (productMainGroupTbl[0].subGroup == "1")
            productSubGroupTbl.ReadList(Criteria.NewCriteria(tblProductSubGroup.Columns.idGroup, CriteriaOperators.Equal, productMainGroupTbl[0].id));

        if (productMainGroupTbl.Count == 1)
        {
            // - Product Name
            //titleBigHtml.InnerText = productTbl[0].productName;
            
            // - Product Group
            productGrpHtml.InnerText = productMainGroupTbl[0].groupName;
            
            // - Product Sub Group
            //if (productSubGroupTbl.Count > 0)
            //    titleSmall2Html.InnerText += productSubGroupTbl[0].subGrpName;
        }

        #endregion

        #region product pictures
        
        string productPicStr = string.Empty;
        tblProductPicsCollection productPicTbl = new tblProductPicsCollection();
        productPicTbl.ReadList(Criteria.NewCriteria(tblProductPics.Columns.productId, CriteriaOperators.Equal, productTbl[0].id));

        #region product main pics


        if (productTbl[0].productCoverPicAdd.Length > 0 && productTbl[0].productCoverPicName.Length > 0)
        {
            productPicStr += "<figure class='product-gallery__image zoom'>"+
                             "<img src='"+ productTbl[0].productCoverPicAdd + productTbl[0].productCoverPicName + "' alt='"+ productTbl[0].productName+ "'>"+
                             "</figure>";
        }

        for (int i = 0; i < productPicTbl.Count; i++)
        {
            productPicStr += "<figure class='product-gallery__image zoom'>" +
                             "<img src='" + productPicTbl[i].picAddr + productPicTbl[i].picName + "' alt='" + productTbl[0].productName + "'>" +
                             "</figure>";
        }

        productPictsHtml.InnerHtml = productPicStr;
        #endregion

        #region porduct pic thumbnail
        string productPicThumbStr = "";

        if (productTbl[0].productCoverPicAdd.Length > 0 && productTbl[0].productCoverPicName.Length > 0)
        {
            productPicThumbStr += "<figure class='product-gallery__nav-image--single'>" +
                                  "<img src='" + productTbl[0].productCoverPicAdd + productTbl[0].productCoverPicName + "' alt='" + productTbl[0].productName + "'></figure>";
        }

        for (int i = 0; i < productPicTbl.Count; i++)
        {
            productPicThumbStr += "<figure class='product-gallery__nav-image--single'>" +
                             "<img src='" + productPicTbl[i].picAddr + productPicTbl[i].picName + "' alt='" + productTbl[0].productName + "'>" +
                             "</figure>";
        }

        productPicThumbHtml.InnerHtml = productPicThumbStr;

        #endregion

        #region additinal pictures

        tblProductPicsCollection productSubPicTbl = new tblProductPicsCollection();
        productSubPicTbl.ReadList(Criteria.NewCriteria(tblProductPics.Columns.productId, CriteriaOperators.Equal, productTbl[0].id));

        productStr += "<div class='row'>";

        for (int i = 0; i < productSubPicTbl.Count; i++)
        {
            if (counter == 3)
                productStr += "</div><div class='sub-pic-row row-space row'>";

            productStr += "<div class='col-md-4 col-sm-4 col-xs-4'><div class='image-wrap entry'>" +
                                "<img src='"+ productSubPicTbl[i].picAddr + productSubPicTbl[i].picName + "' alt='" + productTbl[0].productName + "' class='img-responsive'>" +
                                "<div class='magnifier'><a rel='prettyPhoto[inline]' href='" + productSubPicTbl[i].picAddr + productSubPicTbl[i].picName + "' title='" + productTbl[0].productName + "'>" +
                                "<i class='fa fa-play-circle-o' aria-hidden='true'></i></a></div>" +
                                "</div></div>";
            counter++;
        }
        productStr += "</div>";

        //productSubPicHtml.InnerHtml = productStr;

        #endregion

        #endregion

        #region product general details

        string productDetStr = "<div class='product-rating d-flex mb--20'>" +
                        "<div class='star-rating star-four'><span>Rated <strong class='rating'>5.00</strong> out of 5</span></div></div>" +
                        "<h3 class='product-title mb--20'>" + productTbl[0].productName + "</h3>" +
                        "<p class='product-short-description mb--20'>" + productTbl[0].productDet + "</p>";

        if (productTbl[0].productPrice > 0)
        {
            productDetStr += "<div class='product-price-wrapper mb--25'><span class='money'>$" + productTbl[0].productPrice + "</span></div>";
        }
        productDetStr += "<div class='variation-form mb--20'>";

        if (productDetTbl[0].productCode.Length > 0)
        {
            productDetStr += "<div class='product-size-variations d-flex align-items-center mb--15'>" +
                "<p class='variation-label'>Product Code:</p><div class='product-size-variation variation-wrapper'><span>" + productDetTbl[0].productCode + "</span></div>";
        }


        productDetStr += "</div></div>";

        //productDetStr += "<div class='product-action d-flex flex-sm-row align-items-sm-center flex-column align-items-start mb--30'>" +
        //               "<div class='quantity-wrapper d-flex align-items-center mr--30 mr-xs--0 mb-xs--30'>" +
        //               "<label class='quantity-label' for='qty'>Quantity:</label><div class='quantity'>" +
        //               "<input type='number' class='quantity-input' name='qty' id='qty' value='1' min='1'><div class='dec qtybutton'>-</div><div class='inc qtybutton'>+</div></div></div>" +
        //               "<button type='button' id=" + productTbl[0].id + " class='btn btn-small btn-bg-red btn-color-white btn-hover-2' onclick='addToCard(" + productTbl[0].id + ")'>Add To Cart</button></div>";

        productDetStr += "<div class='product-footer-meta'><p><span>Category:</span>" +
                       "<a href='products.aspx?mainCat="+ productMainGroupTbl[0].id + "'>" + productMainGroupTbl[0].groupName + "</a>";
        if (productMainGroupTbl[0].subGroup == "1")
            productDetStr += "," +
                       "<a href='products.aspx?subCat="+ productSubGroupTbl[0].id + "'>" + productSubGroupTbl[0].subGrpName + "</a>";

        productDetStr += "</p></div>";


        productDetHtml.InnerHtml = productDetStr;

        #endregion

        #region Tabs

        #region Tab1

        string tab1DetStr = "";
        tab1DetStr = productDetTbl[0].details;
        tab1DetHtml.InnerHtml = tab1DetStr;

        #endregion

        #region spec (tab2)

        //Tab 2
        string tab2DetStr = "";
        tblProductSpecCollection productSpecTbl = new tblProductSpecCollection();
        productSpecTbl.ReadList(Criteria.NewCriteria(tblProductSpec.Columns.productId, CriteriaOperators.Equal, productTbl[0].id));

        for (int i = 0; i < productSpecTbl.Count; i++)
        {
            tab2DetStr += "<tr><th>" + productSpecTbl[i].specTitle + "</th><td>" + productSpecTbl[i].specDet + "</td></tr>";
        }

        tab2DetHtml.InnerHtml = tab2DetStr;

        #endregion

        #region product review/tag (tab3)

        //Tab 3


        #endregion

        #endregion

        #region related products

        productStr = "";
        if (productSubGroupTbl.Count > 0)
            productTbl.ReadList(Criteria.NewCriteria(tblProduct.Columns.productSubGrpId, CriteriaOperators.Equal, productTbl[0].productSubGrpId));
        else
            productTbl.ReadList(Criteria.NewCriteria(tblProduct.Columns.productGrpId, CriteriaOperators.Equal, productTbl[0].productGrpId));

        int step = 0;
        if (productTbl.Count > 4)
            step = 4;
        else
            step = productTbl.Count;

        Random ran = new Random();

        for (int i = 0; i < step; i++)
        {
            int ranNext = ran.Next(0, step);
            productStr += "<div class='col-md-3'><div class='course-box shop-wrapper'>" +
                          "<div class='image-wrap entry'><img src='" + productTbl[ranNext].productCoverPicAdd + productTbl[ranNext].productCoverPicName + "' alt='" + productTbl[ranNext].productName + "' class='img-responsive'></div>" +
                          "<div class='course-details shop-box text-center'><h4>" +
                          "<a href='product-details.aspx?productCode=" + productTbl[ranNext].id + "' title='" + productTbl[ranNext].productName + "'>" + productTbl[ranNext].productName + "</a>" +
                          "<small>" + productMainGroupTbl[0].groupName + "</small>" +
                          "</h4></div></div></div>";
        }

        //relatedProductHtml.InnerHtml = productStr;

        #endregion

        #region read items in the basket (Unnecesary)

        //int itemID = 0 , itemQTY = 0;
        //if (Request.Cookies["itemValues"] != null)
        //{
        //    string productValues = Request.Cookies["itemValues"].Value;
        //    int indexOfChar = productValues.IndexOf(",");

        //    itemID = Convert.ToInt32(productValues.Substring(0, indexOfChar));
        //    itemQTY = Convert.ToInt32(productValues.Substring(indexOfChar + 1, productValues.Length - 1 - indexOfChar));
        //}


        #endregion

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {

        #region create temp customer number
        int customerIDCookie = 0;
        int num = 0;

        tblCustomerGuestCollection checkCustomerNumTbl = new tblCustomerGuestCollection();
        //tblCustomerGuestCollection checkCustomerNumTbl = new tblCustomerGuestCollection();

        if (Request.Cookies["customerID"] != null)
        {
            customerIDCookie = Convert.ToInt32(Request.Cookies["customerID"].Value);
        }
        else
        {


            Random ranNumber = new Random();
            num = ranNumber.Next(1000000, 9999999);


            #region check uniqueness of customer ID

            checkCustomerNumTbl.ReadList(Criteria.NewCriteria(tblCustomerGuest.Columns.customerID,CriteriaOperators.Equal, num));

            while (checkCustomerNumTbl.Count > 0)
            {
                num = ranNumber.Next(1000000, 9999999);
                checkCustomerNumTbl.ReadList(Criteria.NewCriteria(tblCustomerGuest.Columns.customerID, CriteriaOperators.Equal, num));
            }

            #endregion 

            HttpCookie customerID = new HttpCookie("customerID");
            DateTime now = DateTime.Now;

            customerID.Value = num.ToString();
            customerID.Expires = now.AddHours(3);

            Response.Cookies.Add(customerID);
        }

        #endregion

        #region add item to basket

        //tblCustomerGuestCollection customerGesutUpdateTbl = new tblCustomerGuestCollection();
        tblCustomerGuestCollection customerGesutUpdateTbl = new tblCustomerGuestCollection();

        tblCustomerGuest customerGesutTbl = new tblCustomerGuest();
        tblCustomerGuestItems customerGuestItemTbl = new tblCustomerGuestItems();
        
        #region get product id

        int productCode = 0;
        if (Request.QueryString["productId"] != null)
        {
            productCode = int.Parse(Request.QueryString["productId"]);
        }

        #endregion

        customerGesutUpdateTbl.ReadList(Criteria.NewCriteria(tblCustomerGuest.Columns.customerID ,CriteriaOperators.Equal, customerIDCookie));

        if (customerGesutUpdateTbl.Count > 0)
        {

            #region add item to the basket

            customerGuestItemTbl.guestID = customerGesutUpdateTbl[0].id;
            customerGuestItemTbl.ProductID = productCode;
            customerGuestItemTbl.QTY = Convert.ToInt32(qtyHtml.Value);

            customerGuestItemTbl.Create();

            #endregion

        }
        else
        {
            #region create cutomer ID

            customerGesutTbl.customerID = num;
            customerGesutTbl.customerName = "";
            customerGesutTbl.customerfName = "";
            customerGesutTbl.customerEmail = "";
            customerGesutTbl.customerTel = "";
            customerGesutTbl.customerAddr = "";
            customerGesutTbl.customerNote = "";
            customerGesutTbl.customerOrderDate = DateTime.Now.ToString("yyyy/MM/dd");
            customerGesutTbl.allow = "0";


            customerGesutTbl.Create();

            #endregion

            #region add item to the basket

            customerGesutUpdateTbl.ReadList();

            customerGuestItemTbl.guestID = customerGesutUpdateTbl[customerGesutUpdateTbl.Count - 1].id;
            customerGuestItemTbl.ProductID = productCode;
            customerGuestItemTbl.QTY = Convert.ToInt32(qtyHtml.Value);

            customerGuestItemTbl.Create();

            #endregion

        }

        #endregion

        Response.Redirect("product-details.aspx?productId=" + productCode);

    }
}