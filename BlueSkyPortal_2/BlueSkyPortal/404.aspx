<%@ Page Title="" Language="C#" MasterPageFile="~/footer.master" AutoEventWireup="true" CodeFile="404.aspx.cs" Inherits="_404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceFooterHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceFooterBody" Runat="Server">
    <!-- Main Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="error-area pt--90 pb--100">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-7 col-lg-8 text-center">
                            <div class="error">
                                <h1>404</h1>
                                <h2>OPPS! PAGE NOT BE FOUND</h2>
                                <p>Sorry but the page you are looking for does not exist, have been removed, name changed or is temporarity unavailable.</p>
                                <form action="#" class="searchform-2 mb--60">
                                    <input type="text" name="search" id="error_search" placeholder="Search..." class="searchform-2__input">
                                    <button type="submit" class="searchform-2__submit">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </form>
                                <a href="index.html" class="btn btn-bg-red btn-color-white btn-hover-2">Back to home page</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Wrapper End -->
</asp:Content>

