<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html class="">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <!-- PAGE TITLE -->
    <title>Juntos - Charity &amp; Association Template</title>
    <!-- MAKE IT RESPONSIVE -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- BOOTSTRAP -->
    <link href="${ctx}/static/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <!-- COLORS -->
    <style type="text/css">
        /* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
        * * COLOR SHEME 1 #0DB4E9 (blue) #82b440 (green)
        * * COLOR SHEME 2 #6BD6D6 #D66B6B
        * * COLOR SHEME 3 #B782ED #B8ED82
        * * COLOR SHEME 4 #917B54 #F7A516
        * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */
        .colored,
        a:hover,
        .event a,
        .post a,
        .section-content-colored .section-content .event-content a.btn:hover,
        .section-content-colored .section-content .post-content a.btn:hover,
        .section-full-colored,
        .section a.btn:hover {
            color: #82b440;
        }

        .section-content-colored .section-content .event-content a.btn:hover,
        .section-content-colored .section-content .post-content a.btn:hover,
        .section a.btn:hover,
        .section-image a.btn.btn-donation,
        #menu a.btn-success {
            border-color: #82b440;
        }

        .section-full-colored,
        .section-content-colored .section-content,
        .section a.btn,
        .section-full-colored .section-content,
        .section-content-colored .section-content .event-content a.btn,
        .section-content-colored .section-content .post-content a.btn,
        .section-image a.btn.btn-donation,
        #single-page .section-header,
        #menu a.btn-success {
            background-color: #82b440;
        }

        .section-content-colored.with-arrow:after,
        .section-full-colored.with-arrow:after {
            border-top-color: #82b440;
        }

        a,
        .section-content-colored.color2 .section-content .event-content a.btn:hover,
        .section-content-colored.color2 .section-content .post-content a.btn:hover {
            color: #0DB4E9;
        }

        .is-sticky #navigation,
        .mean-container .mean-nav ul,
        .pace .pace-progress {
            background-color: #0DB4E9;
        }

        .pace .pace-progress-inner {
            box-shadow: 0 0 10px #0DB4E9, 0 0 5px #0DB4E9;
        }

        .pace .pace-activity {
            border-top-color: #0DB4E9;
            border-left-color: #0DB4E9;
        }

        .section-content-colored.color2 .section-content .event-content a.btn,
        .section-content-colored.color2 .section-content .post-content a.btn,
        .section-content-colored.color2 .section-content {
            background-color: #0DB4E9;
        }

        .section-content-colored.color2 .event-content a.btn:hover,
        .section-content-colored.color2 .post-content a.btn:hover {
            border-color: #0DB4E9;
        }

        .section-content-colored.color2.with-arrow:after,
        .section-full-colored.color2.with-arrow:after {
            border-top-color: #0DB4E9;
        }
    </style>
    <!-- MAIN STYLE -->
    <link href="${ctx}/static/juntos/style.css" rel="stylesheet" media="screen">
    <!-- FONTS -->
    <link href="${ctx}/static/juntos/css.css" rel="stylesheet" type="text/css">
    <link href="${ctx}/static/juntos/css_002.css" rel="stylesheet" type="text/css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="${ctx}/static/juntos/html5shiv.js"></script>
    <script src="${ctx}/static/juntos/respond.min.js"></script>
    <![endif]-->
    <!--unslider-->
    <link href="${ctx}/static/unslider/css/unslider.css" rel="stylesheet" type="text/css">
</head>
<!-- START BODY -->
<body class="  pace-done">
<div class="pace  pace-inactive">
    <div data-progress="99" data-progress-text="100%" style="width: 100%;" class="pace-progress">
        <div class="pace-progress-inner"></div>
    </div>
    <div class="pace-activity"></div>
