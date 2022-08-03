<%@ Page Title="" Language="C#" MasterPageFile="~/SingleMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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

        .stroke-black-text-white {
            font-weight: bold;
            -webkit-text-stroke: 1px #4e4949;
            -webkit-text-fill-color: white;
            font-size: 24px;
        }

        .stroke-white-text-black {
            font-weight: bold;
            -webkit-text-stroke: 1px #4e4949;
            -webkit-text-fill-color: white;
            font-size: 24px;
        }
    </style>

    <style>
        .avatar-placeholder {
            margin-bottom: 5rem;
        }

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


    <%-- Slider --%>
    <section class="cid-qTkA127IK8 mbr-fullscreen" id="header2-1" style="min-height: 85vh;">


        <video autoplay muted loop>
            <source src="assets/video/hoss360p.mp4" type="video/mp4">
            <source src="assets/video/hoss360p.ogg" type="video/ogg">
            Your browser does not support the video tag.
        </video>


        <%--<div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(118, 118, 118);"></div>--%>

        <div class="container align-center">
            <div class="row justify-content-md-center">
                <div id="sliderHtml" runat="server" class="mbr-white col-md-10">
                    <h1 class="mbr-section-title mbr-bold pb-3 mbr-fonts-style display-1">FULL SCREEN INTRO
                    </h1>

                    <p class="mbr-text pb-3 mbr-fonts-style display-5">
                        Click any text to edit or style it. Select text to insert a link. Click blue "Gear" icon in the top right corner to hide/show buttons, text, title and change the block background. Click red "+" in the bottom right corner to add a new block. Use the top left menu to create new pages, sites and add themes.
               
                    </p>
                    <div class="mbr-section-btn">
                        <a id="sliderLinkHtml" runat="server" class="btn btn-md btn-secondary display-4" href="#">LEARN MORE</a>
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


    <%-- added method  --%>
    <div id="objectAddedHtml" runat="server">



        <%-- Text BOLD --%>
        <section class="step1 cid-t6qIEqrGsJ" id="step12-n">

            <div class="container">
                <h2 class="bold-text mbr-section-title pb-3 mbr-fonts-style align-center display-2">In the most basic form, we'll touch on a problem
        </h2>
                <h3 class="mbr-section-subtitle pb-5 mbr-fonts-style align-center display-5">Nothing is more disappointing than living your life undiscovered!
            Not living to your full potential.
        </h3>
                <p>Unknowingly choosing a life of mediocrity over life of mastery</p>
                <div class="step-container">
                    <div class="card separline pb-4">
                        <div class="step-element d-flex">
                            <div class="step-wrapper pr-3">
                                <h3 class="step d-flex align-items-center justify-content-center">1
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
                                <h3 class="step d-flex align-items-center justify-content-center">2
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
                                <h3 class="step d-flex align-items-center justify-content-center">3
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

        <%-- Introduction --%>
        <section class="testimonials3 cid-t6qHXser9J" id="testimonials3-g">
            <div class="container">
                <div class="media-container-row">
                    <div class="media-content px-3 align-self-center mbr-white py-2">
                        <h3 class="color-dark step d-flex align-items-center justify-content-center">We'll give proof that your solution works.</h3>
                        <p class="mbr-text testimonial-text mbr-fonts-style display-7">
                            My name is Hoss, your Executive Business Coach. I am privilege to serve many executives and business owners to optimize and strategize their roadmap to success.
