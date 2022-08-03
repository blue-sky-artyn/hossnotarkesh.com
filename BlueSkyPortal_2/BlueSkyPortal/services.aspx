<%@ Page Title="" Language="C#" MasterPageFile="~/footer.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="product_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceFooterHead" Runat="Server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceFooterBody" Runat="Server">
       <!-- Breadcrumb area Start -->
        <div class="breadcrumb-area bg-color ptb--90" data-bg-color="#f6f6f6">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="d-flex justify-content-between align-items-center flex-sm-row flex-column">
                            <h1 class="page-title">Services</h1>
                            <ul class="breadcrumb">
                                <li><a href="default.aspx">Home</a></li>
                                <li id="mainGrpHtml" runat="server" class="current"><span>Shop</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div  class="main-content-wrapper">
            <div class="shop-page-wrapper ptb--80">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-9 col-lg-8 mb-md--50">
                            
                            <div class="shop-products list">
                                <div id="servicesHtml" runat="server" class="row">
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="zakas-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-13.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="flaticon flaticon-eye"></i>
                                                        </a>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--25">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="zakas-product-action-list mb--20">
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="zakas-product-action-list d-flex">
                                                        <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="flaticon flaticon-like"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="zakas-product">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-14.jpg" alt="Products">
                                                    </a>
                                                    <div class="zakas-product-action">
                                                        <div class="product-action d-flex">
                                                            <div class="product-size">
                                                                <a href="" class="action-btn">
                                                                    <span class="current">XL</span>
                                                                </a>
                                                                <div class="product-size-swatch">
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        L
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        M
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        S
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="product-color">
                                                                <a href="" class="action-btn">
                                                                    <span class="current abbey">Abbey</span>
                                                                </a>
                                                                <div class="product-color-swatch">
                                                                    <span class="product-color-swatch-btn blue variation-btn">
                                                                        Blue
                                                                    </span>
                                                                    <span class="product-color-swatch-btn copper variation-btn">
                                                                        Copper
                                                                    </span>
                                                                    <span class="product-color-swatch-btn old-rose variation-btn">
                                                                        Old Rose
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="flaticon flaticon-like"></i>
                                                            </a>
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                                <i class="flaticon flaticon-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--15">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="product-price-wrapper mb--30">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="zakas-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-14.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="flaticon flaticon-eye"></i>
                                                        </a>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--25">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="zakas-product-action-list mb--20">
                                                        <div class="product-size mb--25">
                                                            <div class="product-size-swatch">
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="zakas-product-action-list d-flex">
                                                        <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="flaticon flaticon-like"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="zakas-product">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-15.jpg" alt="Products">
                                                    </a>
                                                    <div class="zakas-product-action">
                                                        <div class="product-action d-flex">
                                                            <div class="product-size">
                                                                <a href="" class="action-btn">
                                                                    <span class="current">XL</span>
                                                                </a>
                                                                <div class="product-size-swatch">
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        L
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        M
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        S
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="product-color">
                                                                <a href="" class="action-btn">
                                                                    <span class="current abbey">Abbey</span>
                                                                </a>
                                                                <div class="product-color-swatch">
                                                                    <span class="product-color-swatch-btn blue variation-btn">
                                                                        Blue
                                                                    </span>
                                                                    <span class="product-color-swatch-btn copper variation-btn">
                                                                        Copper
                                                                    </span>
                                                                    <span class="product-color-swatch-btn old-rose variation-btn">
                                                                        Old Rose
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="flaticon flaticon-like"></i>
                                                            </a>
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                                <i class="flaticon flaticon-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <span class="product-badge">New</span>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--15">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="product-price-wrapper mb--30">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="zakas-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-15.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="flaticon flaticon-eye"></i>
                                                        </a>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--25">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="zakas-product-action-list mb--20">
                                                        <div class="product-size mb--25">
                                                            <div class="product-size-swatch">
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="zakas-product-action-list d-flex">
                                                        <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="flaticon flaticon-like"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="zakas-product">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-2.jpg" alt="Products">
                                                    </a>
                                                    <div class="zakas-product-action">
                                                        <div class="product-action d-flex">
                                                            <div class="product-size">
                                                                <a href="" class="action-btn">
                                                                    <span class="current">XL</span>
                                                                </a>
                                                                <div class="product-size-swatch">
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        L
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        M
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        S
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="product-color">
                                                                <a href="" class="action-btn">
                                                                    <span class="current abbey">Abbey</span>
                                                                </a>
                                                                <div class="product-color-swatch">
                                                                    <span class="product-color-swatch-btn blue variation-btn">
                                                                        Blue
                                                                    </span>
                                                                    <span class="product-color-swatch-btn copper variation-btn">
                                                                        Copper
                                                                    </span>
                                                                    <span class="product-color-swatch-btn old-rose variation-btn">
                                                                        Old Rose
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="flaticon flaticon-like"></i>
                                                            </a>
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                                <i class="flaticon flaticon-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <span class="product-badge">New</span>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--15">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="product-price-wrapper mb--30">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="zakas-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-3.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="flaticon flaticon-eye"></i>
                                                        </a>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--25">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="zakas-product-action-list mb--20">
                                                        <div class="product-size mb--25">
                                                            <div class="product-size-swatch">
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="zakas-product-action-list d-flex">
                                                        <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="flaticon flaticon-like"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="zakas-product">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-3.jpg" alt="Products">
                                                    </a>
                                                    <div class="zakas-product-action">
                                                        <div class="product-action d-flex">
                                                            <div class="product-size">
                                                                <a href="" class="action-btn">
                                                                    <span class="current">XL</span>
                                                                </a>
                                                                <div class="product-size-swatch">
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        L
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        M
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        S
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="product-color">
                                                                <a href="" class="action-btn">
                                                                    <span class="current abbey">Abbey</span>
                                                                </a>
                                                                <div class="product-color-swatch">
                                                                    <span class="product-color-swatch-btn blue variation-btn">
                                                                        Blue
                                                                    </span>
                                                                    <span class="product-color-swatch-btn copper variation-btn">
                                                                        Copper
                                                                    </span>
                                                                    <span class="product-color-swatch-btn old-rose variation-btn">
                                                                        Old Rose
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="flaticon flaticon-like"></i>
                                                            </a>
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                                <i class="flaticon flaticon-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--15">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="product-price-wrapper mb--30">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="zakas-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-17.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="flaticon flaticon-eye"></i>
                                                        </a>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--25">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="zakas-product-action-list mb--20">
                                                        <div class="product-size mb--25">
                                                            <div class="product-size-swatch">
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="zakas-product-action-list d-flex">
                                                        <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="flaticon flaticon-like"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="zakas-product">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-25.jpg" alt="Products">
                                                    </a>
                                                    <div class="zakas-product-action">
                                                        <div class="product-action d-flex">
                                                            <div class="product-size">
                                                                <a href="" class="action-btn">
                                                                    <span class="current">XL</span>
                                                                </a>
                                                                <div class="product-size-swatch">
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        L
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        M
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        S
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="product-color">
                                                                <a href="" class="action-btn">
                                                                    <span class="current abbey">Abbey</span>
                                                                </a>
                                                                <div class="product-color-swatch">
                                                                    <span class="product-color-swatch-btn blue variation-btn">
                                                                        Blue
                                                                    </span>
                                                                    <span class="product-color-swatch-btn copper variation-btn">
                                                                        Copper
                                                                    </span>
                                                                    <span class="product-color-swatch-btn old-rose variation-btn">
                                                                        Old Rose
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="flaticon flaticon-like"></i>
                                                            </a>
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                                <i class="flaticon flaticon-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <span class="product-badge">-15%</span>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--15">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="product-price-wrapper mb--30">
                                                        <span class="old-price">
                                                            <span class="money">$300</span>
                                                        </span>
                                                        <span class="money-separator">-</span>
                                                        <span class="new-price">
                                                            <span class="money">$150</span>
                                                        </span>
                                                    </div>
                                                    <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="zakas-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-25.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="flaticon flaticon-eye"></i>
                                                        </a>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--25">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="zakas-product-action-list mb--20">
                                                        <div class="product-size mb--25">
                                                            <div class="product-size-swatch">
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="zakas-product-action-list d-flex">
                                                        <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="flaticon flaticon-like"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="zakas-product">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-26.jpg" alt="Products">
                                                    </a>
                                                    <div class="zakas-product-action">
                                                        <div class="product-action d-flex">
                                                            <div class="product-size">
                                                                <a href="" class="action-btn">
                                                                    <span class="current">XL</span>
                                                                </a>
                                                                <div class="product-size-swatch">
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        L
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        M
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        S
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="product-color">
                                                                <a href="" class="action-btn">
                                                                    <span class="current abbey">Abbey</span>
                                                                </a>
                                                                <div class="product-color-swatch">
                                                                    <span class="product-color-swatch-btn blue variation-btn">
                                                                        Blue
                                                                    </span>
                                                                    <span class="product-color-swatch-btn copper variation-btn">
                                                                        Copper
                                                                    </span>
                                                                    <span class="product-color-swatch-btn old-rose variation-btn">
                                                                        Old Rose
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="flaticon flaticon-like"></i>
                                                            </a>
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                                <i class="flaticon flaticon-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--15">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="product-price-wrapper mb--30">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="zakas-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-26.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="flaticon flaticon-eye"></i>
                                                        </a>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--25">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="zakas-product-action-list mb--20">
                                                        <div class="product-size mb--25">
                                                            <div class="product-size-swatch">
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="zakas-product-action-list d-flex">
                                                        <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="flaticon flaticon-like"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="zakas-product">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-27.jpg" alt="Products">
                                                    </a>
                                                    <div class="zakas-product-action">
                                                        <div class="product-action d-flex">
                                                            <div class="product-size">
                                                                <a href="" class="action-btn">
                                                                    <span class="current">XL</span>
                                                                </a>
                                                                <div class="product-size-swatch">
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        L
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        M
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        S
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="product-color">
                                                                <a href="" class="action-btn">
                                                                    <span class="current abbey">Abbey</span>
                                                                </a>
                                                                <div class="product-color-swatch">
                                                                    <span class="product-color-swatch-btn blue variation-btn">
                                                                        Blue
                                                                    </span>
                                                                    <span class="product-color-swatch-btn copper variation-btn">
                                                                        Copper
                                                                    </span>
                                                                    <span class="product-color-swatch-btn old-rose variation-btn">
                                                                        Old Rose
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="flaticon flaticon-like"></i>
                                                            </a>
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                                <i class="flaticon flaticon-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--15">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="product-price-wrapper mb--30">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="zakas-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-27.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="flaticon flaticon-eye"></i>
                                                        </a>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--25">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="zakas-product-action-list mb--20">
                                                        <div class="product-size mb--25">
                                                            <div class="product-size-swatch">
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="zakas-product-action-list d-flex">
                                                        <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="flaticon flaticon-like"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="zakas-product">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-28.jpg" alt="Products">
                                                    </a>
                                                    <div class="zakas-product-action">
                                                        <div class="product-action d-flex">
                                                            <div class="product-size">
                                                                <a href="" class="action-btn">
                                                                    <span class="current">XL</span>
                                                                </a>
                                                                <div class="product-size-swatch">
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        L
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        M
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        S
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="product-color">
                                                                <a href="" class="action-btn">
                                                                    <span class="current abbey">Abbey</span>
                                                                </a>
                                                                <div class="product-color-swatch">
                                                                    <span class="product-color-swatch-btn blue variation-btn">
                                                                        Blue
                                                                    </span>
                                                                    <span class="product-color-swatch-btn copper variation-btn">
                                                                        Copper
                                                                    </span>
                                                                    <span class="product-color-swatch-btn old-rose variation-btn">
                                                                        Old Rose
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="flaticon flaticon-like"></i>
                                                            </a>
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                                <i class="flaticon flaticon-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <span class="product-badge">New</span>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--15">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="product-price-wrapper mb--30">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="zakas-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-28.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="flaticon flaticon-eye"></i>
                                                        </a>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--25">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="zakas-product-action-list mb--20">
                                                        <div class="product-size mb--25">
                                                            <div class="product-size-swatch">
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="zakas-product-action-list d-flex">
                                                        <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="flaticon flaticon-like"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="zakas-product">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-29.jpg" alt="Products">
                                                    </a>
                                                    <div class="zakas-product-action">
                                                        <div class="product-action d-flex">
                                                            <div class="product-size">
                                                                <a href="" class="action-btn">
                                                                    <span class="current">XL</span>
                                                                </a>
                                                                <div class="product-size-swatch">
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        L
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        M
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        S
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="product-color">
                                                                <a href="" class="action-btn">
                                                                    <span class="current abbey">Abbey</span>
                                                                </a>
                                                                <div class="product-color-swatch">
                                                                    <span class="product-color-swatch-btn blue variation-btn">
                                                                        Blue
                                                                    </span>
                                                                    <span class="product-color-swatch-btn copper variation-btn">
                                                                        Copper
                                                                    </span>
                                                                    <span class="product-color-swatch-btn old-rose variation-btn">
                                                                        Old Rose
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="flaticon flaticon-like"></i>
                                                            </a>
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                                <i class="flaticon flaticon-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--15">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="product-price-wrapper mb--30">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="zakas-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-29.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="flaticon flaticon-eye"></i>
                                                        </a>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--25">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="zakas-product-action-list mb--20">
                                                        <div class="product-size mb--25">
                                                            <div class="product-size-swatch">
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="zakas-product-action-list d-flex">
                                                        <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="flaticon flaticon-like"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="zakas-product">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-30.jpg" alt="Products">
                                                    </a>
                                                    <div class="zakas-product-action">
                                                        <div class="product-action d-flex">
                                                            <div class="product-size">
                                                                <a href="" class="action-btn">
                                                                    <span class="current">XL</span>
                                                                </a>
                                                                <div class="product-size-swatch">
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        L
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        M
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        S
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="product-color">
                                                                <a href="" class="action-btn">
                                                                    <span class="current abbey">Abbey</span>
                                                                </a>
                                                                <div class="product-color-swatch">
                                                                    <span class="product-color-swatch-btn blue variation-btn">
                                                                        Blue
                                                                    </span>
                                                                    <span class="product-color-swatch-btn copper variation-btn">
                                                                        Copper
                                                                    </span>
                                                                    <span class="product-color-swatch-btn old-rose variation-btn">
                                                                        Old Rose
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="flaticon flaticon-like"></i>
                                                            </a>
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                                <i class="flaticon flaticon-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <span class="product-badge">New</span>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--15">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="product-price-wrapper mb--30">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="zakas-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-30.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="flaticon flaticon-eye"></i>
                                                        </a>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--25">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="zakas-product-action-list mb--20">
                                                        <div class="product-size mb--25">
                                                            <div class="product-size-swatch">
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="zakas-product-action-list d-flex">
                                                        <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="flaticon flaticon-like"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <div class="zakas-product">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-19.jpg" alt="Products">
                                                    </a>
                                                    <div class="zakas-product-action">
                                                        <div class="product-action d-flex">
                                                            <div class="product-size">
                                                                <a href="" class="action-btn">
                                                                    <span class="current">XL</span>
                                                                </a>
                                                                <div class="product-size-swatch">
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        L
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        M
                                                                    </span>
                                                                    <span class="product-size-swatch-btn variation-btn">
                                                                        S
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="product-color">
                                                                <a href="" class="action-btn">
                                                                    <span class="current abbey">Abbey</span>
                                                                </a>
                                                                <div class="product-color-swatch">
                                                                    <span class="product-color-swatch-btn blue variation-btn">
                                                                        Blue
                                                                    </span>
                                                                    <span class="product-color-swatch-btn copper variation-btn">
                                                                        Copper
                                                                    </span>
                                                                    <span class="product-color-swatch-btn old-rose variation-btn">
                                                                        Old Rose
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <a href="wishlist.html" class="action-btn">
                                                                <i class="flaticon flaticon-like"></i>
                                                            </a>
                                                            <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                                <i class="flaticon flaticon-eye"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <span class="product-badge">New</span>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--15">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="product-price-wrapper mb--30">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="zakas-product-list">
                                            <div class="product-inner">
                                                <figure class="product-image">
                                                    <a href="product-details.html">
                                                        <img src="assets/img/products/prod-19.jpg" alt="Products">
                                                    </a>
                                                    <div class="product-thumbnail-action">
                                                        <a data-toggle="modal" data-target="#productModal" class="action-btn quick-view">
                                                            <i class="flaticon flaticon-eye"></i>
                                                        </a>
                                                    </div>
                                                </figure>
                                                <div class="product-info">
                                                    <h3 class="product-title mb--25">
                                                        <a href="product-details.html">Long Cartigen</a>
                                                    </h3>
                                                    <div class="zakas-product-action-list mb--20">
                                                        <div class="product-size mb--25">
                                                            <div class="product-size-swatch">
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    XL
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    L
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    M
                                                                </span>
                                                                <span class="product-size-swatch-btn variation-btn">
                                                                    S
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-color">
                                                            <div class="product-color-swatch">
                                                                <span class="product-color-swatch-btn variation-btn abbey">
                                                                    Abbey
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn blue">
                                                                    Blue
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn copper">
                                                                    Copper
                                                                </span>
                                                                <span class="product-color-swatch-btn variation-btn old-rose">
                                                                    Old Rose
                                                                </span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-price-wrapper mb--15 mb-sm--10">
                                                        <span class="money">$80</span>
                                                        <span class="money-separator">-</span>
                                                        <span class="money">$200</span>
                                                    </div>
                                                    <p class="product-short-description mb--20">
                                                        Donec accumsan auctor iaculis. Sed suscipit arcu ligula, at egestas magna molestie a. Proin ac ex maximus, ultrices justo eget, sodales orci. Aliquam egestas libero ac turpis pharetra
                                                    </p>  
                                                    <div class="zakas-product-action-list d-flex">
                                                        <a href="cart.html" class="btn btn-small btn-bg-sand btn-color-dark">Add To Cart</a>
                                                        <a href="wishlist.html" class="ml--20 action-btn">
                                                            <i class="flaticon flaticon-like"></i>
                                                        </a>
                                                    </div>                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4">
                            <aside class="shop-sidebar">
                                <div class="shop-widget mb--40">
                                    <h3 class="widget-title mb--25">Category</h3>
                                    <ul id="servicesGrpHtml" runat="server" class="widget-list category-list">
                                        <li>
                                            <a href="shop.html">
                                                <span class="category-title">Winter Collection</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span class="category-title">Women’s Clothes</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span class="category-title">Men’s Clothes</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span class="category-title">Kid’s Clothes</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span class="category-title">Uncategorized</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span class="category-title">Accessories</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="shop.html">
                                                <span class="category-title">New Arrival</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content Wrapper Start -->
</asp:Content>

