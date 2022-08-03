<%@ Page Title="" Language="C#" MasterPageFile="~/SingleMaster.master" AutoEventWireup="true" CodeFile="Bio.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .seperator-box {
            height: 315px;
            overflow: hidden;
        }

        .appo-times {
            padding: 0 0.7rem;
            font-size: 11px;
            font-weight: normal;
        }

        .appo-title {
        }
    </style>
    <style>
        .testimonial-second {
            font-size: 0.7rem;
            line-height: 12px;
            text-align: justify;
        }

        .card {
            border: none !important;
        }
        .bold-text {
            font-size: 4rem;
            line-height: 62px;
            margin: 3rem 0;
            letter-spacing: -3px;
        }
        .color-dark {
            color: black;
        }
        .reply-text {
            font-size: 14px !important;
            line-height: 23px !important;
        }
        .vice-signiture {
            font-size: 12px;
        }
        .vice-signiture-2 {
            font-weight: bold;
            font-size: 14px;
            background-color: black;
            padding: 5px;
            color: white;
        }
        .stroke-black-text-white{
            font-weight: bold;
            -webkit-text-stroke: 1px #4e4949;
            -webkit-text-fill-color: white;
            font-size: 24px;
        }
        .stroke-white-text-black{
            font-weight: bold;
            -webkit-text-stroke: 1px #4e4949;
            -webkit-text-fill-color: white;
            font-size: 24px;
        }
        
    </style>
    
                <style>
                    .avatar-placeholder {margin-bottom: 5rem;}
                    .avatar1 {
                        height: 100px;
                        overflow: hidden;
                        width: 10%;
                        margin: 0 auto;
                        border-radius: 50%;
                    }

                    .avatar {
                        display: inline-block;
                        width: 120px;
                        height: 120px;
                        margin-bottom: 1.6rem;
                        overflow: hidden;
                        border-radius: 50%;
                    }

                    .avatar-place {
                        width: 100%;
                    }

                    .avatar img {
                        width: 100%;
                        min-width: 100%;
                        min-height: 100%;
                    }

                    .content-avatar {
                        text-align: center;
                        margin-top: 2rem;
                    }

                    .centerize {
                        text-align: center;
                    }

                    .intro-avatar {
                        line-height: 7px;
                        margin-top: 2rem;
                    }

                    .name-avatar {
                        font-size: -0.2rem;
                    }

                    .post-avatar {
                        font-weight: bold;
                    }
                </style>
    <style>
        .small-timeline {
            font-size: 14px;
            padding: 1rem 1.5rem !important;
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">



    <%-- Text BOLD --%>
    <section class="step1 cid-t6qIEqrGsJ" id="step12-n">

    <div id="bioHtml" runat="server">
        <h2 class="bold-text mbr-section-title pb-3 mbr-fonts-style align-center display-2">
            In the most basic form, we'll touch on a problem
        </h2>
        <h3 class="mbr-section-subtitle pb-5 mbr-fonts-style align-center display-5">
            Nothing is more disappointing than living your life undiscovered!
            Not living to your full potential.
        </h3>
        <p>Unknowingly choosing a life of mediocrity over life of mastery</p>
        <div class="step-container">
            <div class="card separline pb-4">
                <div class="step-element d-flex">
                    <div class="step-wrapper pr-3">
                        <h3 class="step d-flex align-items-center justify-content-center">
                            1
                        </h3>
                    </div>          
                    <div class="step-text-content">
                        <h4 class="mbr-step-title pb-3 mbr-fonts-style display-5">We'll then introduce the solution.
                        </h4>
                        <p class="mbr-step-text mbr-fonts-style display-7">
                            An executive business coach will discover your character's strengths and passion, which then
                            leverages your talent to market position you to live your full potential.
                        </p>
                    </div>
                </div>
            </div>

            <div class="card separline pb-4">
                <div class="step-element d-flex">
                    <div class="step-wrapper pr-3">
                        <h3 class="step d-flex align-items-center justify-content-center">
                            2
                        </h3>
                    </div>          
                    <div class="step-text-content">
                        <h4 class="mbr-step-title pb-3 mbr-fonts-style display-5">We'll establish credibility for you.</h4>
                        <p class="mbr-step-text mbr-fonts-style display-7">
                            After years of working for many corporations and building exceptional healthcare leadership teams I
                            realized I am exceptionally talented to discover individuals' passion and talent. Outperforming provincial
                            and national performance indicators were just the by-product of loving what I was exceptionally good
                        </p>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="step-element d-flex">
                    <div class="step-wrapper pr-3">
                        <h3 class="step d-flex align-items-center justify-content-center">
                            3
                        </h3>
                    </div>          
                    <div class="step-text-content">
                        <h4 class="mbr-step-title pb-3 mbr-fonts-style display-5">Deployment
                        </h4>
                        <p class="mbr-step-text mbr-fonts-style display-7">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam erat libero, bibendum in libero tempor, luctus volutpat ligula. Integer fringilla porttitor pretium. Nam erat felis, iaculis id justo ut, ullamcorper feugiat elit. Proin vel lectus auctor, porttitor ligula vitae, convallis leo. In eget massa elit.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>




</div>


    <%-- MODAL --%>
    <style>
        .modal-footer {
            font-size: 11px;
        }
    </style>
    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
        <%--MODAL SMALL--%><%--<div class="modal-dialog modal-sm">--%>
        <%--MODAL WIDE--%><%--<div class="modal-dialog modal-lg">--%>
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle" clientidmode="Static" runat="server">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div id="popupContentHtml" clientidmode="Static" runat="server" class="modal-body">
                </div>
                <div id="popupFooterHtml" clientidmode="Static" runat="server" class="modal-footer">
                    This will end in 2021/11/12
                </div>
            </div>
        </div>
    </div>


    <%-- RUN MODAL BY SCRIPT --%>
    <script>
        function runModal() {
            $('#myModal').modal('toggle');

            //$('#myModal').modal('show')
            //$('#myModal').modal('hide')
            //$('#myModal').modal('dispose')  Destroys an element’s modal.
        }
    </script>
</asp:Content>