How do I do that? It’s simple, I discover your Passion to overcome your weakness and will take advantage of your opportunities to eliminate the threats. We apply the same principle in every aspect of business or as an executive in leadership strategies.

               
                        </p>
                        <p class="mbr-author-name pt-4 mb-2 mbr-fonts-style display-7">
                            Hoss N.
               
                        </p>
                        <p class="mbr-author-desc mbr-fonts-style display-7">
                            Executive Business Coach
               
                        </p>
                    </div>

                    <div class="mbr-figure pl-lg-5" style="width: 130%;">
                        <img src="assets/images/face2.jpg">
                    </div>
                </div>
            </div>
        </section>

        <%-- Book an appointment --%>
        <section class="header1 cid-t6qHgoVzbU mbr-parallax-background" id="header1-4">



            <div class="mbr-overlay" style="opacity: 0.6; background-color: rgb(20, 157, 204);">
            </div>

            <div class="container">
                <div class="row justify-content-md-center">
                    <div class="mbr-white col-md-10">
                        <h1 class="mbr-section-title align-center mbr-bold pb-3 mbr-fonts-style display-1">BOOK YOUR APPOINTMENT
                </h1>
                        <h3 class="mbr-section-subtitle align-center mbr-light pb-3 mbr-fonts-style display-2">Forst session is free of charge.
                </h3>
                        <p class="mbr-text align-center pb-3 mbr-fonts-style display-5">
                            book your compelmentory appointment right now and enjoy the benefits.
               
                        </p>
                        <div class="mbr-section-btn align-center">
                            <a class="btn btn-md btn-secondary display-4" href="booking.aspx">
                                <span class="mbr-iconfont mbri-file"></span>BOOK NOW</a>
                        </div>
                    </div>
                </div>
            </div>

        </section>

        <%-- our partners --%>
        <section class="clients cid-t6qHTcYS0k" data-interval="false" id="clients-f">
            <div class="container mb-5">
                <div class="media-container-row">
                    <div class="col-12 align-center">
                        <h2 class="mbr-section-title pb-3 mbr-fonts-style display-2">Our Clients
                        </h2>
                        <h3 class="mbr-section-subtitle mbr-light mbr-fonts-style display-5">The companies which we are honered to work with them.</h3>
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
                        </div>
                        <div class="carousel-item ">
                            <div class="media-container-row">
                                <div class="col-md-12">
                                    <div class="wrap-img ">
                                        <img src="assets/images/2.png" class="img-responsive clients-img">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item ">
                            <div class="media-container-row">
                                <div class="col-md-12">
                                    <div class="wrap-img ">
                                        <img src="assets/images/3.png" class="img-responsive clients-img">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item ">
                            <div class="media-container-row">
                                <div class="col-md-12">
                                    <div class="wrap-img ">
                                        <img src="assets/images/4.png" class="img-responsive clients-img">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item ">
                            <div class="media-container-row">
                                <div class="col-md-12">
                                    <div class="wrap-img ">
                                        <img src="assets/images/5.png" class="img-responsive clients-img">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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

        <%-- Testimonial --%>

        <section class="testimonials3 cid-t6qHXser9J" id="testimonials3-g_a">
            <div class="container">

                <div class="mb-5 media-container-row">
                    <div class="mbr-figure pl-lg-5" style="width: 75%;">
                        <img src="assets/images/face1.jpg">
                    </div>

                    <div class="media-content px-5 align-self-center mbr-white py-2">
                        <p class="mbr-text testimonial-text mbr-fonts-style display-7">
                            My experience with Hoss has been outstanding. His expertise was evident immediately when he asked all the right questions to understand my situation and help figure out the correct course of action. If it wasn’t for his support, encouragement, and showing me proper next steps and direction, I should take, there’s a good chance that my first foray into entrepreneurship would have been a total failure. When the going got tough I was tempted to bow out and call it quits. His steady hand helped keep me in the game. Hoss also helped me understand the key to success as mastering the inner game. He started patiently from basics and showed me the fundamentals and when I finally successfully fulfilled these steps, he took me closer and closer to my goals. With his help I’ve been able to accomplish my goal of establishing a successful business. I couldn’t have done it without him.               
                        </p>
                        <p class="mbr-author-name pt-4 mb-2 mbr-fonts-style display-7">
                            Kamyab Ghatan
                        </p>
                        <p class="mbr-author-desc mbr-fonts-style display-7">
                            MD, CIC, President and Founder of IPAC-Canada-GTA
                        </p>
                    </div>
                </div>




                <div class="media-content px-5 align-self-center mbr-white py-2">
                    <div class="avatar-placeholder">
                        <div class="centerize card-block">
                            <div class="avatar">
                                <img src="images/face1.jpg" alt="" /></div>
                        </div>
                        <div class="color-dark content-avatar">
                            <p>As your executive business coach I strategize a nimble and robust roadmap to achieve your goals. I design your strategic plan that is actionable with proven practices tailored to deliver the desired outcome. Your Strategic Coaching enables you to Focus on the most important part of the Manifestation which is Taking the steps toward your GOALS and leaving the Road-mapping and Strategizing to me. Everyone wants something. They want progress. They want things to be better in the future. They have big wish lists and dreams. But how many people do you know who are willing to do what it takes to achieve their goals by living their full potential?</p>
                            <div class="intro-avatar">
                                <p class="name-avatar">Hoss N.</p>
                                <p class="post-avatar">Busienss couch</p>
                            </div>
                        </div>

                    </div>
                </div>


























                <div class="media-container-row">
                    <div class="media-content px-5 align-self-center mbr-white py-2">
                        <p class="mbr-text testimonial-text mbr-fonts-style display-7">
                            As a successful exotic bakery boutique Le Miel Cake caters to art enthusiasts who appreciate sophisticated sweet palate beyond imagination. Meanwhile Sina (Pastry Chef) and I (Niloofar, Pastry Designer) are focusing on our pastry masterpieces; we needed a business strategist to assist us in a strategic plan to streamline our process map and deliver a nimble workflow with least hands-on operation. Hoss helped us to develop and execute the strategic plan and as a result our sales increased exponentially by generating more qualified leads and higher conversion rate to the point that we had to expand to meet the high demand.
                        </p>
                        <p class="mbr-author-name pt-4 mb-2 mbr-fonts-style display-7">
                            Niloofar Abshari
                        </p>
                        <p class="mbr-author-desc mbr-fonts-style display-7">
                            Co-founder and Pastry Designer, Le Miel
                        </p>
                    </div>

                    <div class="mbr-figure pr-lg-5" style="width: 75%;">
                        <img src="assets/images/face2.jpg">
                    </div>
                </div>

                <div class="media-content px-5 align-self-center mbr-white py-2">
                    <div class="avatar-placeholder">
                        <div class="centerize card-block">
                            <div class="avatar">
                                <img src="images/face1.jpg" alt="" /></div>
                        </div>
                        <div class="color-dark content-avatar">
                            <p>As your executive business coach I strategize a nimble and robust roadmap to achieve your goals. I design your strategic plan that is actionable with proven practices tailored to deliver the desired outcome. Your Strategic Coaching enables you to Focus on the most important part of the Manifestation which is Taking the steps toward your GOALS and leaving the Road-mapping and Strategizing to me. Everyone wants something. They want progress. They want things to be better in the future. They have big wish lists and dreams. But how many people do you know who are willing to do what it takes to achieve their goals by living their full potential?</p>
                            <div class="intro-avatar">
                                <p class="name-avatar">Hoss N.</p>
                                <p class="post-avatar">Busienss couch</p>
                            </div>
                        </div>

                    </div>
                </div>


                <div class="mb-5 media-container-row">
                    <div class="mbr-figure pl-lg-5" style="width: 75%;">
                        <img src="assets/images/face1.jpg">
                    </div>

                    <div class="media-content px-5 align-self-center mbr-white py-2">
                        <p class="mbr-text testimonial-text mbr-fonts-style display-7">
                            My experience with Hoss has been outstanding. His expertise was evident immediately when he asked all the right questions to understand my situation and help figure out the correct course of action. If it wasn’t for his support, encouragement, and showing me proper next steps and direction, I should take, there’s a good chance that my first foray into entrepreneurship would have been a total failure. When the going got tough I was tempted to bow out and call it quits. His steady hand helped keep me in the game. Hoss also helped me understand the key to success as mastering the inner game. He started patiently from basics and showed me the fundamentals and when I finally successfully fulfilled these steps, he took me closer and closer to my goals. With his help I’ve been able to accomplish my goal of establishing a successful business. I couldn’t have done it without him.               
                        </p>
                        <p class="mbr-author-name pt-4 mb-2 mbr-fonts-style display-7">
                            Kamyab Ghatan
                        </p>
                        <p class="mbr-author-desc mbr-fonts-style display-7">
                            MD, CIC, President and Founder of IPAC-Canada-GTA
                        </p>
                    </div>

                </div>

                <div class="media-content px-5 align-self-center mbr-white py-2">
                    <div class="avatar-placeholder">
                        <div class="centerize card-block">
                            <div class="avatar">
                                <img src="images/face1.jpg" alt="" /></div>
                        </div>
                        <div class="color-dark content-avatar">
                            <p>As your executive business coach I strategize a nimble and robust roadmap to achieve your goals. I design your strategic plan that is actionable with proven practices tailored to deliver the desired outcome. Your Strategic Coaching enables you to Focus on the most important part of the Manifestation which is Taking the steps toward your GOALS and leaving the Road-mapping and Strategizing to me. Everyone wants something. They want progress. They want things to be better in the future. They have big wish lists and dreams. But how many people do you know who are willing to do what it takes to achieve their goals by living their full potential?</p>
                            <div class="intro-avatar">
                                <p class="name-avatar">Hoss N.</p>
                                <p class="post-avatar">Busienss couch</p>
                            </div>
                        </div>

                    </div>
                </div>


            </div>
        </section>


        <%-- Book an appointment --%>
        <section class="header4 cid-t6qHhXrMZe mbr-parallax-background" id="header4-5">
            <div class="mbr-overlay" style="opacity: 0.8; background-color: rgb(35, 35, 35);">
            </div>

            <div class="container">
                <div class="row justify-content-md-center">
                    <div class="media-content col-md-10">
                        <h1 class="mbr-section-title align-center mbr-white pb-3 mbr-bold mbr-fonts-style display-1">Book an appointment
                </h1>

                        <div class="mbr-text align-center mbr-white pb-3">
                            <p class="mbr-text mbr-fonts-style display-5">
                                Take action and book your complimentary discovery call today.
                   
                            </p>
                        </div>
                        <div class="mbr-section-btn align-center">
                            <a class="btn btn-md btn-primary display-4" href="#">BOOK NOW</a>
                            <a class="btn btn-md btn-white-outline display-4" href="#">Read More...</a>
                        </div>
                    </div>
                    <div class="mbr-figure pt-5">
                        <img src="assets/images/background2.jpg" alt="Mobirise" style="width: 60%;">
                    </div>
                </div>
            </div>
        </section>


        <%-- Mastery of area --%>
        <section class="features12 cid-t6qHsI28EN" id="features12-a">
            <div class="container">
                <h2 class="mbr-section-title pb-2 mbr-fonts-style display-2">MASTER EVERY AREA OF YOUR LIFE
        </h2>
                <h3 class="mbr-section-subtitle pb-3 mbr-fonts-style display-5">SOLUTIONS TO FIT YOUR TIME, YOUR LIFESTYLE AND YOUR BUDGET
        </h3>

                <div class="media-container-row pt-5">
                    <div class="block-content align-right">
                        <div class="card pl-3 pr-3 pb-5">
                            <div class="mbr-card-img-title">
                                <div class="card-img pb-3">
                                    <span class="mbri-upload mbr-iconfont"></span>
                                </div>
                                <div class="mbr-crt-title">
                                    <h4 class="card-title py-2 mbr-crt-title mbr-fonts-style display-7">Lorem Ipsum                     
                            </h4>
                                </div>
                            </div>

                            <div class="card-box">
                                <p class="mbr-text mbr-section-text mbr-fonts-style display-7">
                                    Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."
