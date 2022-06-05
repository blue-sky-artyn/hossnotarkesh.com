﻿<%@ Page Title="" Language="C#" MasterPageFile="~/footer.master" AutoEventWireup="true" CodeFile="info-details.aspx.cs" Inherits="info_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceFooterHead" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="contentPlaceFooterBody" Runat="Server">
    <!-- Breadcrumb area Start -->
        <div class="breadcrumb-area bg-color ptb--90" data-bg-color="#f6f6f6">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="d-flex justify-content-between align-items-center flex-sm-row flex-column">
                            <h1 class="page-title">Information Details</h1>
                            <ul class="breadcrumb">
                                <li><a href="default.aspx">Home</a></li>
                                <li class="current"><span>Information Details</span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb area End -->

        <!-- Main Content Wrapper Start -->
        <div class="main-content-wrapper">
            <div class="page-content-inner ptb--80">
                <div class="container">
                    <div class="row mb--75">
                        <div class="col-lg-8 col-xl-9 mb-md--50">
                            <div class="single-post">
                                <!-- Single Blog Start Here -->
                                <article class="single-post-details">
                                    <div class="entry-header">
                                        <h2 id="titleInfoId" runat="server" class="entry-title">Monday to Sunday</h2>
                                        <div class="entry-meta mb--30">
                                            <a id="infosubTitleTId" runat="server" class="posted-on">September 15, 2018</a>
                                            <span class="meta-separator">-</span>
                                            <a id="infoDateId" runat="server" href="#">Life Style</a>
                                        </div>
                                    </div>
                                    <div class="entry-media">
                                        <div class="image">
                                            <img id="infoPic" runat="server" src="assets/img/blog/blog_detail_1.jpg" alt="Post Thumbnail">
                                        </div>
                                    </div>
                                    <div id="infoDetId" runat="server" class="entry-content">
                                        <p>Praesent sed ex vel mauris eleifend mollis. Vestibulum dictum sodales ante, ac pulvinar urna sollicitudin in. Suspendisse sodales dolor nec mattis convallis. Quisque ut nulla viverra, posuere lorem eget, ultrices metus. Nulla facilisi. Duis aliquet, eros in auctor aliquam, tortor justo laoreet nisi, nec pulvinar lectus diam nec libero. Nullam sit amet dia</p>
                                        <p>Cras porta posuere lectus, vitae consectetur dolor elementum id. Ut interdum, sem eget varius eleifend, ex risus gravida purus, sed finibus tortor nisi maximus orci. Etiam vel sollicitudin nisi. In ipsum tortor, vulputate nec est in, pharetra malesuada diam. Praesent ullamcorper lacinia ultrices. Etiam semper cursus mi, id tempor neque porta non. Praesent nec faucibus risus. Morbi aliquam hendrerit felis, eu cursus orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce et ante a felis egestas varius quis eget urna. Mauris blandit, sem venenatis blandit vehicula, neque leo eleifend ante, id porta enim odio sit amet dolor. Duis finibus magna id justo egestas tincidunt. Aliquam eu tristique lorem. Morbi rutrum accumsan sem, ut rhoncus tortor tincidunt eget. Phasellus eros massa, molestie id molestie a, maximus id tortor. Aenean sit amet arcu varius, elementum sapien ut, tristique est.</p>
                                        <p>Nullam viverra convallis tellus. Nulla fermentum dictum congue. Quisque enim felis, molestie ac tempor vel, auctor a magna. Sed viverra laoreet turpis, vitae pellentesque sem viverra sed. Integer posuere est a sem viverra</p>
                                        <figure class="mb--30 image-with-video-btn btn-center">
                                            <a href="https://www.youtube.com/watch?v=Rp19QD2XIGM" class="video-popup">
                                                <img src="assets/img/blog/blog_detail_2.jpg" alt="blog">
                                                <span class="video-btn video-btn-2"></span>
                                            </a>
                                        </figure>
                                        <h3>7 Reason why you need to work for a big company</h3>
                                        <p>Praesent sed ex vel mauris eleifend mollis. Vestibulum dictum sodales ante, ac pulvinar urna sollicitudin in. Suspendisse sodales dolor nec mattis convallis. Quisque ut nulla viverra, posuere lorem eget, ultrices metus. Nulla facilisi. Duis aliquet, eros in auctor aliquam, tortor justo laoreet nisi, nec pulvinar lectus diam nec libero. Nullam sit amet dia</p>
                                        <ul class="list list-disc">
                                            <li>Praesent sed ex vel mauris eleifend mollis. Vestibulum dictum sodales ante, ac pulvinar urna sollicitudin in. Suspendisse sodales dolor nec mattis conva.</li>
                                            <li>Cras porta posuere lectus, vitae consectetur dolor elementum id. Ut interdum, sem eget varius eleifend</li>
                                        </ul>
                                        <p>Cras porta posuere lectus, vitae consectetur dolor elementum id. Ut interdum, sem eget varius eleifend, ex risus gravida purus, sed finibus tortor nisi maximus orci. Etiam vel sollicitudin nisi. In ipsum tortor, vulputate nec est in, pharetra malesuada diam. Praesent ullamcorper lacinia ultrices. Etiam semper cursus mi, id tempor neque porta non. Praesent nec faucibus risus. Morbi aliquam hendrerit felis, eu cursus orci. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce et ante a felis egestas varius quis eget urna. Mauris blandit, sem venenatis blandit vehicula, neque leo eleifend ante, id porta enim odio sit amet dolor. Duis finibus magna id justo egestas tincidunt. Aliquam eu tristique lorem. Morbi rutrum accumsan sem, ut rhoncus tortor tincidunt eget.</p>
                                    </div>
                                    <div class="entry-footer-meta">
                                        <div class="tag-list">
                                            <span>
                                                <i class="fa fa-tags"></i>
                                            </span>
                                            <span>
                                               
                                            </span>
                                        </div>
                                        <div class="author">
                                            <span>
                                                Author: <a href="#">Sama Kariminia</a>
                                            </span>
                                        </div>
                                    </div>
                                </article>
                                <!-- Single Blog End Here -->

                                

                               
                                
                               
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4">
                            <div class="sidebar-inner">
                                <div class="widget blog-widget widget-categories mb--40">
                                    <h3 class="widget-title mb--25">Categories</h3>
                                    <ul id="catInfoId" runat="server" class="widget-list category-list">
                                        <li>
                                            <a href="">
                                                <span>Cafe</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <span>Fashion</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <span>Furniture</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <span>Life Style</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <span>New Look</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <span>Photography</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <span>Technology</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                <span>Travel</span>
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="widget blog-widget widget-recent-posts mb--40">
                                    <h3 class="widget-title mb--25">Recent Post</h3>
                                    <div id="recentPostId" runat="server" class="recent-post">
                                        <div class="recent-post__item">
                                            <div class="recent-post__thumb">
                                                <a href="single-post.html">
                                                    <img src="assets/img/blog/blog-1-70x70.jpg" alt="Blog">
                                                </a>
                                            </div>
                                            <div class="recent-post__content">
                                                <h3 class="recent-post__title text-truncate">
                                                    <a href="single-post.html">How I Edit My iPhone Photos</a>
                                                </h3>
                                                <span class="recent-post__meta">September 15, 2018</span>
                                            </div>
                                        </div>
                                        <div class="recent-post__item">
                                            <div class="recent-post__thumb">
                                                <a href="single-post.html">
                                                    <img src="assets/img/blog/blog-3-70x70.jpg" alt="Blog">
                                                </a>
                                            </div>
                                            <div class="recent-post__content">
                                                <h3 class="recent-post__title text-truncate">
                                                    <a href="single-post.html">Summer Night Party</a>
                                                </h3>
                                                <span class="recent-post__meta">September 15, 2018</span>
                                            </div>
                                        </div>
                                        <div class="recent-post__item">
                                            <div class="recent-post__thumb">
                                                <a href="single-post.html">
                                                    <img src="assets/img/blog/blog_beuty-70x70.jpg" alt="Blog">
                                                </a>
                                            </div>
                                            <div class="recent-post__content">
                                                <h3 class="recent-post__title text-truncate">
                                                    <a href="single-post.html">10 ways care your skin in home</a>
                                                </h3>
                                                <span class="recent-post__meta">September 15, 2018</span>
                                            </div>
                                        </div>
                                        <div class="recent-post__item">
                                            <div class="recent-post__thumb">
                                                <a href="single-post.html">
                                                    <img src="assets/img/blog/blog_beuty2-70x70.jpg" alt="Blog">
                                                </a>
                                            </div>
                                            <div class="recent-post__content">
                                                <h3 class="recent-post__title text-truncate">
                                                    <a href="single-post.html">Forever youth</a>
                                                </h3>
                                                <span class="recent-post__meta">September 15, 2018</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- Main Content Wrapper Start -->
</asp:Content>

