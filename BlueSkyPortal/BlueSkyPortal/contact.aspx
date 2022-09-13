<%@ Page Title="" Language="C#" MasterPageFile="~/SingleMaster.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        div .row {
            margin-left: -0.6rem;
            margin-right: -0.6rem;
        }

            div .row [class*=col] {
                padding-left: 0.6rem;
                padding-right: 0.6rem;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section data-bs-version="5.1" class="form5 cid-t6WED7UAns" id="form5-v">


        <div class="container">
            <div class="mbr-section-head">
                <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2">
                    <strong></strong>
                </h3>

            </div>
            <div class="row justify-content-center mt-4">
                <div class="col-lg-8 mx-auto mbr-form" data-form-type="formoid">
                    <div class="mbr-form form-with-styler" data-form-title="Form Name">
                        <input type="hidden" name="email" data-form-email="true" value="X5fXxAuFCJbbE+j0u1vYZMmQTrr0ILfbFcn5TKzakRDPvGdQMI2klsTrTtLZ2kwjmfgnqE0Wkh1Gf2eZf60/yhEzzXDy3ArqpoT0BphM5ETPjmplUb6pO2EcjQMowe/n">
                        <div class="row">
                            <div hidden="hidden" data-form-alert="" class="alert alert-success col-12">Thanks for filling out the form!</div>
                            <div hidden="hidden" data-form-alert-danger="" class="alert alert-danger col-12">
                                Oops...! some problem!
                       
                            </div>
                        </div>
                        <div class="dragArea row">
                            <div class="col-md col-sm-12 form-group mb-3" data-for="name">
                                <input id="nameInputHtml" runat="server" type="text" name="name" placeholder="Name" data-form-field="name" class="form-control" value="" >
                            </div>
                            <div class="col-md col-sm-12 form-group mb-3" data-for="email">
                                <input id="emailInputHtml" runat="server" type="email" name="email" placeholder="E-mail" data-form-field="email" class="form-control" value="" >
                            </div>
                            <div class="col-12 form-group mb-3" data-for="text">
                                <input id="subjectInputHtml" runat="server" type="text" name="text" placeholder="Complimentary Discovery Call" data-form-field="text" class="form-control" value="Complimentary Discovery Call">
                            </div>
                            <div class="col-12 form-group mb-3" data-for="textarea">
                                <textarea id="msgInputHtml" runat="server" name="textarea" placeholder="Message" data-form-field="textarea" class="form-control" ></textarea>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 align-center mbr-section-btn">
                                <asp:Button ID="btnSend" runat="server" class="btn btn-primary display-4" Text="Send message" OnClick="btnSend_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section data-bs-version="5.1" class="contacts2 cid-t6WEr2mcoJ" id="contacts2-u">
        <!---->

        <div class="container">
            <div class="mbr-section-head">
                <h3 class="mbr-section-title mbr-fonts-style align-center mb-0 display-2">
                    <strong>Contacts</strong>
                </h3>

            </div>
            <div class="row justify-content-center mt-4">
                <div class="card col-12 col-md-6">
                    <div class="card-wrapper">
                        <div class="image-wrapper">
                            <span class="mbr-iconfont mobi-mbri-letter mobi-mbri"><i class="fa fa-phone" aria-hidden="true"></i></span>
                        </div>
                        <div class="text-wrapper">
                            <h6 class="card-title mbr-fonts-style mb-1 display-5">
                                <strong>Phone</strong>
                            </h6>
                            <p class="mbr-text mbr-fonts-style display-7">
                                <a id="telHtml" runat="server" href="tel:+12345678910" class="text-primary">0 (800) 123 45 67</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="card col-12 col-md-6">
                    <div class="card-wrapper">
                        <div class="image-wrapper">
                            <span class="mbr-iconfont mobi-mbri-letter mobi-mbri"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                        </div>
                        <div class="text-wrapper">
                            <h6 class="card-title mbr-fonts-style mb-1 display-5">
                                <strong>Email</strong>
                            </h6>
                            <p class="mbr-text mbr-fonts-style display-7">
                                <a id="emailHtml" runat="server" href="mailto:info@site.com" class="text-primary">info@site.com</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="card col-12 col-md-6">
                    <div class="card-wrapper">
                        <div class="image-wrapper">
                            <span class="mbr-iconfont mobi-mbri-globe mobi-mbri"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                        </div>
                        <div class="text-wrapper">
                            <h6 class="card-title mbr-fonts-style mb-1 display-5">
                                <strong>Address</strong>
                            </h6>
                            <p id="addrHtml" runat="server" class="mbr-text mbr-fonts-style display-7">
                                4100 Ross Street, Okawville, IL
                       
                            </p>
                        </div>
                    </div>
                </div>
                <div id="workingHrsShowHtml" runat="server" class="card col-12 col-md-6">
                    <div class="card-wrapper">
                        <div class="image-wrapper">
                            <span class="mbr-iconfont mobi-mbri-bulleted-list mobi-mbri"><i class="fa fa-hourglass-o" aria-hidden="true"></i></span>
                        </div>
                        <div class="text-wrapper">
                            <h6 class="card-title mbr-fonts-style mb-1 display-5">
                                <strong>Working Hours</strong>
                            </h6>
                            <p id="workingHrsHtml" runat="server" class="mbr-text mbr-fonts-style display-7">
                                9:00 - 18:00
                       
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section data-bs-version="5.1" class="map2 cid-t6WEmEiw34" id="map2-t">
        <div>
            <div class="google-map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d11025.740153452287!2d-79.456468!3d46.301197!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x1a1aa9f1a7e1a18f!2sHoss%20Notarkesh%20Executive%20Business%20Coaching!5e0!3m2!1sen!2sca!4v1659661610414!5m2!1sen!2sca" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" frameborder="0" ></iframe>
            </div>
        </div>
    </section>

</asp:Content>