</div>
<div id="page">
    <!-- START MAIN CONTAINER -->
    <div id="main-container">
        <!-- START NAVIGATION -->
        <div style="height: 96px;" class="sticky-wrapper" id="navigation-sticky-wrapper">
            <nav style="" id="navigation">
                <div class="container">
                    <!-- LOGO GOES HERE -->
                    <a href="#" id="logo">晓春家</a>
                    <!-- MENU -->
                    <nav>
                        <ul id="menu">
                            <li><a href="#home">家</a></li>
                            <li><a href="#team">亲子</a></li>
                            <li><a href="#services">美食</a></li>
                            <li><a href="#gallery">美景</a></li>
                            <li><a href="#events">读书</a></li>
                            <li><a href="#blog">饭碗</a></li>
                            <li><a href="#contact">关于</a></li>
                            <li><a href="#donation" class="btn btn-success">Donation</a></li>
                        </ul>
                    </nav>
                </div>
            </nav>
        </div>
        <!-- END NAVIGATION -->

        <!-- START PROJECT SECTION -->
        <section style="height: 947px;" id="home" class="section">
            <span style="display: inline;" class="sequence-prev"></span>
            <span style="display: inline;" class="sequence-next"></span>

            <ul class="sequence-canvas">
                <li class="animate-out"
                    style="background-image: url(${ctx}/static/images/5.jpg); display: list-item; z-index: 1;">
                    <div style="" class="slide-content">
                        <h1>Welcome !</h1>
                        <h3></h3>
                    </div>
                </li>
                <li style="background-color: rgb(13, 180, 233); display: list-item;">
                    <div class="slide-content">
                        <h1>The Family</h1>
                        <div class="center row-fluid">
                            <div class="col-sm-6 col-md-4 col-lg-3 ">
                                <img src="${ctx}/static/images/6.jpg"
                                     class="center" alt="皮">
                                <h3>皮</h3>
                                <p>Few words about the creation, the ideas, biography of the funder...</p>
                            </div>
                            <div class="col-sm-6 col-md-4 col-lg-3 ">
                                <img src="${ctx}/static/images/6.jpg"
                                     class="center" alt="点点(Myron)">
                                <h3>点点(Myron)</h3>
                                <p>Few words about the creation, the ideas, biography of the funder...</p>
                            </div>
                            <div class="col-sm-6 col-md-4 col-lg-3 ">
                                <img src="${ctx}/static/images/6.jpg"
                                     class="center" alt="小驴">
                                <h3>小驴</h3>
                                <p>Few words about the creation, the ideas, biography of the funder...</p>
                            </div>
                            <div class="col-sm-6 col-md-4 col-lg-3 ">
                                <img src="${ctx}/static/images/6.jpg"
                                     class="center" alt="晓春">
                                <h3>晓春</h3>
                                <p>Few words about the creation, the ideas, biography of the funder...</p>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            <ul style="display: block;" class="sequence-pagination">
                <li class="current">Welcome</li>
                <li class="">Family</li>
            </ul>
        </section>
        <!-- END PROJECT SECTION -->

        <!-- START TEAM SECTION -->
        <section id="team" class="center section with-arrow">
            <!-- SECTION TITLE -->
            <div class="section-header">
                <h1>Who We Are</h1>
                <hr>
            </div>
            <!-- SECTION CONTENT -->
            <div class="section-content section-no-top-padding">
                <div class="container">
                    <h3>We are <span class="colored">64</span> volunteers, All members of <span class="colored">Association Name</span>.
                        Our association find funds,
                        in the purpose of fighting <span class="colored">Your Causes here</span>. We already performed
                        <span class="colored">17</span> projects in 5 continents
                        during the last <span class="colored">5 years</span>.
                    </h3>
                    <a href="#contact" class="btn btn-default">Get In Touch</a>
                </div>
            </div>
        </section>
        <!-- END TEAM SECTION -->

        <!-- START SERVICES SECTION -->
        <section id="services" class="section section-full-colored">
            <!-- SECTION TITLE -->
            <div class="section-header">
                <h1>What We Do</h1>
                <hr>
            </div>
            <!-- SECTION CONTENT -->
            <div class="section-content">
                <div class="container">
                    <div class="services-slider flexslider">
                        <div style="overflow: hidden; position: relative;" class="flex-viewport">
                            <ul style="width: 1000%; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);"
                                class="slides">
                                <!-- START SERVICE -->
                                <li style="width: 254px; float: left; display: block;">
                                    <div class="slide">
                                        <span class="icon icon-large icon-glass"></span>
                                        <h3>Reception</h3>
                                        <p>Here it's just an example of the activities that you can do with your charity
                                            to get funds. Or something else...</p>
                                    </div>
                                </li>
                                <!-- END SERVICE -->
                                <li style="width: 254px; float: left; display: block;">
                                    <div class="slide">
                                        <span class="icon icon-large icon-users2"></span>
                                        <h3>Babysitting</h3>
                                        <p>Here it's just an example of the activities that you can do with your charity
                                            to get funds. Or something else...</p>
                                    </div>
                                </li>
                                <li style="width: 254px; float: left; display: block;">
                                    <div class="slide">
                                        <span class="icon icon-large  icon-leaf"></span>
                                        <h3>Gardening</h3>
                                        <p>Here it's just an example of the activities that you can do with your charity
                                            to get funds. Or something else...</p>
                                    </div>
                                </li>
                                <li style="width: 254px; float: left; display: block;">
                                    <div class="slide">
                                        <span class="icon icon-large icon-gift"></span>
                                        <h3>Gift Wrapping</h3>
                                        <p>Here it's just an example of the activities that you can do with your charity
                                            to get funds. Or something else...</p>
                                    </div>
                                </li>
                                <li style="width: 254px; float: left; display: block;">
                                    <div class="slide">
                                        <span class="icon icon-large icon-coin"></span>
                                        <h3>Sale</h3>
                                        <p>Here it's just an example of the activities that you can do with your charity
                                            to get funds. Or something else...</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <ol class="flex-control-nav flex-control-paging">
                            <li><a class="flex-active">1</a></li>
                            <li><a>2</a></li>
                        </ol>
                        <ul class="flex-direction-nav">
                            <li><a tabindex="-1" class="flex-prev flex-disabled" href="#">Previous</a></li>
                            <li><a class="flex-next" href="#">Next</a></li>
                        </ul>
                    </div>
                    <!-- SECTION BUTTON -->
                    <div class="center">
                        <a href="#events" class="btn btn-default">Our Diary</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- END SERVICES SECTION -->

        <!-- START GALLERY SECTION -->
        <section id="gallery" class="section">
            <!-- SECTION TITLE -->
            <div class="section-header with-arrow">
                <h1>Gallery</h1>
                <hr>
            </div>
            <!-- SECTION CONTENT -->
            <div class="content-section">
                <div id="gallery-slider">

                    <div style="overflow: hidden; position: relative;" class="flex-viewport">
                        <ul style="width: 1400%; transition-duration: 0s; transform: translate3d(-197px, 0px, 0px);"
                            class="slides">
                            <!-- SLIDE OF 2 GALLERY ITEMS -->
                            <li style="width: 300px; float: left; display: block;">
                                <!-- FIRST ITEM GALLERY -->
                                <div class="gallery-item">
                                    <a href="http://2f-design.fr/juntos/demo/images/gallery/1.jpg"
                                       data-fancybox-group="group1" class="fancybox">
                                        <span>Image Title</span>
                                        <img draggable="false"
                                             src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/1_002.jpg"
                                             alt="Image gallery" height="200" width="300">
                                    </a>
                                </div>
                                <!-- SECOND ITEM GALLERY -->
                                <div class="gallery-item">
                                    <a href="http://2f-design.fr/juntos/demo/images/gallery/2.jpg"
                                       data-fancybox-group="group1" class="fancybox">
                                        <span>Image Title</span>
                                        <img draggable="false"
                                             src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/2_003.jpg"
                                             alt="Image gallery" height="200" width="300">
                                    </a>
                                </div>
                            </li>
                            <!-- END SLIDE -->
                            <li style="width: 300px; float: left; display: block;">
                                <div class="gallery-item">
                                    <a href="http://2f-design.fr/juntos/demo/images/gallery/3.jpg"
                                       data-fancybox-group="group1" class="fancybox">
                                        <span>Image Title</span>
                                        <img draggable="false"
                                             src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/3_003.jpg"
                                             alt="Image gallery" height="200" width="300">
                                    </a>
                                </div>
                                <div class="gallery-item">
                                    <a href="http://2f-design.fr/juntos/demo/images/gallery/4.jpg"
                                       data-fancybox-group="group1" class="fancybox">
                                        <span>Image Title</span>
                                        <img draggable="false"
                                             src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/4.jpg"
                                             alt="Image gallery" height="200" width="300">
                                    </a>
                                </div>
                            </li>
                            <li style="width: 300px; float: left; display: block;">
                                <div class="gallery-item">
                                    <a href="http://2f-design.fr/juntos/demo/images/gallery/5.jpg"
                                       data-fancybox-group="group1" class="fancybox">
                                        <span>Image Title</span>
                                        <img draggable="false"
                                             src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/5.jpg"
                                             alt="Image gallery" height="200" width="300">
                                    </a>
                                </div>
                                <div class="gallery-item">
                                    <a href="http://2f-design.fr/juntos/demo/images/gallery/6.jpg"
                                       data-fancybox-group="group1" class="fancybox">
                                        <span>Image Title</span>
                                        <img draggable="false"
                                             src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/6.jpg"
                                             alt="Image gallery" height="200" width="300">
                                    </a>
                                </div>
                            </li>
                            <li style="width: 300px; float: left; display: block;">
                                <div class="gallery-item">
                                    <a href="http://2f-design.fr/juntos/demo/images/gallery/2.jpg"
                                       data-fancybox-group="group1" class="fancybox">
                                        <span>Image Title</span>
                                        <img draggable="false"
                                             src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/2_003.jpg"
                                             alt="Image gallery" height="200" width="300">
                                    </a>
                                </div>
                                <div class="gallery-item">
                                    <a href="http://2f-design.fr/juntos/demo/images/gallery/4.jpg"
                                       data-fancybox-group="group1" class="fancybox">
                                        <span>Image Title</span>
                                        <img draggable="false"
                                             src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/4.jpg"
                                             alt="Image gallery" height="200" width="300">
                                    </a>
                                </div>
                            </li>
                            <li style="width: 300px; float: left; display: block;">
                                <div class="gallery-item">
                                    <a href="http://2f-design.fr/juntos/demo/images/gallery/1.jpg"
                                       data-fancybox-group="group1" class="fancybox">
                                        <span>Image Title</span>
                                        <img draggable="false"
                                             src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/1_002.jpg"
                                             alt="Image gallery" height="200" width="300">
                                    </a>
                                </div>
                                <div class="gallery-item">
                                    <a href="http://2f-design.fr/juntos/demo/images/gallery/6.jpg"
                                       data-fancybox-group="group1" class="fancybox">
                                        <span>Image Title</span>
                                        <img draggable="false"
                                             src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/6.jpg"
                                             alt="Image gallery" height="200" width="300">
                                    </a>
                                </div>
                            </li>
                            <li style="width: 300px; float: left; display: block;">
                                <div class="gallery-item">
                                    <a href="http://2f-design.fr/juntos/demo/images/gallery/2.jpg"
                                       data-fancybox-group="group1" class="fancybox">
                                        <span>Image Title</span>
                                        <img draggable="false"
                                             src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/2_003.jpg"
                                             alt="Image gallery" height="200" width="300">
                                    </a>
                                </div>
                                <div class="gallery-item">
                                    <a href="http://2f-design.fr/juntos/demo/images/gallery/4.jpg"
                                       data-fancybox-group="group1" class="fancybox">
                                        <span>Image Title</span>
                                        <img draggable="false"
                                             src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/4.jpg"
                                             alt="Image gallery" height="200" width="300">
                                    </a>
                                </div>
                            </li>
                            <li style="width: 300px; float: left; display: block;">
                                <div class="gallery-item">
                                    <a href="http://2f-design.fr/juntos/demo/images/gallery/5.jpg"
                                       data-fancybox-group="group1" class="fancybox">
                                        <span>Image Title</span>
                                        <img draggable="false"
                                             src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/5.jpg"
                                             alt="Image gallery" height="200" width="300">
                                    </a>
                                </div>
                                <div class="gallery-item">
                                    <a href="http://2f-design.fr/juntos/demo/images/gallery/2.jpg"
                                       data-fancybox-group="group1" class="fancybox">
                                        <span>Image Title</span>
                                        <img draggable="false"
                                             src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/2_003.jpg"
                                             alt="Image gallery" height="200" width="300">
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <ol class="flex-control-nav flex-control-paging">
                        <li><a class="">1</a></li>
                        <li><a class="flex-active">2</a></li>
                    </ol>
                    <ul class="flex-direction-nav">
                        <li><a tabindex="-1" class="flex-prev" href="#">Previous</a></li>
                        <li><a tabindex="-1" class="flex-next flex-disabled" href="#">Next</a></li>
                    </ul>
                </div>
            </div>
        </section>
        <!-- END GALLERY SECTION -->

        <!-- START EVENTS SECTION -->
        <section id="events" class="section section-content-colored with-arrow color2">
            <!-- SECTION TITLE -->
            <div class="section-header with-arrow">
                <h1>Events In Coming</h1>
                <hr>
            </div>
            <!-- SECTION CONTENT -->
            <div class="section-content">
                <div class="container">
                    <div class="flexslider events-slider">

                        <div style="overflow: hidden; position: relative;" class="flex-viewport">
                            <ul style="width: 800%; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);"
                                class="slides">
                                <!-- START EVENT -->
                                <li style="width: 340px; float: left; display: block;">
                                    <div class="slide">
                                        <div class="event">
                                            <!-- EVENT FEATURED IMAGE -->
                                            <div class="event-header">
                                                <a href="http://2f-design.fr/juntos/demo/single-event.html">
                                                    <img draggable="false"
                                                         src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/1_003.jpg"
                                                         alt="Event cover">
                                                </a>
                                            </div>
                                            <!-- START CONTENT -->
                                            <div class="event-content">
                                                <!-- EVENT TITLE -->
                                                <h3>Event Title</h3>
                                                <!-- EVENT DATAS -->
                                                <div class="event-data">
                                                    <p><span class="icon icon-calendar"></span> December 25, 2013</p>
                                                    <p><span class="icon icon-location"></span> 1600 Pennsylvania Ave
                                                        NW, Washington, DC</p>
                                                </div>
                                                <!-- EVENT DESCRIPTION -->
                                                <p>A text to describe your event which could be a service, a
                                                    fundraising, a reception or something else.</p>
                                                <div class="center">
                                                    <a href="http://2f-design.fr/juntos/demo/single-event.html"
                                                       class="btn btn-default">Read More</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <!-- END EVENT -->
                                <li style="width: 340px; float: left; display: block;">
                                    <div class="slide">
                                        <div class="event">
                                            <div class="event-header">
                                                <a href="http://2f-design.fr/juntos/demo/single-event.html">
                                                    <img draggable="false"
                                                         src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/2.jpg"
                                                         alt="Event cover">
                                                </a>
                                            </div>
                                            <div class="event-content">
                                                <h3>Event Title</h3>
                                                <div class="event-data">
                                                    <p><span class="icon icon-calendar"></span> January 5, 2014</p>
                                                    <p><span class="icon icon-location"></span> Champ de Mars, 5 Avenue
                                                        Anatole France</p>
                                                </div>
                                                <p>A text to describe your event which could be a service, a
                                                    fundraising, a reception or something else.</p>
                                                <div class="center">
                                                    <a href="http://2f-design.fr/juntos/demo/single-event.html"
                                                       class="btn btn-default">Read More</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li style="width: 340px; float: left; display: block;">
                                    <div class="slide">
                                        <div class="event">
                                            <div class="event-header">
                                                <a href="http://2f-design.fr/juntos/demo/single-event.html">
                                                    <img draggable="false"
                                                         src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/3_002.jpg"
                                                         alt="Event cover">
                                                </a>
                                            </div>
                                            <div class="event-content">
                                                <h3>Event Title</h3>
                                                <div class="event-data">
                                                    <p><span class="icon icon-calendar"></span> January 13, 2014</p>
                                                    <p><span class="icon icon-location"></span> London SW1A 1AA</p>
                                                </div>
                                                <p>A text to describe your event which could be a service, a
                                                    fundraising, a reception or something else.</p>
                                                <div class="center">
                                                    <a href="http://2f-design.fr/juntos/demo/single-event.html"
                                                       class="btn btn-default">Read More</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li style="width: 340px; float: left; display: block;">
                                    <div class="slide">
                                        <div class="event">
                                            <div class="event-header">
                                                <a href="http://2f-design.fr/juntos/demo/single-event.html">
                                                    <img draggable="false"
                                                         src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/4_002.jpg"
                                                         alt="Event cover">
                                                </a>
                                            </div>
                                            <div class="event-content">
                                                <h3>Event Title</h3>
                                                <div class="event-data">
                                                    <p><span class="icon icon-calendar"></span> March 2, 2014</p>
                                                    <p><span class="icon icon-location"></span> London SW1A 1AA</p>
                                                </div>
                                                <p>A text to describe your event which could be a service, a
                                                    fundraising, a reception or something else.</p>
                                                <div class="center">
                                                    <a href="http://2f-design.fr/juntos/demo/single-event.html"
                                                       class="btn btn-default">Read More</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <!-- LOAD MORE OPTION
                                <li>
                                    <div class="slide">
                                        <div class="load-more">
                                            <div class="content">
                                                <a href="#" title="load more">
                                                    <span class="icon icon-large icon-plus"></span>
                                                    <h3>Load More Events</h3>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                -->
                            </ul>
                        </div>
                        <ol class="flex-control-nav flex-control-paging">
                            <li><a class="flex-active">1</a></li>
                            <li><a>2</a></li>
                        </ol>
                        <ul class="flex-direction-nav">
                            <li><a tabindex="-1" class="flex-prev flex-disabled" href="#">Previous</a></li>
                            <li><a class="flex-next" href="#">Next</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- END EVENTS SECTION -->

        <!-- START BLOG SECTION -->
        <section id="blog" class="section with-arrow section-content-colored">
            <!-- SECTION TITLE -->
            <div class="section-header with-arrow">
                <h1>Latest Posts</h1>
                <hr>
            </div>
            <!-- SECTION CONTENT -->
            <div class="section-content">
                <div class="container">
                    <div class="flexslider posts-slider">

                        <div style="overflow: hidden; position: relative;" class="flex-viewport">
                            <ul style="width: 800%; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);"
                                class="slides">
                                <!-- START BLOG POST -->
                                <li style="width: 340px; float: left; display: block;">
                                    <div class="slide">
                                        <div class="post post-normal">
                                            <!-- FEATURED IMAGE -->
                                            <div class="post-header">
                                                <a href="http://2f-design.fr/juntos/demo/single-blog.html">
                                                    <img draggable="false"
                                                         src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/1.jpg"
                                                         alt="Blog cover">
                                                </a>
                                            </div>
                                            <div class="post-content">
                                                <!-- TITLE -->
                                                <h3>Post Title</h3>
                                                <!-- DATE -->
                                                <div class="post-data">
                                                    <p><span class="icon icon-clock"></span> December 25, 2013</p>
                                                </div>
                                                <!-- CONTENT -->
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nec
                                                    placerat sem.
                                                    Vestibulum vel tristique purus. In hac habitasse platea dictumst.
                                                    Suspendisse eget pellentesque dui...</p>
                                                <div class="center">
                                                    <a href="http://2f-design.fr/juntos/demo/single-blog.html"
                                                       class="btn btn-default">Read More</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <!-- END BLOG POST -->
                                <li style="width: 340px; float: left; display: block;">
                                    <div class="slide">
                                        <div class="post post-normal">
                                            <div class="post-header">
                                                <a href="http://2f-design.fr/juntos/demo/single-blog.html">
                                                    <img draggable="false"
                                                         src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/2_002.jpg"
                                                         alt="Blog cover">
                                                </a>
                                            </div>
                                            <div class="post-content">
                                                <h3>Post Title</h3>
                                                <div class="post-data">
                                                    <p><span class="icon icon-clock"></span> January 2, 2014</p>
                                                </div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nec
                                                    placerat sem.
                                                    Vestibulum vel tristique purus. In hac habitasse platea dictumst.
                                                    Suspendisse eget pellentesque dui...</p>
                                                <div class="center">
                                                    <a href="http://2f-design.fr/juntos/demo/single-blog.html"
                                                       class="btn btn-default">Read More</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li style="width: 340px; float: left; display: block;">
                                    <div class="slide">
                                        <div class="post post-normal">
                                            <div class="post-header">
                                                <a href="#">
                                                    <img draggable="false"
                                                         src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/3.jpg"
                                                         alt="Blog cover">
                                                </a>
                                            </div>
                                            <div class="post-content">
                                                <h3>Post Title</h3>
                                                <div class="post-data">
                                                    <p><span class="icon icon-clock"></span> January 12, 2014</p>
                                                </div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nec
                                                    placerat sem.
                                                    Vestibulum vel tristique purus. In hac habitasse platea dictumst.
                                                    Suspendisse eget pellentesque dui...</p>
                                                <div class="center">
                                                    <a href="http://2f-design.fr/juntos/demo/single-blog.html"
                                                       class="btn btn-default">Read More</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li style="width: 340px; float: left; display: block;">
                                    <div class="slide">
                                        <div class="post post-normal">
                                            <div class="post-header">
                                                <a href="http://2f-design.fr/juntos/demo/single-blog.html">
                                                    <img draggable="false"
                                                         src="Juntos%20-%20Charity%20&amp;%20Association%20Template_files/4_003.jpg"
                                                         alt="Blog cover">
                                                </a>
                                            </div>
                                            <div class="post-content">
                                                <h3>Post Title</h3>
                                                <div class="post-data">
                                                    <p><span class="icon icon-clock"></span> February 22, 2014</p>
                                                </div>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nec
                                                    placerat sem.
                                                    Vestibulum vel tristique purus. In hac habitasse platea dictumst.
                                                    Suspendisse eget pellentesque dui...</p>
                                                <div class="center">
                                                    <a href="http://2f-design.fr/juntos/demo/single-blog.html"
                                                       class="btn btn-default">Read More</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <!-- LOAD MORE OPTION
                                <li>
                                    <div class="slide">
                                        <div class="load-more">
                                            <div class="content">
                                                <a href="#" title="load more">
                                                    <span class="icon icon-large icon-plus"></span>
                                                    <h3>Load More Posts</h3>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                -->
                            </ul>
                        </div>
                        <ol class="flex-control-nav flex-control-paging">
                            <li><a class="flex-active">1</a></li>
                            <li><a>2</a></li>
                        </ol>
                        <ul class="flex-direction-nav">
                            <li><a tabindex="-1" class="flex-prev flex-disabled" href="#">Previous</a></li>
                            <li><a class="flex-next" href="#">Next</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!-- END BLOG SECTION -->

        <!-- START DONATION SECTION -->
        <section id="donation" class="section section-image"
                 style="background-image: url('images/donation_cover.jpg');">
            <div class="section-content center">
                <h2>Ready to support us ?</h2>
                <!-- DONATION BUTTON -->
                <a href="#" class="btn btn-donation btn-success">Make a Donation</a>
            </div>
        </section>
        <!-- END DONATION SECTION -->

        <!-- START CONTACT SECTION -->
        <section id="contact" class="section with-arrow">
            <!-- SECTION TITLE -->
            <div class="section-header with-arrow">
                <h1>Let's Get In Touch</h1>
                <hr>
            </div>
            <!-- SECTION CONTENT -->
            <div class="section-content">
                <div class="container">
                    <div class="row">
                        <!-- CONTACT TEXT -->
                        <div class="col-md-6">
                            <p>Sed vehicula vel nulla a interdum. Etiam bibendum urna sed sapien eleifend dictum.
                                Ut adipiscing sit amet diam quis ornare. Morbi ultricies venenatis tempus. Vestibulum
                                eget condimentum tellus.</p>
                            <!-- SOCIAL BUTTTONS -->
                            <ul class="social-list">
                                <li><a href="#" class="btn btn-facebook"><span class="icon icon-facebook"></span> Like
                                    our Page on Facebook</a></li>
                                <li><a href="#" class="btn btn-twitter"><span class="icon icon-twitter"></span> Follow
                                    us on Twitter</a></li>
                                <li><a href="#" class="btn btn-google"><span class="icon icon-google-plus"></span>
                                    Follow us on Google +</a></li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <!-- CONTACT FORM -->
                            <form class="form-horizontal" method="post" action="index.php" id="form">
                                <div class="form-group">
                                    <label for="contact_name" class="col-lg-2 control-label">Name</label>
                                    <div class="col-lg-10">
                                        <input class="form-control" name="contact_name" type="text">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="contact_email" class="col-lg-2 control-label">Email</label>
                                    <div class="col-lg-10">
                                        <input class="form-control" name="contact_email" type="email">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="contact_textarea" class="col-lg-2 control-label">Message</label>
                                    <div class="col-lg-10">
                                        <textarea class="form-control" rows="3" name="contact_textarea"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-offset-2 col-lg-10">
                                        <input name="submitted" id="submitted" value="true" type="hidden">
                                        <button type="submit" class="btn btn-default btn-send" name="submitted"><i
                                                data-icon=""></i>Send
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END CONTACT SECTION -->

        <!-- START FOOTER SECTION -->
        <section id="footer" class="section section-full-colored">
            <div class="section-content center">
                <p>Juntos - Design &amp; Development by <a href="#">2F</a></p>
            </div>
        </section>
        <!-- END FOOTER SECTION -->

    </div>
    <!-- END MAIN CONTAINER -->

    <!-- PAGE LOADING-->
    <div style="display: none;" id="loader">loading……</div>
</div>
<!-- SCRIPTS -->
<script src="${ctx}/static/juntos/jquery.js"></script>
<script src="${ctx}/static/juntos/alert.js"></script>
<script src="${ctx}/static/juntos/jquery.fancybox.min.js"></script>
<script src="${ctx}/static/juntos/jquery.flexslider.min.js"></script>
<script src="${ctx}/static/juntos/jquery.meanmenu.min.js"></script>
<script src="${ctx}/static/juntos/jquery.scrollup.min.js"></script>
<script src="${ctx}/static/juntos/jquery.sequence.min.js"></script>
<script src="${ctx}/static/juntos/jquery.smoothscroll.min.js"></script>
<script src="${ctx}/static/juntos/pace.js"></script>
<script src="${ctx}/static/juntos/jquery.sticky.min.js"></script>
<script src="${ctx}/static/juntos/custom.js"></script>
<a style="position: fixed; z-index: 2147483647; display: none;" title="Top" href="#top" id="scrollUp">Top</a>

</body><!-- END BODY --></html>