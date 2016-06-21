<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html class="">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <%@ include file="/WEB-INF/views/include/head.jsp" %>
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
            color: #82b40;
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
    <style type="text/css">
        .top-margin {
            margin-top: 1em;
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
    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon/favicon.png">
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
                            <li><a href="#home">家</a></li><!--家庭图片；         轮播-->
                            <li><a href="#baby">亲子</a></li><!--亲子游戏；       竖向列表，存色区域-->
                            <li><a href="#food">美食</a></li><!--做过的菜，食谱；  竖向列表，存色区域-->
                            <li><a href="#photo">摄影</a></li><!--拍过的照片；  图片画廊展示-->
                            <li><a href="#blog">博客</a></li><!--技术博文纯文字；  竖向列表,白色-->
                            <li><a href="#about">关于</a></li><!--成员简介；      横向列表-->
                        </ul>
                    </nav>
                </div>
            </nav>
        </div>
        <!-- END NAVIGATION -->

        <!-- START PROJECT SECTION -->
        <section id="home" style="height: 947px;" class="section ">
            <span style="display: inline;" class="sequence-prev"></span>
            <span style="display: inline;" class="sequence-next"></span>
            <ul class="sequence-canvas">
                <li style="background-image: url(${ctx}/static/images/5.jpg); display: list-item; z-index: 1;">
                    <div style="" class="slide-content">
                        <h1>Welcome !</h1>
                        <h3></h3>
                    </div>
                </li>
                <li style="background-image: url(${ctx}/static/images/4.JPG); display: list-item; z-index: 1;">
                    <div style="" class="slide-content">
                        <h1>Welcome !</h1>
                        <h3></h3>
                    </div>
                </li>
            </ul>
        </section>
        <!-- END PROJECT SECTION -->

        <!-- START TEAM SECTION -->
        <section id="baby" class="center section section-full-colored with-arrow">
            <!-- SECTION TITLE -->
            <div class="section-header ">
                <br>
                <h1>亲子</h1>
                <hr>
            </div>
            <!-- SECTION CONTENT -->
            <div class="section-content section-no-top-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <img src="${ctx}/static/images/6.jpg"
                                 class="pull-left img-thumbnail" alt="游戏图片">
                            <h3>踩脚丫</h3>
                            <p>内容描述 Few words about the creation, the ideas, biography of the funder...</p>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 top-margin">
                            <img src="${ctx}/static/images/6.jpg"
                                 class="pull-left img-thumbnail" alt="游戏图片">
                            <h3>推小车</h3>
                            <p>内容描述 Few words about the creation, the ideas, biography of the funder...</p>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 top-margin">
                            <img src="${ctx}/static/images/6.jpg"
                                 class="pull-left img-thumbnail" alt="游戏图片">
                            <h3>扒尿炕</h3>
                            <p>内容描述 Few words about the creation, the ideas, biography of the funder...</p>
                        </div>
                        <button type="button" class="btn btn-primary">更多</button>
                    </div>
                </div>
            </div>
        </section>
        <!-- END TEAM SECTION -->

        <!-- START SERVICES SECTION -->
        <section id="food" class="center section ">
            <!-- SECTION TITLE -->
            <div class="section-header with-arrow">
                <br>
                <h1>美食</h1>
                <hr>
            </div>
            <!-- SECTION CONTENT -->
            <div class="section-content section-no-top-padding with-arrow">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <img src="${ctx}/static/images/6.jpg"
                                 class="pull-left img-thumbnail" alt="游戏图片">
                            <h3>踩脚丫</h3>
                            <p>内容描述 Few words about the creation, the ideas, biography of the funder...</p>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 top-margin">
                            <img src="${ctx}/static/images/6.jpg"
                                 class="pull-left img-thumbnail" alt="游戏图片">
                            <h3>推小车</h3>
                            <p>内容描述 Few words about the creation, the ideas, biography of the funder...</p>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 top-margin">
                            <img src="${ctx}/static/images/6.jpg"
                                 class="pull-left img-thumbnail" alt="游戏图片">
                            <h3>扒尿炕</h3>
                            <p>内容描述 Few words about the creation, the ideas, biography of the funder...</p>
                        </div>
                        <button type="button" class="btn btn-primary">更多</button>
                    </div>
                </div>
            </div>
        </section>
        <!-- END SERVICES SECTION -->

        <!-- START GALLERY SECTION -->
        <section id="photo" class="section with-arrow  section-full-colored ">
            <!-- SECTION TITLE -->
            <div class="section-header center">
                <br>
                <h1>摄影</h1>
                <hr>
            </div>
            <!-- SECTION CONTENT -->
            <div class="section-content">
                <div id="portfolio-one">
                    <!-- Element -->
                    <div class="element">
                        <a class="fancybox" data-fancybox-group="group1" href="${ctx}/static/images/1.JPG">
                            <!-- Image -->
                            <img src="${ctx}/static/images/1.JPG" alt=""/>
                            <!-- Content -->
                           <span class="image-info">
                            <!-- Title -->
                              <span class="image-title">Hello how are you</span>
                               <!-- Desc -->
                              <span class="image-desc">Cras blandit, enim id mattis ultrices, erat dolor varius felis, quis consequat nibh ligula ut lectus</span>
                           </span>
                        </a>
                    </div>
                    <div class="element">
                        <a class="fancybox" data-fancybox-group="group1" href="${ctx}/static/images/2.jpg">
                            <!-- Image -->
                            <img src="${ctx}/static/images/2.jpg" alt=""/>
                            <!-- Content -->
                           <span class="image-info">
                            <!-- Title -->
                              <span class="image-title">Hello how are you</span>
                               <!-- Desc -->
                              <span class="image-desc">Cras blandit, enim id mattis ultrices, erat dolor varius felis, quis consequat nibh ligula ut lectus</span>
                           </span>
                        </a>
                    </div>
                    <div class="element">
                        <a class="fancybox" data-fancybox-group="group1" href="${ctx}/static/images/3.jpg">
                            <!-- Image -->
                            <img src="${ctx}/static/images/3.jpg" alt=""/>
                            <!-- Content -->
                           <span class="image-info">
                            <!-- Title -->
                              <span class="image-title">Hello how are you</span>
                               <!-- Desc -->
                              <span class="image-desc">Cras blandit, enim id mattis ultrices, erat dolor varius felis, quis consequat nibh ligula ut lectus</span>
                           </span>
                        </a>
                    </div>
                    <div class="element">
                        <a class="fancybox" data-fancybox-group="group1" href="${ctx}/static/images/4.JPG">
                            <!-- Image -->
                            <img src="${ctx}/static/images/4.JPG" alt=""/>
                            <!-- Content -->
                           <span class="image-info">
                            <!-- Title -->
                              <span class="image-title">Hello how are you</span>
                               <!-- Desc -->
                              <span class="image-desc">Cras blandit, enim id mattis ultrices, erat dolor varius felis, quis consequat nibh ligula ut lectus</span>
                           </span>
                        </a>
                    </div>
                    <div class="element">
                        <a class="fancybox" data-fancybox-group="group1" href="${ctx}/static/images/5.jpg">
                            <!-- Image -->
                            <img src="${ctx}/static/images/5.jpg" alt=""/>
                            <!-- Content -->
                           <span class="image-info">
                            <!-- Title -->
                              <span class="image-title">Hello how are you</span>
                               <!-- Desc -->
                              <span class="image-desc">Cras blandit, enim id mattis ultrices, erat dolor varius felis, quis consequat nibh ligula ut lectus</span>
                           </span>
                        </a>
                    </div>
                    <div class="element">
                        <a class="fancybox" data-fancybox-group="group1" href="${ctx}/static/images/1.JPG">
                            <!-- Image -->
                            <img src="${ctx}/static/images/1.JPG" alt=""/>
                            <!-- Content -->
                           <span class="image-info">
                            <!-- Title -->
                              <span class="image-title">Hello how are you</span>
                               <!-- Desc -->
                              <span class="image-desc">Cras blandit, enim id mattis ultrices, erat dolor varius felis, quis consequat nibh ligula ut lectus</span>
                           </span>
                        </a>
                    </div>
                    <div class="element">
                        <a class="fancybox" data-fancybox-group="group1" href="${ctx}/static/images/2.jpg">
                            <!-- Image -->
                            <img src="${ctx}/static/images/2.jpg" alt=""/>
                            <!-- Content -->
                           <span class="image-info">
                            <!-- Title -->
                              <span class="image-title">Hello how are you</span>
                               <!-- Desc -->
                              <span class="image-desc">Cras blandit, enim id mattis ultrices, erat dolor varius felis, quis consequat nibh ligula ut lectus</span>
                           </span>
                        </a>
                    </div>
                    <div class="element">
                        <a class="fancybox" data-fancybox-group="group1" href="${ctx}/static/images/3.jpg">
                            <!-- Image -->
                            <img src="${ctx}/static/images/3.jpg" alt=""/>
                            <!-- Content -->
                           <span class="image-info">
                            <!-- Title -->
                              <span class="image-title">Hello how are you</span>
                               <!-- Desc -->
                              <span class="image-desc">Cras blandit, enim id mattis ultrices, erat dolor varius felis, quis consequat nibh ligula ut lectus</span>
                           </span>
                        </a>
                    </div>
                    <div class="element">
                        <a class="fancybox" data-fancybox-group="group1" href="${ctx}/static/images/4.JPG">
                            <!-- Image -->
                            <img src="${ctx}/static/images/4.JPG" alt=""/>
                            <!-- Content -->
                           <span class="image-info">
                            <!-- Title -->
                              <span class="image-title">Hello how are you</span>
                               <!-- Desc -->
                              <span class="image-desc">Cras blandit, enim id mattis ultrices, erat dolor varius felis, quis consequat nibh ligula ut lectus</span>
                           </span>
                        </a>
                    </div>
                    <div class="element">
                        <a class="fancybox" data-fancybox-group="group1" href="${ctx}/static/images/5.jpg">
                            <!-- Image -->
                            <img src="${ctx}/static/images/5.jpg" alt=""/>
                            <!-- Content -->
                           <span class="image-info">
                            <!-- Title -->
                              <span class="image-title">Hello how are you</span>
                               <!-- Desc -->
                              <span class="image-desc">Cras blandit, enim id mattis ultrices, erat dolor varius felis, quis consequat nibh ligula ut lectus</span>
                           </span>
                        </a>
                    </div>
                    <div class="element">
                        <a class="fancybox" data-fancybox-group="group1" href="${ctx}/static/images/1.JPG">
                            <!-- Image -->
                            <img src="${ctx}/static/images/1.JPG" alt=""/>
                            <!-- Content -->
                           <span class="image-info">
                            <!-- Title -->
                              <span class="image-title">Hello how are you</span>
                               <!-- Desc -->
                              <span class="image-desc">Cras blandit, enim id mattis ultrices, erat dolor varius felis, quis consequat nibh ligula ut lectus</span>
                           </span>
                        </a>
                    </div>
                    <div class="element">
                        <a class="fancybox" data-fancybox-group="group1" href="${ctx}/static/images/2.jpg">
                            <!-- Image -->
                            <img src="${ctx}/static/images/2.jpg" alt=""/>
                            <!-- Content -->
                           <span class="image-info">
                            <!-- Title -->
                              <span class="image-title">Hello how are you</span>
                               <!-- Desc -->
                              <span class="image-desc">Cras blandit, enim id mattis ultrices, erat dolor varius felis, quis consequat nibh ligula ut lectus</span>
                           </span>
                        </a>
                    </div>
                    <div class="element">
                        <a class="fancybox" data-fancybox-group="group1" href="${ctx}/static/images/3.jpg">
                            <!-- Image -->
                            <img src="${ctx}/static/images/3.jpg" alt=""/>
                            <!-- Content -->
                           <span class="image-info">
                            <!-- Title -->
                              <span class="image-title">Hello how are you</span>
                               <!-- Desc -->
                              <span class="image-desc">Cras blandit, enim id mattis ultrices, erat dolor varius felis, quis consequat nibh ligula ut lectus</span>
                           </span>
                        </a>
                    </div>
                    <div class="element">
                        <a class="fancybox" data-fancybox-group="group1" href="${ctx}/static/images/4.JPG">
                            <!-- Image -->
                            <img src="${ctx}/static/images/4.JPG" alt=""/>
                            <!-- Content -->
                           <span class="image-info">
                            <!-- Title -->
                              <span class="image-title">Hello how are you</span>
                               <!-- Desc -->
                              <span class="image-desc">Cras blandit, enim id mattis ultrices, erat dolor varius felis, quis consequat nibh ligula ut lectus</span>
                           </span>
                        </a>
                    </div>
                    <div class="element">
                        <a class="fancybox" data-fancybox-group="group1" href="${ctx}/static/images/5.jpg">
                            <!-- Image -->
                            <img src="${ctx}/static/images/5.jpg" alt=""/>
                            <!-- Content -->
                           <span class="image-info">
                               <!-- Title -->
                              <span class="image-title">Hello how are you</span>
                               <!-- Desc -->
                              <span class="image-desc">Cras blandit, enim id mattis ultrices, erat dolor varius felis, quis consequat nibh ligula ut lectus</span>
                           </span>
                        </a>
                    </div>
                </div>
                <div class="center" style="margin-top: 5px">
                    <button type="button" class="btn btn-primary">更多</button>
                </div>
            </div>
        </section>
        <!-- END GALLERY SECTION -->

        <!-- START BLOG SECTION -->
        <section id="blog" class="section " >
            <!-- SECTION TITLE -->
            <div class="section-content center ">
                <h1>最新博文</h1>
                <hr>
            </div>
            <!-- SECTION CONTENT -->
            <div class="section-content ">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-md-6 col-lg-4 ">
                            <div class="thumbnail" style="height: 336px;">
                                <div class="caption">
                                    <h3>
                                        <a onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])" target="_blank" title="Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。" href="http://codeguide.bootcss.com">
                                            Bootstrap 编码规范
                                            <br>
                                            <small>by @mdo</small>
                                        </a>
                                    </h3>
                                    <p> Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。 </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-4 ">
                            <div class="thumbnail" style="height: 336px;">
                                <div class="caption">
                                    <h3>
                                        <a onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])" target="_blank" title="Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。" href="http://codeguide.bootcss.com">
                                            Bootstrap 编码规范
                                            <br>
                                            <small>by @mdo</small>
                                        </a>
                                    </h3>
                                    <p> Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。 </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-4 ">
                            <div class="thumbnail" style="height: 336px;">
                                <div class="caption">
                                    <h3>
                                        <a onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])" target="_blank" title="Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。" href="http://codeguide.bootcss.com">
                                            Bootstrap 编码规范
                                            <br>
                                            <small>by @mdo</small>
                                        </a>
                                    </h3>
                                    <p> Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。 </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-4 ">
                            <div class="thumbnail" style="height: 336px;">
                                <div class="caption">
                                    <h3>
                                        <a onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])" target="_blank" title="Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。" href="http://codeguide.bootcss.com">
                                            Bootstrap 编码规范
                                            <br>
                                            <small>by @mdo</small>
                                        </a>
                                    </h3>
                                    <p> Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。 </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-4 ">
                            <div class="thumbnail" style="height: 336px;">
                                <div class="caption">
                                    <h3>
                                        <a onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])" target="_blank" title="Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。" href="http://codeguide.bootcss.com">
                                            Bootstrap 编码规范
                                            <br>
                                            <small>by @mdo</small>
                                        </a>
                                    </h3>
                                    <p> Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。 </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-4 ">
                            <div class="thumbnail" style="height: 336px;">
                                <div class="caption">
                                    <h3>
                                        <a onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])" target="_blank" title="Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。" href="http://codeguide.bootcss.com">
                                            Bootstrap 编码规范
                                            <br>
                                            <small>by @mdo</small>
                                        </a>
                                    </h3>
                                    <p> Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。 </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-4 ">
                            <div class="thumbnail" style="height: 336px;">
                                <div class="caption">
                                    <h3>
                                        <a onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])" target="_blank" title="Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。" href="http://codeguide.bootcss.com">
                                            Bootstrap 编码规范
                                            <br>
                                            <small>by @mdo</small>
                                        </a>
                                    </h3>
                                    <p> Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。 </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-6 col-lg-4 ">
                            <div class="thumbnail" style="height: 336px;">
                                <div class="caption">
                                    <h3>
                                        <a onclick="_hmt.push(['_trackEvent', 'tile', 'click', 'codeguide'])" target="_blank" title="Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。" href="http://codeguide.bootcss.com">
                                            Bootstrap 编码规范
                                            <br>
                                            <small>by @mdo</small>
                                        </a>
                                    </h3>
                                    <p> Bootstrap 编码规范：编写灵活、稳定、高质量的 HTML 和 CSS 代码的规范。 </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="center ">
                        <button type="button" class="btn btn-primary">更多</button>
                    </div>
                </div>
            </div>
        </section>
        <!-- END BLOG SECTION -->

        <!-- START CONTACT SECTION -->
        <section id="about" class="section with-arrow section-full-colored ">
            <!-- SECTION TITLE -->
            <div class="section-header ">
                <h1>The Family</h1>
                <hr>
            </div>
            <!-- SECTION CONTENT -->
            <div class="section-content">
                <div class="container">
                    <div class="center row">
                        <div class="col-sm-6 col-md-4 col-lg-3 ">
                            <img src="${ctx}/static/images/6.jpg"
                                 class="center img-circle" alt="皮">
                            <h3>皮</h3>
                            <p>介绍 Few words about the creation, the ideas, biography of the funder...</p>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 ">
                            <img src="${ctx}/static/images/6.jpg"
                                 class="center img-circle" alt="点点(Myron)">
                            <h3>点点(Myron)</h3>
                            <p>介绍 Few words about the creation, the ideas, biography of the funder...</p>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 ">
                            <img src="${ctx}/static/images/6.jpg"
                                 class="center img-circle" alt="小驴">
                            <h3>小驴</h3>
                            <p>介绍 Few words about the creation, the ideas, biography of the funder...</p>
                        </div>
                        <div class="col-sm-6 col-md-4 col-lg-3 ">
                            <img src="${ctx}/static/images/6.jpg"
                                 class="center img-circle" alt="晓春">
                            <h3>晓春</h3>
                            <p>介绍 Few words about the creation, the ideas, biography of the funder...</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END CONTACT SECTION -->

        <!-- START FOOTER SECTION -->
        <section id="footer" class="section section-content-colored color2">
            <div class="section-content center ">
                <p>晓春家 - Design &amp; Development by zcc &amp; lv</p>
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
<script src="${ctx}/static/juntos/jquery.isotope.js"></script>
<script src="${ctx}/static/juntos/jquery.smoothscroll.min.js"></script>
<script src="${ctx}/static/juntos/pace.js"></script>
<script src="${ctx}/static/juntos/jquery.sticky.min.js"></script>
<script src="${ctx}/static/juntos/custom.js"></script>
<a style="position: fixed; z-index: 2147483647; display: none;" title="Top" href="#top" id="scrollUp">Top</a>

</body><!-- END BODY --></html>