"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain
                       
                                </p>
                            </div>
                        </div>

                        <div class="card pl-3 pr-3">
                            <div class="mbr-card-img-title">
                                <div class="card-img pb-3">
                                    <span class="mbri-drag-n-drop2 mbr-iconfont"></span>
                                </div>
                                <div class="mbr-crt-title">
                                    <h4 class="card-title py-2 mbr-crt-title mbr-fonts-style display-7">Lorem Ipsum
                            </h4>
                                </div>
                            </div>
                            <div class="card-box">
                                <p class="mbr-text mbr-section-text mbr-fonts-style display-7">
                                    Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."
"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain
                       
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="mbr-figure m-auto" style="width: 50%;">
                        <img src="assets/images/background6.jpg" alt="Mobirise" title="">
                    </div>

                    <div class="block-content align-left">
                        <div class="card pl-3 pr-3 pb-5">
                            <div class="mbr-card-img-title">
                                <div class="card-img pb-3">
                                    <span class="mbri-features mbr-iconfont"></span>
                                </div>
                                <div class="mbr-crt-title">
                                    <h4 class="card-title py-2 mbr-crt-title mbr-fonts-style display-7">Lorem Ipsum
                            </h4>
                                </div>
                            </div>

                            <div class="card-box">
                                <p class="mbr-text mbr-section-text mbr-fonts-style display-7">
                                    Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."
