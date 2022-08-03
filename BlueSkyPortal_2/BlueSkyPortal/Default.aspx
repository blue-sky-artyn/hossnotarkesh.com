<%@ Page Title="" Language="C#" MasterPageFile="~/layout.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        /* For typed.js */

        .typed {
            display: inline;
        }
        /* Cursor */
        .typed-cursor {
            opacity: 1;
            -webkit-animation: blink 0.7s infinite;
            -moz-animation: blink 0.7s infinite;
            animation: blink 0.7s infinite;
        }


        @keyframes blink {
            0% {
                opacity: 1;
            }

            50% {
                opacity: 0;
            }

            100% {
                opacity: 1;
            }
        }

        @-webkit-keyframes blink {
            0% {
                opacity: 1;
            }

            50% {
                opacity: 0;
            }

            100% {
                opacity: 1;
            }
        }

        @-moz-keyframes blink {
            0% {
                opacity: 1;
            }

            50% {
                opacity: 0;
            }

            100% {
                opacity: 1;
            }
        }


        /* If fade out option is set */
        .typed-fade-out {
        }
    </style>
    <style>
        /*general added css*/
        .padding3 {
            padding: 0 0 3.5rem 0 !important;
        }

        .bold-text {
            text-align: center;
            color: black;
            font-weight: bold;
        }

        .img-bio {
            width: 100%;
        }

        .left-side {
            width: 8%;
            display: inline-block;
            float: left;
        }

            .left-side h3 {
                padding-top: 0 !important;
                margin-top: 0 !important;
                font-weight: bold;
                text-shadow: 1px 1px 1px #8a8a8afc;
            }

        .right-side {
            display: inline-block;
            float: right;
            width: 80%;
            text-align: justify;
        }
    </style>
      <style>
