<%@ Page Title="" Language="C#" MasterPageFile="~/footer.master" AutoEventWireup="true" CodeFile="contact-us.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceFooterHead" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceFooterBody" Runat="Server">
        <!-- Breadcrumb area Start -->
        <div class="breadcrumb-area bg-color ptb--90" data-bg-color="#f6f6f6">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="d-flex justify-content-between align-items-center flex-sm-row flex-column">
                            <h1 class="page-title">Contact Us</h1>
                            <ul class="breadcrumb">
                                <li><a href="Default.aspx">Home</a></li>
                                <li class="current"><span>Contact Us</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div id="content" class="main-content-wrapper">
            <div class="page-content-inner pt--75">
                <div class="container">
                    <div class="row pb--80"> 
                        <div class="col-md-7 mb-sm--30">
                            <h2 class="heading__secondary mb--50 mb-md--35 mb-sm--20">Get in touch</h2>

                            <!-- Contact form Start Here -->
                            <form class="form">
                                <div class="form__group mb--20">
                                    <input type="text" id="txtName" runat="server" name="contact_name" class="form__input form__input--2" placeholder="Your name*">
                                </div>
                                <div class="form__group mb--20">
                                    <input type="email" id="txtEmail" runat="server" name="contact_email" class="form__input form__input--2" placeholder="Email Address*">
                                </div>
                                <div class="form__group mb--20">
                                    <input type="text" id="txtPhone" runat="server" name="contact_phone" class="form__input form__input--2" placeholder="Your Phone*">
                                </div>
                                <div class="form__group mb--20">
                                    <textarea class="form__input form__input--textarea" id="txtDetails" runat="server" name="contact_message" placeholder="Message*"></textarea>
                                </div>
                                <div class="form__group">
                                    <p id="lblErrorHtml" runat="server" class="error-msg"></p>
                                    <asp:Button ID="btnSend" runat="server" CssClass="btn-submit" Text="Send Now" OnClick="btnSend_Click" />
                                </div>
                                <div class="form__output"></div>
                            </form>
                            <!-- Contact form end Here -->

                        </div>
                        <div class="col-md-5 pl--50 pl-sm--30">
                            <h2 class="heading__secondary mb--50">Contact info</h2>
                            
                            <!-- Contact info widget start here -->
                            <div class="contact-info-widget mb--45">
                                <div class="contact-info">
                                    <h3 class="heading__tertiary">Postal Address</h3>
                                    <p id="coAddrHtml" runat="server">PO Box 16122 Collins Street West <br> Victoria 8007 Australia</p>
                                </div>
                            </div>
                            <!-- Contact info widget end here -->

                            <!-- Contact info widget start here -->
                            <div class="contact-info-widget two-column-list sm-one-column mb--45">
                                <div class="contact-info mb-sm--35">
                                    <h3 class="heading__tertiary">Business Phone</h3>
                                    <a id="coTelHtml" runat="server" href="">+61 3 8376 6284</a>
                                </div>
                                <div class="contact-info">
                                    <h3 class="heading__tertiary">Say Hello</h3>
                                    <a id="coEmailHtml" runat="server" href="mailto:info@la-studioweb.com">info@la-studioweb.com</a>
                                </div>
                            </div>
                            <!-- Contact info widget end here -->

                            <!-- Contact info widget start here -->
                            <div class="contact-info-widget sm-one-column mb--45">
                                <div class="contact-info mb-sm--35">
                                    <h3 class="heading__tertiary">Working Hours</h3>
                                    <ul id="workigHrs" runat="server" class="working-hrs">
                                        <li><p>Monday 10:30 AM - 7:00 PM</p></li>
                                        <li><p>Monday 10:30 AM - 7:00 PM</p></li>
                                        <li><p>Monday 10:30 AM - 7:00 PM</p></li>
                                        <li><p>Monday 10:30 AM - 7:00 PM</p></li>
                                        <li><p>Monday 10:30 AM - 7:00 PM</p></li>
                                        <li><p>Monday 10:30 AM - 7:00 PM</p></li>
                                    </ul>
                                </div>
                            </div>
                            <!-- Contact info widget end here -->

                            <!-- Social Icons Start Here -->
                            <ul id="socialHtml" runat="server" class="social social-sharing">
                                <li class="social__item">
                                    <a href="twitter.com" class="social__link twitter">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                </li>
                                <li class="social__item">
                                    <a href="plus.google.com" class="social__link google-plus">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                </li>
                                <li class="social__item">
                                    <a href="facebook.com" class="social__link facebook">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                </li>
                                <li class="social__item">
                                    <a href="instagram.com" class="social__link instagram">
                                    <i class="fa fa-instagram"></i>
                                    </a>
                                </li>
                            </ul>
                            <!-- Social Icons End Here -->
                        </div>
                    </div>
                </div>
                <div class="container-fluid p-0">
                    <div class="row no-gutters">
                        <div class="col-12">
                            <div id="google-map">
                                <iframe id="coGoogleMapHtml" runat="server" src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d1438.1344395715666!2d-79.4376884!3d43.8709804!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sca!4v1632109376623!5m2!1sen!2sca" width="100%" height="300" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main Content Wrapper Start -->

</asp:Content>