"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain
                   
                            </div>
                        </div>

                        <div class="card pl-3 pr-3">
                            <div class="mbr-card-img-title">
                                <div class="card-img pb-3">
                                    <span class="mbri-sites mbr-iconfont"></span>
                                </div>
                                <div class="mbr-crt-title">
                                    <h4 class="card-title py-2 mbr-crt-title mbr-fonts-style display-7">Lorem Ipsum
                            </h4>
                                </div>
                            </div>
                            <div class="card-box">
                                <p class="mbr-text mbr-section-text mbr-fonts-style display-7">
                                    Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."
"There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain
                       
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <%-- Our Mission --%>
        <section class="features11 cid-t6qHwD5nMi" id="features11-b">
            <div class="container">
                <div class="col-md-12">
                    <div class="media-container-row">
                        <div class="mbr-figure m-auto" style="width: 50%;">
                            <img src="assets/images/background9.jpg" alt="test" title="">
                        </div>
                        <div class=" align-left aside-content">
                            <h2 class="mbr-title pt-2 mbr-fonts-style display-2">Our Mission
                    </h2>
                            <div class="mbr-section-text">
                                <p class="mbr-text mb-5 pt-3 mbr-light mbr-fonts-style display-5">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                       
                                </p>
                            </div>

                            <div class="block-content">
                                <div class="card p-3 pr-3">
                                    <div class="media">
                                        <div class=" align-self-center card-img pb-3">
                                            <span class="mbri-extension mbr-iconfont"></span>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="card-title mbr-fonts-style display-7">Neque porro quisquam est qui dolorem ipsum
                                    </h4>
                                        </div>
                                    </div>

                                    <div class="card-box">
                                        <p class="block-text mbr-fonts-style display-7">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non ante dui. Ut pulvinar, velit ac ultrices sodales, est erat commodo purus, in venenatis quam libero vitae orci. Nulla vitae felis eget ipsum blandit blandit vel mattis mauris. Praesent non porta ante. Nam vehicula consectetur tortor in condimentum. Curabitur luctus lacinia luctus. Pellentesque ultricies lorem non dolor tempor dignissim non fringilla dolor. Mauris rutrum dolor ac lectus gravida, lacinia congue mauris pellentesque. 
                               
                                        </p>
                                    </div>
                                </div>

                                <div class="card p-3 pr-3">
                                    <div class="media">
                                        <div class="align-self-center card-img pb-3">
                                            <span class="mbri-drag-n-drop2 mbr-iconfont"></span>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="card-title mbr-fonts-style display-7">Neque porro quisquam est qui dolorem ipsum
                                    </h4>
                                        </div>
                                    </div>

                                    <div class="card-box">
                                        <p class="block-text mbr-fonts-style display-7">
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non ante dui. Ut pulvinar, velit ac ultrices sodales, est erat commodo purus, in venenatis quam libero vitae orci. Nulla vitae felis eget ipsum blandit blandit vel mattis mauris. Praesent non porta ante. Nam vehicula consectetur tortor in condimentum. Curabitur luctus lacinia luctus. Pellentesque ultricies lorem non dolor tempor dignissim non fringilla dolor. Mauris rutrum dolor ac lectus gravida, lacinia congue mauris pellentesque. 
                               
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <%-- Timeline --%>
        <section class="timeline1 cid-t6qIrT9GYC" id="timeline1-j">
            <div class="container align-center">
                <h2 class="mbr-section-title pb-3 mbr-fonts-style display-2">Timeline
        </h2>
                <h3 class="mbr-section-subtitle pb-5 mbr-fonts-style display-5">The company milestone 
        </h3>

                <div class="container timelines-container" mbri-timelines="">



                    <!--1-->
                    <div class="row timeline-element reverse separline">
                        <div class="timeline-date-panel col-xs-12 col-md-6  align-left">
                            <div class="time-line-date-content">
                                <p class="small-timeline mbr-timeline-date mbr-fonts-style display-5">
                                    Data Collection  
                       
                                </p>
                            </div>
                        </div>
                        <span class="iconBackground"></span>
                        <div class="col-xs-12 col-md-6 align-right">
                            <div class="timeline-text-content">
                                <h4 class="mbr-timeline-title pb-3 mbr-fonts-style display-5">Education
                    </h4>
                                <p class="mbr-timeline-text mbr-fonts-style display-7">
                                    Mutual decision if coaching journey shall continue
                   
                                </p>
                            </div>
                        </div>
                    </div>
                    <!--2-->
                    <div class="row timeline-element separline">
                        <div class="timeline-date-panel col-xs-12 col-md-6 align-right">
                            <div class="time-line-date-content">
                                <p class="small-timeline mbr-timeline-date mbr-fonts-style display-5">
                                    Planning  
                       
                                </p>
                            </div>
                        </div>
                        <span class="iconBackground"></span>
                        <div class="col-xs-12 col-md-6 align-left ">
                            <div class="timeline-text-content">
                                <h4 class="mbr-timeline-title pb-3 mbr-fonts-style display-5">Behavioral Change
                        </h4>
                                <p class="mbr-timeline-text mbr-fonts-style display-7">
                                    Startof coaching session
                       
                                </p>
                            </div>
                        </div>
                    </div>
                    <!--3-->
                    <div class="row timeline-element separline">
                        <div class="timeline-date-panel col-xs-12 col-md-6  align-left">
                            <div class="time-line-date-content">
                                <p class="small-timeline mbr-timeline-date mbr-fonts-style display-5">
                                    Evalution
                                </p>
                            </div>
                        </div>
                        <span class="iconBackground"></span>
                        <div class="col-xs-12 col-md-6 align-right">
                            <div class="timeline-text-content">
                                <h4 class="mbr-timeline-title pb-3 mbr-fonts-style display-5">Measurement
                        </h4>
                                <p class="mbr-timeline-text mbr-fonts-style display-7">
                                    First transformation/first changes can be observed
                       
                                </p>
                            </div>
                        </div>
                    </div>
                    <!--4-->
                    <div class="row timeline-element reverse">
                        <div class="timeline-date-panel col-xs-12 col-md-6  align-left">
                            <div class="time-line-date-content">
                                <p class="small-timeline mbr-timeline-date mbr-fonts-style display-5">
                                    Maintanance
                                </p>
                            </div>
                        </div>
                        <span class="iconBackground"></span>

                    </div>
                    <!--5-->

                    <!--6-->

                    <!--7-->

                    <!--8-->

                    <!--9-->

                    <!--10-->

                    <!--11-->

                    <!--12-->

                </div>
            </div>
        </section>

        <%-- video bg --%>
        <section class="mbr-section info4 cid-t6qHAahgLY" data-bg-video="https://www.youtube.com/watch?v=YprjUkMs6RA" id="info4-c">
            <div class="container">
                <div class="justify-content-center row">
                    <div class="media-container-column title col-12 col-md-10">
                        <h2 class="align-right mbr-bold mbr-white pb-3 mbr-fonts-style display-2">BACKGROUND VIDEO
                </h2>
                        <h3 class="mbr-section-subtitle align-right mbr-light mbr-white pb-3 mbr-fonts-style display-5">Shape your future web project with sharp design and refine coded functions
                </h3>
                        <p class="mbr-text align-right mbr-white mbr-fonts-style display-7">
                            Make your own website in a few clicks! Mobirise helps you cut down development time by providing you with a flexible website editor with a drag and drop interface. MobiRise Website Builder creates responsive, retina and mobile friendly websites in a few clicks. Mobirise is one of the easiest website development tools available today.
               
                        </p>
                        <div class="mbr-section-btn align-right py-4">
                            <a class="btn btn-primary display-4" href="#">LEARN MORE</a>
                            <a class="btn btn-white-outline display-4" href="#">LIVE DEMO</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <%-- Steps --%>
        <section class="step1 cid-t6qIEqrGsJ" id="step1-n">
            <div class="container">
                <h2 class="mbr-section-title pb-3 mbr-fonts-style align-center display-2">Steps
        </h2>
                <h3 class="mbr-section-subtitle pb-5 mbr-fonts-style align-center display-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit
        </h3>
                <div class="step-container">
                    <div class="card separline pb-4">
                        <div class="step-element d-flex">
                            <div class="step-wrapper pr-3">
                                <h3 class="step d-flex align-items-center justify-content-center">1
                        </h3>
                            </div>
                            <div class="step-text-content">
                                <h4 class="mbr-step-title pb-3 mbr-fonts-style display-5">Specification
                        </h4>
                                <p class="mbr-step-text mbr-fonts-style display-7">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam erat libero, bibendum in libero tempor, luctus volutpat ligula. Integer fringilla porttitor pretium. Nam erat felis, iaculis id justo ut, ullamcorper feugiat elit. Proin vel lectus auctor, porttitor ligula vitae, convallis leo. In eget massa elit.
                       
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="card separline pb-4">
                        <div class="step-element d-flex">
                            <div class="step-wrapper pr-3">
                                <h3 class="step d-flex align-items-center justify-content-center">2
                        </h3>
                            </div>
                            <div class="step-text-content">
                                <h4 class="mbr-step-title pb-3 mbr-fonts-style display-5">Project Planning</h4>
                                <p class="mbr-step-text mbr-fonts-style display-7">
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam erat libero, bibendum in libero tempor, luctus volutpat ligula. Integer fringilla porttitor pretium. Nam erat felis, iaculis id justo ut, ullamcorper feugiat elit. Proin vel lectus auctor, porttitor ligula vitae, convallis leo. In eget massa elit.
                       
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="card">
                        <div class="step-element d-flex">
                            <div class="step-wrapper pr-3">
                                <h3 class="step d-flex align-items-center justify-content-center">3
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

        <%-- Socials --%>
        <section class="cid-t6qIgCf5sF" id="social-buttons1-h">
            <div class="container">
                <div class="media-container-row">
                    <div class="col-md-8 align-center">
                        <h2 class="pb-3 mbr-section-title mbr-fonts-style display-2">FOLLOW US!
                </h2>
                        <div>
                            <div class="mbr-social-likes" data-counters="false">
                                <span class="btn btn-social facebook mx-2" title="Share link on Facebook">
                                    <i class="socicon socicon-facebook"></i>
                                </span>
                                <span class="btn btn-social twitter mx-2" title="Share link on Twitter">
                                    <i class="socicon socicon-twitter"></i>
                                </span>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <%-- Success stories --%>



    </div>



    <style>
        
