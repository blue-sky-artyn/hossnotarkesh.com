<%@ Page Title="" Language="C#" MasterPageFile="~/footer.master" AutoEventWireup="true" CodeFile="Default1.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceFooterHead" runat="Server">
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
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceFooterBody" runat="Server">


    <%-- Slider --%>
    <section class="cid-qTkA127IK8 mbr-fullscreen" id="header2-1">

        
        <video autoplay muted loop>
            <source src="assets/video/lines.mp4" type="video/mp4">
            <source src="assets/video/lines.ogg" type="video/ogg">
            Your browser does not support the video tag.
        </video>


        <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(118, 118, 118);"></div>

        <div class="container align-center">
            <div class="row justify-content-md-center">
                <div class="mbr-white col-md-10">
                    <h1 class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-1">FULL SCREEN INTRO
                </h1>

                    <p class="mbr-text pb-3 mbr-fonts-style display-5">
                        Click any text to edit or style it. Select text to insert a link. Click blue "Gear" icon in the top right corner to hide/show buttons, text, title and change the block background. Click red "+" in the bottom right corner to add a new block. Use the top left menu to create new pages, sites and add themes.
               
                    </p>
                    <div class="mbr-section-btn">
                        <a class="btn btn-md btn-secondary display-4" href="#">LEARN MORE</a>
                        <a class="btn btn-md btn-white-outline display-4" href="#">LIVE DEMO</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="mbr-arrow hidden-sm-down" aria-hidden="true">
            <a href="#next">
                <i class="mbri-down mbr-iconfont"></i>
            </a>
        </div>
    </section>

    <%-- our partners --%>
    <section class="clients cid-t6qHTcYS0k" data-interval="false" id="clients-f">
      

    
        <div class="container mb-5">
            <div class="media-container-row">
                <div class="col-12 align-center">
                    <h2 class="mbr-section-title pb-3 mbr-fonts-style display-2">
                        Our Clients
                    </h2>
                    <h3 class="mbr-section-subtitle mbr-light mbr-fonts-style display-5">
                        Click any image to change it.Click blue "Gear" icon in the top right corner to change background, amount slides and amount visible items at once.
                    </h3>
                </div>
            </div>
        </div>

    <div class="container">
        <div class="carousel slide" role="listbox" data-pause="true" data-keyboard="false" data-ride="carousel" data-interval="5000">
            <div class="carousel-inner" data-visible="5">
            <div class="carousel-item ">
                    <div class="media-container-row">
                        <div class="col-md-12">
                            <div class="wrap-img ">
                                <img src="assets/images/1.png" class="img-responsive clients-img">
                            </div>
                        </div>
                    </div>
                </div><div class="carousel-item ">
                    <div class="media-container-row">
                        <div class="col-md-12">
                            <div class="wrap-img ">
                                <img src="assets/images/2.png" class="img-responsive clients-img">
                            </div>
                        </div>
                    </div>
                </div><div class="carousel-item ">
                    <div class="media-container-row">
                        <div class="col-md-12">
                            <div class="wrap-img ">
                                <img src="assets/images/3.png" class="img-responsive clients-img">
                            </div>
                        </div>
                    </div>
                </div><div class="carousel-item ">
                    <div class="media-container-row">
                        <div class="col-md-12">
                            <div class="wrap-img ">
                                <img src="assets/images/4.png" class="img-responsive clients-img">
                            </div>
                        </div>
                    </div>
                </div><div class="carousel-item ">
                    <div class="media-container-row">
                        <div class="col-md-12">
                            <div class="wrap-img ">
                                <img src="assets/images/5.png" class="img-responsive clients-img">
                            </div>
                        </div>
                    </div>
                </div></div>
            <div class="carousel-controls">
                <a data-app-prevent-settings="" class="carousel-control carousel-control-prev" role="button" data-slide="prev">
                    <span aria-hidden="true" class="mbri-left mbr-iconfont"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a data-app-prevent-settings="" class="carousel-control carousel-control-next" role="button" data-slide="next">
                    <span aria-hidden="true" class="mbri-right mbr-iconfont"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</section>

























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