/*for review*/
        .site-section.section-reviews {
            padding-bottom: 0;
        }

        .site-section {
            padding: 100px 0;
        }

            .site-section h2 {
                font-family: "Varela", sans-serif;
                margin: 0;
                font-size: 32px;
                color: #196fc2;
                text-align: center;
                text-transform: uppercase;
            }

        .section-subtitle {
            position: relative;
            font-family: "Varela", sans-serif;
            margin: 15px 0 0;
            font-size: 16px;
            line-height: 16px;
            color: #666;
            letter-spacing: 2px;
            text-align: center;
            text-transform: uppercase;
        }

        .site-section.section-reviews .blue-bg {
            margin-top: 50px;
            padding: 70px 0px;
        }

        .blue-bg {
            background-color: #196fc2;
        }

        .review-carousel {
            padding: 0 50px;
        }

        .slick-slider {
            position: relative;
            -khtml-user-select: none;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            -webkit-touch-callout: none;
            -ms-touch-action: pan-y;
            touch-action: pan-y;
            -webkit-tap-highlight-color: transparent;
        }

        .review-carousel .slick.rectangle.slick-prev {
            left: 0;
        }

        .review-carousel .slick.rectangle {
            position: absolute;
            top: 50%;
            width: 30px;
            height: 30px;
            box-shadow: none;
            z-index: 99;
            background-color: transparent;
            color: #ffffff;
            border: 1px solid #ffffff;
        }

        .rectangle, .big-rectangle {
            display: inline-block;
            width: 50px;
            height: 50px;
            border: 1px solid #dddddd;
            transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
            -moz-transform: rotate(45deg);
            -o-transform: rotate(45deg);
            -ms-transform: rotate(45deg);
            -webkit-box-shadow: 4px 4px 0px 0px #dddddd;
            -o-box-shadow: 4px 4px 0px 0px #dddddd;
            -moz-box-shadow: 4px 4px 0px 0px #dddddd;
            box-shadow: 4px 4px 0px 0px #dddddd;
        }

        .carousel-control.left i, .review-carousel .slick.rectangle.slick-prev i {
            padding-right: 3px;
        }

        .rectangle i, .big-rectangle img, .rectangle span, .rectangle img {
            position: absolute;
            top: 50%;
            left: 50%;
            font-size: 22px;
            transform: translate(-50%, -50%) rotate(-45deg);
            -webkit-transform: translate(-50%, -50%) rotate(-45deg);
            -moz-transform: translate(-50%, -50%) rotate(-45deg);
            -o-transform: translate(-50%, -50%) rotate(-45deg);
            -ms-transform: translate(-50%, -50%) rotate(-45deg);
        }
        .slick-list {
            position: relative;
            overflow: hidden;
        }
        .slick-track:before, .slick-track:after {
            display: table;
            content: '';
        }
        .slick-initialized .slick-slide {
            display: block;
        }

        .slick-slide {
            display: none;
            float: left;
            height: 100%;
            min-height: 1px;
        }
        .slick-track:after {
            clear: both;
        }

        .slick-track:before, .slick-track:after {
            display: table;
            content: '';
        }
        .review-carousel .slick.rectangle.slick-next {
            right: 0;
        }

        .review-carousel .slick.rectangle {
            position: absolute;
            top: 50%;
            width: 30px;
            height: 30px;
            box-shadow: none;
            z-index: 99;
            background-color: transparent;
            color: #ffffff;
            border: 1px solid #ffffff;
        }

        .rectangle, .big-rectangle {
            display: inline-block;
            width: 50px;
            height: 50px;
            border: 1px solid #dddddd;
            transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
            -moz-transform: rotate(45deg);
            -o-transform: rotate(45deg);
            -ms-transform: rotate(45deg);
            -webkit-box-shadow: 4px 4px 0px 0px #dddddd;
            -o-box-shadow: 4px 4px 0px 0px #dddddd;
            -moz-box-shadow: 4px 4px 0px 0px #dddddd;
            box-shadow: 4px 4px 0px 0px #dddddd;
        }

        a, button {
            -webkit-transition: all 0.25s ease-in-out;
            -o-transition: all 0.25s ease-in-out;
            -moz-transition: all 0.25s ease-in-out;
            transition: all 0.25s ease-in-out;
            cursor: pointer;
            outline: 0 none;
        }
        .carousel-control.right i, .review-carousel .slick.rectangle.slick-next i {
            padding-left: 3px;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="hero">
        <h1 id="title-1">Nothing is more disappointing than living your life undiscovered!<em><span>H</span>OSS</em>Executive Business Coach</h1>
        <div class="social-btn-container">
            <span class="social-btn-box"><a href="https://plus.google.com" class="google-plus-btn"><i class="fa fa-google-plus"></i></a></span>
            <!-- /.social-btn-box -->
            <span class="social-btn-box"><a href="https://www.facebook.com/" class="facebook-btn"><i class="fa fa-facebook"></i></a></span>
            <!-- /.social-btn-box -->
            <span class="social-btn-box"><a href="https://twitter.com/" class="twitter-btn"><i class="fa fa-twitter"></i></a></span>
            <!-- /.social-btn-box -->
            <span class="social-btn-box"><a href="https://linkedin.com/" class="linkedin-btn"><i class="fa fa-linkedin"></i></a></span>
            <!-- /.social-btn-box -->
            <span class="social-btn-box"><a href="#" class="youtube-btn"><i class="fa fa-youtube"></i></a></span>
            <!-- /.social-btn-box -->
        </div>
        <!-- /.social-btn-container -->

        <div class="fixbottarro"><a class="scroll" href="#section-2">Scroll for more</a> </div>
    </div>
    <!-- /.hero -->
    </div>
  <!-- END Slider -->

    <div class="grid">
        <div class="row paddtop100">
            <div class="col_2"></div>
            <div class="col_8">
                <h2 class="padding3 title-small center">Why a business coach?</h2>
                <div id="typed-strings">
                    <h3 class="title-small center">Nothing is more disappointing than living your life undiscovered!</h3>
                    <h3 class="title-small center">Not living to your full potential.</h3>
                    <h3 class="title-small center">Unknowingly choosing a life of mediocrity over life of mastery.</h3>
                </div>
                <span id="typed" class="title-small center bold-text"></span>
            </div>
            <div class="col_2"></div>
            <!-- END col_12 -->

            <div class="colw_6 spec-l border-right">
                <p>An executive business coach will discover your character’s strengths and passion, which then leverages your talent to market position you to live your full potential.</p>
            </div>
            <!-- END col_6 -->

            <div class="colw_6 paddbott100 spec-r">
                <p>After years of working for many corporations and building exceptional healthcare leadership teams I realized I am exceptionally talented to discover individuals’ passion and talent. Outperforming provincial and national performance indicators were just the by-product of loving what I was exceptionally good at.</p>
            </div>
            <!-- END col_6 -->

        </div>
        <!-- END row -->

    </div>
    <!-- End BOLD Paragraph -->

    <div class="grid flex16">
        <div class="row paddtop5">
            <div class="colw_6 beta wow column zoomIn">
                <div class="videoWrapper videoWrapper169 js-videoWrapper">
                    <%--<iframe class="videoIframe js-videoIframe" src="" frameborder="0" allowTransparency="true" allowfullscreen data-src="https://www.youtube.com/embed/ar-rzqUYdf0?autoplay=1& modestbranding=1&rel=0&hl=sv"></iframe>--%>
                    <img class="videoIframe img-bio" src="img/bio.png" alt="business coach" />
                    <%--<button class="videoPoster js-videoPoster" style="background-image:url(images/umag.jpg);">Play video</button>--%>
                </div>
            </div>
            <!-- END col_6 -->

            <div class="colw_6 beta column reladiv">
                <div class="box66">
                    <h3 class="title-3 wow fadeInDown" data-wow-duration="0.5s" data-wow-delay="0.5s">My name is Hoss, your Executive Business Coach.</h3>
                    <p>My name is Hoss, your Executive Business Coach. I am privilege to serve many executives and business owners to optimize and strategize their roadmap to success.</p>
                    <div class="box66">
                        <div class="left-side">

                            <div class="wrap icon">
                                <i class="fa fa-cog fa-spin"></i><i class="fa fa-spin-reverse fa-cog"></i><i class="fa fa-cog fa-spin"></i>

                            </div>
                            <h3 class="center wow fadeInDown" data-wow-duration="0.5s" data-wow-delay="0.5s">How do I do that?</h3>
                        </div>
                    </div>
                    <p class="right-side">I discover your Passion to overcome your weakness and will take advantage of your opportunities to eliminate the threats. We apply the same principle in every aspect of business or as an executive in leadership strategies.</p>

                </div>
                <!-- END box66 -->

                <a href="hoss-bio.aspx" class="istria-btn">Read More</a>
                <div class="istria-line left">
                    <div class="inner"></div>
                </div>
                <div class="istria-line right">
                    <div class="inner"></div>
                </div>
            </div>
            <!-- END col_6 -->

        </div>
        <!-- END row -->
    </div>
    <!-- End BIO -->


    <div class="grid flex16">
        <div class="row paddbott100">
            <div class="col_6">
                <div class="box66">
                    <h6>You can also learn more on social</h6>
                    <p>Pleaase follow me on social</p>
                </div>
                <!-- END box66 -->
            </div>
            <!-- END col_6 -->

            <div class="col_6 paddbott100 wow zoomIn">
                <div class="box-fix">
                    <h3 class="centered">Find us on social media</h3>
                    <div class="social"><a href="https://www.facebook.com/" class="soc-btn facebook"><i class="fa fa-facebook"></i>Facebook</a> <a href="https://twitter.com/" class="soc-btn twitter"><i class="fa fa-twitter"></i>Twitter</a> <a href="https://plus.google.com/" class="soc-btn google5"><i class="fa fa-google"></i>Google +</a> </div>
                </div>
            </div>
            <!-- END col_6 -->

        </div>
        <!-- END row -->


    </div>
    <!-- End GRID -->

        <!-- Reviews section -->
        <section class="site-section section-reviews text-center">
            <div class="container">
                <h2>Client Reviews</h2>
                <p class="section-subtitle"><span>OUR CLIENTS LOVE US! READ WHAT THEY HAVE TO SAY</span></p>
            </div>

            <div class="blue-bg">
                <div class="container">
                    <div class="review-carousel">
                        <!-- Review 1 -->
                        <div class="review">
                            <div class="rectangle">
                                <img src="assets/img/review.jpg" class="img-res" alt="">
                            </div>
                            <p>If there were 100 star rating I would leave 110. I have been building WP sites now full time for 7 years and in business for 12 and have never worked with such a solid company with such a wonderful set of themes.</p>
                            <div class="review-author">
                                <h3>Mike Taylor</h3>
                                <p>CEO at Sports Portal</p>
                            </div><!-- /.review-author -->
                        </div><!-- /.review -->
                        <!-- Review 2 -->
                        <div class="review">
                            <div class="rectangle">
                                <img src="assets/img/review-2.jpg" class="img-res" alt="">
                            </div>
                            <p>Diana Johnson is a rare SEO consultant who does things the right way. I’ve been consistently impressed with her process, organization and strategic method of doing SEO the right way.</p>
                            <div class="review-author">
                                <h3>Anna Murray</h3>
                                <p>CEO at Law firm</p>
                            </div><!-- /.review-author -->
                        </div><!-- /.review -->
                    </div><!-- /.review-carousel -->
                </div>
            </div>
        </section><!-- /.section-reviews -->
        <!-- End Reviews section -->






    <%--<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>--%>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    <!--<script src="lib/typed/typed.min.js"></script>-->
    <script src="js/typed.js"></script>
    <script>

        $('document').ready(function () {
            var typed = new Typed('#typed', {
                stringsElement: '#typed-strings',
                backSpeed: 40,
                typeSpeed: 40,
                startDelay: 10,
                loopCount: Infinity,
                showCursor: true,
                cursorChar: '|',
                loop: true
            });
        });

    </script>

    
    
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!-- Bootstrap core js | Do not Delete -->
    <script src="js/js/bootstrap.min.js"></script>
    <!-- Slick Carousel JS -->
    <script src="js/js/slick.min.js"></script>
    <!-- Custom JS -->
    <script src="js/js/script.js"></script>










    <script src="js/functions.js"></script>
    <script src="js/you-video.js"></script>
</asp:Content>