.input-carol {
  display: none;
}

.card-carol {
  position: absolute;
  width: 60%;
  height: 100%;
  left: 0;
  right: 0;
  margin: auto;
  transition: transform .4s ease;
  cursor: pointer;
}

.container-carol {
  width: 100%;
  max-width: 800px;
  max-height: 700px;
  height: 100%;
  transform-style: preserve-3d;
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;

      width: 65%;
    margin: 0 auto;
}

.cards-carol {
  position: relative;
  width: 100%;
  height: 560px;
  margin-bottom: 20px;
}

.img-carol {
  width: 100%;
  height: 100%;
  border-radius: 10px;
  object-fit: cover;
}

/*PREVIOS item*/
#item-1:checked ~ .cards #song-7,
#item-2:checked ~ .cards #song-1,
#item-3:checked ~ .cards #song-2,
#item-4:checked ~ .cards #song-3, 
#item-5:checked ~ .cards #song-4, 
#item-6:checked ~ .cards #song-5, 
#item-7:checked ~ .cards #song-6
{
  transform: translatex(-40%) scale(.8);
  opacity: .4;
  z-index: 0;
}

/*NEXT item*/
#item-1:checked ~ .cards #song-2, 
#item-2:checked ~ .cards #song-3, 
#item-3:checked ~ .cards #song-4, 
#item-4:checked ~ .cards #song-5, 
#item-5:checked ~ .cards #song-6, 
#item-6:checked ~ .cards #song-7, 
#item-7:checked ~ .cards #song-1 
{
  transform: translatex(40%) scale(.8);
  opacity: .4;
  z-index: 0;
}

