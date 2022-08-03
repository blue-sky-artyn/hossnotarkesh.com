<%@ Page Title="" Language="C#" MasterPageFile="~/SingleMaster.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="_Default" %>

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
    </style>
    
                <style>
                    .avatar-placeholder {margin-bottom: 5rem;}
                    .avatar1 {    height: 100px;
    overflow: hidden;
        width: 10%;
    margin: 0 auto;    border-radius: 50%;
                    }
                    .avatar {display: inline-block;
    width: 120px;
    height: 120px;
    margin-bottom: 1.6rem;
    overflow: hidden;
    border-radius: 50%;}
                    .avatar-place {width: 100%;}
                    .avatar img {
        width: 100%;
    min-width: 100%;
    min-height: 100%;
                    }
                    .content-avatar {text-align:center;margin-top: 2rem;}
                    .centerize {text-align: center;}
                    .intro-avatar {line-height: 7px;margin-top: 2rem;}
                    .name-avatar {font-size: -0.2rem;}
                    .post-avatar {font-weight: bold;}
                </style>
    <style>
        .small-timeline {font-size: 14px;padding: 1rem 1.5rem !important;}
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <%-- Slider --%>
    <section class="cid-qTkA127IK8 mbr-fullscreen" id="header2-1">


        <video autoplay muted loop>
            <source src="assets/video/hoss360p.mp4" type="video/mp4">
            <source src="assets/video/hoss360p.ogg" type="video/ogg">
            Your browser does not support the video tag.
        </video>


        <div class="mbr-overlay" style="opacity: 0.5; background-color: rgb(118, 118, 118);"></div>

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
                    <div class="centerize card-block"><div class="avatar"><img src="images/face1.jpg" alt="" /></div></div>    
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
                    <div class="centerize card-block"><div class="avatar"><img src="images/face1.jpg" alt="" /></div></div>    
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
                    <div class="centerize card-block"><div class="avatar"><img src="images/face1.jpg" alt="" /></div></div>    
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

