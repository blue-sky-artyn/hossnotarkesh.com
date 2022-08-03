<%@ Page Title="" Language="C#" MasterPageFile="~/footer.master" AutoEventWireup="true" CodeFile="email-conf.aspx.cs" Inherits="product_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceFooterHead" Runat="Server">
    <style>
        .email-approval {
            font-size: 1.5rem;
            width: 90%;
            color: #7a716a;
        }
    </style>    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceFooterBody" Runat="Server">
       <!-- Breadcrumb area Start -->
        <div class="breadcrumb-area bg-color ptb--90" data-bg-color="#f6f6f6">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="d-flex justify-content-between align-items-center flex-sm-row flex-column">
                            <h1 class="page-title">User Approval</h1>
                            <ul class="breadcrumb">
                                <li><a href="default.aspx">Home</a></li>
                                <li id="mainGrpHtml" runat="server" class="current"><span>Email Approval</span></li>
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
                                <div class="row">
                                    <div class="col-xl-4 col-sm-6 mb--50">
                                        <p class="email-approval" id="approvedEmailHtml" runat="server" ></p>   
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