#item-1:checked ~ .cards #song-1, 
#item-2:checked ~ .cards #song-2, 
#item-3:checked ~ .cards #song-3, 
#item-4:checked ~ .cards #song-4, 
#item-5:checked ~ .cards #song-5, 
#item-6:checked ~ .cards #song-6, 
#item-7:checked ~ .cards #song-7, 
#item-8:checked ~ .cards #song-8
{
  transform: translatex(0) scale(1);
  opacity: 1;
  z-index: 1;
  
  img {
    box-shadow: 0px 0px 5px 0px rgba(81, 81, 81, 0.47);
  }
}

.player {
  background-color: #fff;
  border-radius: 8px;
  min-width: 320px;
  padding: 16px 10px;
}

.upper-part {
  position: relative;
  display: flex;
  align-items: center;
  margin-bottom: 12px;
  height: 36px;
  overflow: hidden;
}

.play-icon{ margin-right: 10px; }

.song-info {
  width: calc(100% - 32px);
  display: block;
}

.song-info .title {
  color: #403d40;
  font-size: 14px;
  line-height: 24px;
}

.sub-line {
  display: flex;
  justify-content: space-between;
  width: 100%;
}

.subtitle, .time {
  font-size: 12px;
  line-height: 16px;
  color: #c6c5c6;
}

.time {
  font-size: 12px;
  line-height: 16px;
  color: #a5a5a5;
  font-weight: 500;
  margin-left: auto;
}

.progress-bar {
  height: 3px;
  width: 100%;
  background-color: #e9efff;
  border-radius: 2px;
  overflow: hidden;
}

.progress {
  display: block;
  position: relative;
  width: 60%;
  height: 100%;
  background-color: #2992dc;
  border-radius: 6px;
}

.info-area {
  width: 100%;
  position: absolute;
  top: 0;
  left: 30px;
  transition: transform .4s ease-in;
}

#item-2:checked ~ .player #test {
  transform: translateY(0);
}

#item-2:checked ~ .player #test  {
  transform: translateY(-40px);
}

#item-3:checked ~ .player #test  {
  transform: translateY(-80px);
}
#item-4:checked ~ .player #test  {
  transform: translateY(-80px);
}
#item-5:checked ~ .player #test  {
  transform: translateY(-80px);
}
#item-6:checked ~ .player #test  {
  transform: translateY(-80px);
}
#item-7:checked ~ .player #test  {
  transform: translateY(-80px);
}
#item-8:checked ~ .player #test  {
  transform: translateY(-80px);
}
.content-wrap {
    padding: 2rem;
}

.content-wrap p {
    text-align: justify;
}

    </style>

<%--        <section class="clients cid-t6qHTcYS0k" data-interval="false" id="clients-f555">
            <div class="container mb-5">
                <div class="media-container-row">
                    <div class="col-12 align-center">
                        <h2 class="mbr-section-title pb-3 mbr-fonts-style display-2">Success Stories
                    </h2>
                    </div>
                </div>
            </div>






            <div class="container">



                <input class="input-carol" type="radio" name="slider" id="item-1" checked>
                <input class="input-carol" type="radio" name="slider" id="item-2">
                <input class="input-carol" type="radio" name="slider" id="item-3">
                <input class="input-carol" type="radio" name="slider" id="item-4">
                <input class="input-carol" class="input-carol" type="radio" name="slider" id="item-5">
                <input  class="input-carol" type="radio" name="slider" id="item-6">
                <input class="input-carol"v type="radio" name="slider" id="item-7">
                <input class="input-carol" type="radio" name="slider" id="item-8">

                <div class="cards cards-carol">
                    <label class="card card-carol" for="item-1" id="song-1">
                        
                        <div class='carousel-item'>
                            <div class='media-container-row'><div class='col-md-12'><div class='card-wrap'><div class='content-wrap'>
                            <p class='card-text mbr-fonts-style align-center display-7'>detailssssssssssss</p>
                            <h5 class='mbr-section-title card-title mbr-fonts-style align-center m-0 display-5' style='font-weight: bold;font-size: 20px;'>Title</h5>
                            <h6 class='mbr-role mbr-fonts-style align-center mb-3 display-4' style='font-size: 12px;'>signiture</h6>
                            </div></div></div></div></div>

                    </label>
                    <label class="card card-carol" for="item-2" id="song-2">
                        <img src="https://images.unsplash.com/photo-1559386484-97dfc0e15539?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1234&q=80" alt="song">
                    </label>
                    <label class="card card-carol" for="item-3" id="song-3">
                        <img src="https://images.unsplash.com/photo-1533461502717-83546f485d24?ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=60" alt="song">
                    </label>
                    <label class="card card-carol" for="item-4" id="song-4">
                        <img src="images/manager.jpg" alt="song">
                    </label>
                    <label class="card card-carol" for="item-5" id="song-5">
                        <img src="images/manager1.jpg" alt="song">
                    </label>
                    <label class="card card-carol" for="item-6" id="song-6">
                        <img src="assets/images/team1.jpg" alt="song">
                    </label>
                    <label class="card card-carol" for="item-7" id="song-7">
                        <img src="assets/images/team2.jpg" alt="song">
                    </label>
                    <label class="card card-carol" for="item-8" id="song-8">
                        <img src="assets/images/team3.jpg" alt="song">
                    </label>
              
                </div>




            </div>








        </section>


--%>




    <%-- google review --%>
    
    <style>
        .cid-t6qHTcYS0k555 .carousel-item1 .wrap-img1 img {
            max-height: 260px !important;
        }

        @media (min-width: 992px) {
            .cid-t6qHTcYS0k555 .col-lg-15 {
                -ms-flex: 0 0 80% !important;
                -webkit-flex: 0 0 80% !important;
                flex: 0 0 80% !important;
                max-width: 70% !important;
                width: 70% !important;
            }
        }

    </style>


<%--

<section class="clients cid-t6qHTcYS0k555" data-interval="false" id="clients-f2">
        <div class="container mb-5">
            <div class="media-container-row">
                <div class="col-12 align-center">
                    <h2 class="mbr-section-title pb-3 mbr-fonts-style display-2">
                        5-star Google Review
                    </h2>
                </div>
            </div>
        </div>

    <div class="container">
        <div class="carousel slide" role="listbox" data-pause="true" data-keyboard="false" data-ride="carousel" data-interval="5000">
            <div class="carousel-inner" data-visible="5">
            <div class="carousel-item1 ">
                    <div class="media-container-row">
                        <div class="col-md-12">
                            <div class="wrap-img1">
                                <img src="images/google/google1.jpg" class="img-responsive clients-img">
                            </div>
                        </div>
                    </div>
                </div><div class="carousel-item1 ">
                    <div class="media-container-row">
                        <div class="col-md-12">
                            <div class="wrap-img1">
                                <img src="images/google/google2.jpg" class="img-responsive clients-img">
                            </div>
                        </div>
                    </div>
                </div><div class="carousel-item1 ">
                    <div class="media-container-row">
                        <div class="col-md-12">
                            <div class="wrap-img1 ">
                                <img src="images/google/google3.jpg" class="img-responsive clients-img">
                            </div>
                        </div>
                    </div>
                </div><div class="carousel-item1 ">
                    <div class="media-container-row">
                        <div class="col-md-12">
                            <div class="wrap-img1 ">
                                <img src="images/google/google4.jpg" class="img-responsive clients-img">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item1 ">
                    <div class="media-container-row">
                        <div class="col-md-12">
                            <div class="wrap-img1 ">
                                <img src="images/google/google5.jpg" class="img-responsive clients-img">
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="carousel-item1 ">
                    <div class="media-container-row">
                        <div class="col-md-12">
                            <div class="wrap-img1 ">
                                <img src="images/google/google6.jpg" class="img-responsive clients-img">
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="carousel-item1 ">
                    <div class="media-container-row">
                        <div class="col-md-12">
                            <div class="wrap-img1 ">
                                <img src="images/google/google7.jpg" class="img-responsive clients-img">
                            </div>
                        </div>
                    </div>
                </div>
                 <div class="carousel-item1 ">
                    <div class="media-container-row">
                        <div class="col-md-12">
                            <div class="wrap-img1 ">
                                <img src="images/google/google8.jpg" class="img-responsive clients-img">
                            </div>
                        </div>
                    </div>
                </div>


            </div>
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

--%>






    <%-- Google review 2 --%>
    <style>
 

main#carousel {
  grid-row: 1 / 2;
  grid-column: 1 / 8;
  width: 100vw;
  height: 500px;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
  transform-style: preserve-3d;
  perspective: 600px;
  --items: 5;
  --middle: 3;
  --position: 1;
  pointer-events: none;
}

.div-item {
  position: absolute;
  width: 300px;
  height: 400px;
  background-color: coral;
  --r: calc(var(--position) - var(--offset));
  --abs: max(calc(var(--r) * -1), var(--r));
  transition: all 0.25s linear;
  transform: rotateY(calc(-10deg * var(--r)))
    translateX(calc(-300px * var(--r)));
  z-index: calc((var(--position) - var(--abs)));
}

.div-item:nth-of-type(1) {
  --offset: 1;
  background-color: #90f1ef;
}
.div-item:nth-of-type(2) {
  --offset: 2;
  background-color: #ff70a6;
}
.div-item:nth-of-type(3) {
  --offset: 3;
  background-color: #ff9770;
}
.div-item:nth-of-type(4) {
  --offset: 4;
  background-color: #ffd670;
}
.div-item:nth-of-type(5) {
  --offset: 5;
  background-color: #e9ff70;
}

.input-review:nth-of-type(1) {
  grid-column: 2 / 3;
  grid-row: 2 / 3;
}
input:nth-of-type(1):checked ~ main#carousel {
  --position: 1;
}

input:nth-of-type(2) {
  grid-column: 3 / 4;
  grid-row: 2 / 3;
}
input:nth-of-type(2):checked ~ main#carousel {
  --position: 2;
}

input:nth-of-type(3) {
  grid-column: 4 /5;
  grid-row: 2 / 3;
}
input:nth-of-type(3):checked ~ main#carousel {
  --position: 3;
}

input:nth-of-type(4) {
  grid-column: 5 / 6;
  grid-row: 2 / 3;
}
input:nth-of-type(4):checked ~ main#carousel {
  --position: 4;
}

input:nth-of-type(5) {
  grid-column: 6 / 7;
  grid-row: 2 / 3;
}
input:nth-of-type(5):checked ~ main#carousel {
  --position: 5;
}

    </style>


<%--    <section class="clients cid-t6qHTcYS0k" data-interval="false" id="clients-f22">
        <div class="container mb-5">
            <div class="media-container-row">
                <div class="col-12 align-center">
                    <h2 class="mbr-section-title pb-3 mbr-fonts-style display-2">5-star Google Review
                    </h2>
                </div>
            </div>
        </div>

        <div class="container">

            <input type="radio" name="position" checked />
            <input type="radio" name="position" />
            <input type="radio" name="position" />
            <input type="radio" name="position" />
            <input type="radio" name="position" />
            <main id="carousel">
                <div class="item position"></div>
                <div class="item position"></div>
                <div class="item position"></div>
                <div class="item position"></div>
                <div class="item position"></div>
            </main>


        </div>
    </section>--%>

    <%-- Google Review --%>
<script src="https://apps.elfsight.com/p/platform.js" defer></script>
<div class="elfsight-app-ad90be6c-bd08-4e22-abc2-7bad395dcb6d"></div>

    <%-- Whatsapp button --%>
    <script src="https://apps.elfsight.com/p/platform.js" defer></script>
<div class="elfsight-app-9a93409a-9a57-414f-88dc-ffad6b5588a9"></div>



    <div style="margin-bottom: 3rem;">

    </div>

    <style>
        .pic-testimonial {
            width: 25%;
            margin: 0 auto;
            border-radius: 50%;
            /* position: absolute; */
            left: 35%;
            margin-top: 1rem;
        }

            .pic-testimonial img {
                border-radius: 50%;
            }
        
        /* Remove ads */
        .llyszt div a {
            display: none !important;
        }
        .kPOGIE a[href*="https://elfsight.com/google-reviews-widget/?utm_source=websites&utm_medium=clients&utm_content=google-reviews&utm_term=localhost:62679&utm_campaign=free-widget"],
        .kPOGIE a[href*="https://elfsight.com/google-reviews-widget/?utm_source=websites&utm_medium=clients&utm_content=google-reviews&utm_term=hossnotarkesh.com&utm_campaign=free-widget"]
        {
            display: none !important;
        }
        .lfmUON a {
         
        }
    </style>

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

