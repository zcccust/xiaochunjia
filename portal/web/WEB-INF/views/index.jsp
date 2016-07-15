<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>晓春家</title>
    <meta content="width=device-width, initial-scale=1" name="viewport">
    <meta content="一个讲述家庭生活的网站" name="description">
    <meta content="个人博客,家庭博客,情侣博客,博客,美食,亲子" name="keywords">
    <meta content="晓春,小驴" name="author">
    <meta content="index,follow" name="robots">
    <meta content="xiaochunjia.com" name="application-name">
    <link href="/static/images/baby_bottle.png" rel="shortcut icon">
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/2.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/2.3.2/css/bootstrap-responsive.min.css">
    <link href="${ctx}/static/bootstrap/css/doc.css" rel="stylesheet" type="text/css">
</head>
<body data-target=".bs-docs-sidebar" data-spy="scroll">
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <div class="navbar-header">
                <a href="#" id="logo"><img src="${ctx}/static/images/logo-m.png"></a>
            </div>
            <div class="navbar-collapse collapse" role="navigation">
                <ul class="nav navbar-nav">
                    <li class="hidden-sm hidden-md">
                        <input id="info" type="text">
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right hidden-sm">
                    <li>
                        <a href="/about/">关于</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<header id="overview" class="jumbotron subhead">
    <div class="container">
        <h1>家</h1>
        <p class="lead">一间房,一盏灯,一张床。</p>
    </div>
</header>
<div class="container">
    <div class="row">
        <div class="span2 bs-docs-sidebar">
            <ul class="span2 nav nav-list bs-docs-sidenav affix-top">
                <li class="active">
                    <a >
                        <i class="icon-chevron-right"></i>
                        首页
                    </a>
                </li>
                <li class="">
                    <a >
                        <i class="icon-chevron-right"></i>
                        亲子
                    </a>
                </li>
                <li class="">
                    <a >
                        <i class="icon-chevron-right"></i>
                        旅行
                    </a>
                </li>
                <li class="">
                    <a >
                        <i class="icon-chevron-right"></i>
                        美食
                    </a>
                </li>
                <li class="">
                    <a >
                        <i class="icon-chevron-right"></i>
                        烘焙
                    </a>
                </li>
                <li class="">
                    <a >
                        <i class="icon-chevron-right"></i>
                        摄影
                    </a>
                </li>
                <li class="">
                    <a >
                        <i class="icon-chevron-right"></i>
                        读书
                    </a>
                </li>
                <li class="">
                    <a >
                        <i class="icon-chevron-right"></i>
                        Wiki
                    </a>
                </li>
            </ul>
        </div>
        <div class="span8">
            <div id="blog" style="min-height: 860px;">
                <div id="data">
                    <!--
                    <div class="blog-list">
                        <h3>这里是标题</h3>
                        <div>这里是纯文字描述内容</div>
                        <div class="row-fluid opt">
                            <p class="span10 "><i class="icon-time"></i>2016-7-14</p>
                            <p class="text-right span2"><a >阅读原文</a></p>
                        </div>
                    </div>
                    <div class="blog-list">
                        <h3>这里是标题</h3>
                        <div class="row-fluid">
                            <ul class="thumbnails">
                                <li class="span4">
                                    <a class="thumbnail" href="#">
                                        <img alt="260x180" data-src="holder.js/260x180" style="width: 260px; height: 180px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQQAAAC0CAYAAABytVLLAAAEBUlEQVR4nO3aMXbaWhRA0cx/KO7U0dDRUdIzBKbgFH/p5KFIgPO9jIpd7CJEIDlZ9+jx5F+32+0T4Ha7ff569wUA+yEIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIOzFN0+fHx8edrWPP5/Nfx16v17tjTqfT3d8fj8dvu8bz+bz694fD4aVzHo/Hu+NOp9Pb//35jyDswFoMtgZ9OXRrxy0HbnY4HL7l+taCsPUzLM+5df3fESz+P0HYgWmaPi+XS38eVwDjoIx3/fH40+lUEC6Xy1+Du/W+V69tObzLILx6zvHnml8b47WMHz9PEHboer2uBuHRHXo2D9g0TXevj8vzcYDHO/g4sPMyfpqmz2ma7q5pef7xfWs/wzz88+pgPOejz+XnCcIOjQM7D+b42jhEy0FaG7rb7c+dfg7MeAef3788ZvRscJfXO4dpvI6tz7eXsB+CsENrewPLTcKtZfzW0K2FYj52mqa7z1+7plfu5M/2BbYG/1GI+FmCsCPjKmA5eOPAjgO1XPp/JQjL8z0a9mdB2NpUXPvKIwj7JQg7sVwBPHqMOL6+3DOYh+vZV4bl+9f2HUaPgvBs32I+/qsrB36eIOzAOOxbjwbHjbu1R4zzML6yqTi/trZC2BrKR0GYVx9bq5L5dZuK+ycIO/AsBsvj5gFbexoxhmPtEeAYk3E18ezx3ytBGFcvaxuja48ix/O++/8BQXi7td86HI2ReLSxOH7m1vf58e6/DMA48GthehSEtZXG1rVtHWN1sA+C8GZfCcLa8Vvf+5e/ETjGYAzLuMwfI7H86vAvTxm2Vjyv/OYj7yEIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEID8BgsB3gRIkWYuAAAAAElFTkSuQmCC">
                                    </a>
                                </li>
                                <li class="span4">
                                    <a class="thumbnail" href="#">
                                        <img alt="260x180" data-src="holder.js/260x180" style="width: 260px; height: 180px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQQAAAC0CAYAAABytVLLAAAEBUlEQVR4nO3aMXbaWhRA0cx/KO7U0dDRUdIzBKbgFH/p5KFIgPO9jIpd7CJEIDlZ9+jx5F+32+0T4Ha7ff569wUA+yEIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIOzFN0+fHx8edrWPP5/Nfx16v17tjTqfT3d8fj8dvu8bz+bz694fD4aVzHo/Hu+NOp9Pb//35jyDswFoMtgZ9OXRrxy0HbnY4HL7l+taCsPUzLM+5df3fESz+P0HYgWmaPi+XS38eVwDjoIx3/fH40+lUEC6Xy1+Du/W+V69tObzLILx6zvHnml8b47WMHz9PEHboer2uBuHRHXo2D9g0TXevj8vzcYDHO/g4sPMyfpqmz2ma7q5pef7xfWs/wzz88+pgPOejz+XnCcIOjQM7D+b42jhEy0FaG7rb7c+dfg7MeAef3788ZvRscJfXO4dpvI6tz7eXsB+CsENrewPLTcKtZfzW0K2FYj52mqa7z1+7plfu5M/2BbYG/1GI+FmCsCPjKmA5eOPAjgO1XPp/JQjL8z0a9mdB2NpUXPvKIwj7JQg7sVwBPHqMOL6+3DOYh+vZV4bl+9f2HUaPgvBs32I+/qsrB36eIOzAOOxbjwbHjbu1R4zzML6yqTi/trZC2BrKR0GYVx9bq5L5dZuK+ycIO/AsBsvj5gFbexoxhmPtEeAYk3E18ezx3ytBGFcvaxuja48ix/O++/8BQXi7td86HI2ReLSxOH7m1vf58e6/DMA48GthehSEtZXG1rVtHWN1sA+C8GZfCcLa8Vvf+5e/ETjGYAzLuMwfI7H86vAvTxm2Vjyv/OYj7yEIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEID8BgsB3gRIkWYuAAAAAElFTkSuQmCC">
                                    </a>
                                </li>
                                <li class="span4">
                                    <a class="thumbnail" href="#">
                                        <img alt="260x180" data-src="holder.js/260x180" style="width: 260px; height: 180px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQQAAAC0CAYAAABytVLLAAAEBUlEQVR4nO3aMXbaWhRA0cx/KO7U0dDRUdIzBKbgFH/p5KFIgPO9jIpd7CJEIDlZ9+jx5F+32+0T4Ha7ff569wUA+yEIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIOzFN0+fHx8edrWPP5/Nfx16v17tjTqfT3d8fj8dvu8bz+bz694fD4aVzHo/Hu+NOp9Pb//35jyDswFoMtgZ9OXRrxy0HbnY4HL7l+taCsPUzLM+5df3fESz+P0HYgWmaPi+XS38eVwDjoIx3/fH40+lUEC6Xy1+Du/W+V69tObzLILx6zvHnml8b47WMHz9PEHboer2uBuHRHXo2D9g0TXevj8vzcYDHO/g4sPMyfpqmz2ma7q5pef7xfWs/wzz88+pgPOejz+XnCcIOjQM7D+b42jhEy0FaG7rb7c+dfg7MeAef3788ZvRscJfXO4dpvI6tz7eXsB+CsENrewPLTcKtZfzW0K2FYj52mqa7z1+7plfu5M/2BbYG/1GI+FmCsCPjKmA5eOPAjgO1XPp/JQjL8z0a9mdB2NpUXPvKIwj7JQg7sVwBPHqMOL6+3DOYh+vZV4bl+9f2HUaPgvBs32I+/qsrB36eIOzAOOxbjwbHjbu1R4zzML6yqTi/trZC2BrKR0GYVx9bq5L5dZuK+ycIO/AsBsvj5gFbexoxhmPtEeAYk3E18ezx3ytBGFcvaxuja48ix/O++/8BQXi7td86HI2ReLSxOH7m1vf58e6/DMA48GthehSEtZXG1rVtHWN1sA+C8GZfCcLa8Vvf+5e/ETjGYAzLuMwfI7H86vAvTxm2Vjyv/OYj7yEIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEID8BgsB3gRIkWYuAAAAAElFTkSuQmCC">
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="row-fluid opt">
                            <p class="span10 "><i class="icon-time"></i>2016-7-14</p>
                            <p class="text-right span2"><a >阅读原文</a></p>
                        </div>
                    </div>
                    <div class="blog-ist">
                        <h3>这里是标题</h3>
                        <div class="row-fluid">
                            <ul class="thumbnails">
                                <li class="span4">
                                    <a class="thumbnail" href="#">
                                        <img alt="260x180" data-src="holder.js/260x180" style="width: 260px; height: 180px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAQQAAAC0CAYAAABytVLLAAAEBUlEQVR4nO3aMXbaWhRA0cx/KO7U0dDRUdIzBKbgFH/p5KFIgPO9jIpd7CJEIDlZ9+jx5F+32+0T4Ha7ff569wUA+yEIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIOzFN0+fHx8edrWPP5/Nfx16v17tjTqfT3d8fj8dvu8bz+bz694fD4aVzHo/Hu+NOp9Pb//35jyDswFoMtgZ9OXRrxy0HbnY4HL7l+taCsPUzLM+5df3fESz+P0HYgWmaPi+XS38eVwDjoIx3/fH40+lUEC6Xy1+Du/W+V69tObzLILx6zvHnml8b47WMHz9PEHboer2uBuHRHXo2D9g0TXevj8vzcYDHO/g4sPMyfpqmz2ma7q5pef7xfWs/wzz88+pgPOejz+XnCcIOjQM7D+b42jhEy0FaG7rb7c+dfg7MeAef3788ZvRscJfXO4dpvI6tz7eXsB+CsENrewPLTcKtZfzW0K2FYj52mqa7z1+7plfu5M/2BbYG/1GI+FmCsCPjKmA5eOPAjgO1XPp/JQjL8z0a9mdB2NpUXPvKIwj7JQg7sVwBPHqMOL6+3DOYh+vZV4bl+9f2HUaPgvBs32I+/qsrB36eIOzAOOxbjwbHjbu1R4zzML6yqTi/trZC2BrKR0GYVx9bq5L5dZuK+ycIO/AsBsvj5gFbexoxhmPtEeAYk3E18ezx3ytBGFcvaxuja48ix/O++/8BQXi7td86HI2ReLSxOH7m1vf58e6/DMA48GthehSEtZXG1rVtHWN1sA+C8GZfCcLa8Vvf+5e/ETjGYAzLuMwfI7H86vAvTxm2Vjyv/OYj7yEIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEIAIAhBBACIIQAQBiCAAEQQgggBEEID8BgsB3gRIkWYuAAAAAElFTkSuQmCC">
                                    </a>
                                </li>
                                <li class="span8">
                                    <p>图片描述文字图片描述文字图片描述文字图片描述文字图片描述文字图片描述文字图片描述文字图片描述文字图片描述文字图片描述文字图片描述文字图片描述文字图片描述文字图片描述文字</p>
                                </li>
                            </ul>
                        </div>
                        <div class="row-fluid opt">
                            <p class="span10 "><i class="icon-time"></i>2016-7-14</p>
                            <p class="text-right span2"><a >阅读原文</a></p>
                        </div>
                    </div>
                    -->
                </div>
                <div class="loading hidden" id="loading">loading!</div>
            </div>
        </div>
    </div>
</div>

<footer class="footer">
    <div class="container">
        版权所有 © 晓春家 京ICP备15042864号-1
    </div>
</footer>

<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="${ctx}/static/jquery/scrollpagination.js"></script>
<script>
    $(function () {
        loadBlogs();

        //栏目导航控制
        var $window = $(window)
        // side bar
        setTimeout(function () {
            $('.bs-docs-sidenav').affix({
                offset: {
                    top: function () {
                        return $window.width() <= 980 ? 290 : 430
                    }
                    , bottom: 490
                }
            })
        }, 100)
        var page=2;
        //无限滚动
        $('#data').scrollPagination({
            'contentPage': '${ctx}/blog/c',
            'contentData': {page:page},
            'scrollTarget': $(window),
            'heightOffset': 10,
            'beforeLoad': function () {
                $('#loading').fadeIn();
            },
            'afterLoad': function (elementsLoaded) {
                $('#loading').fadeOut();
            },
            'dataType': 'json',
            'loader': function (data) {
                if (data.length == 0) {
                    $('#data').stopScrollPagination();
                }
                else {
                    page++;
                    this.contentData.page = page;
                    appendBlogs(data);
                }
            }
        });
    });
    function loadBlogs() {
        $.ajax({
            url: "${ctx}/blog/c?page=1",
            success: function (data, textStatus) {
                var bolgs = JSON.parse(data);
                appendBlogs(bolgs);
            },
            error: function (r, s, e) {
                //document.location = "${ctx}/error/500";
            }
        });
    }
    function appendBlogs(blogs) {
        $.each(blogs, function (i, blog) {
            var blogDiv = $('<div class="blog-list"></div>');
            var title = $('<h3 class="bTitle"><a href="#">'+blog.title+'</a></h3>');
            var contnet=null;
            var detail=$('<p class="text-right span2"><a >阅读原文</a></p>');
            if(blog.type==0){
                contnet = $('<div>'+blog.dspText+'</div>');
            }
            else if(blog.type==1){
                contnet = $('<div class="row-fluid"></div>');
                var thumbnails = $('<ul class="thumbnails">');
                $.each(blog.dspImage.split(','), function (i, img) {
                    var li = $('<li class="span4"><a class="thumbnail" ><img alt="260x180" data-src="holder.js/260x180" style="width: 260px; height: 180px;" src="'+img+'"></a></li>');
                    thumbnails.append(li);
                });
                contnet.append(thumbnails);
            }
            else if(blog.type==2){
                contnet = $('<div class="row-fluid"></div>');
                var thumbnails = $('<ul class="thumbnails">');
                var li = $('<li class="span4"><a class="thumbnail" ><img alt="260x180" data-src="holder.js/260x180" style="width: 260px; height: 180px;" src="'+blog.dspImage+'"></a></li>');
                thumbnails.append(li);
                thumbnails.append($('<li class="span8"><p>'+blog.dspText+'</p></li>'));
                contnet.append(thumbnails);
            }
            var opt = $('<div class="row-fluid opt"><p class="span10 "><i class="icon-time"></i>'+new Date(blog.date).format("yyyy-MM-dd")+'</p></div>');
            opt.append(detail);
            blogDiv.append(title);
            blogDiv.append(contnet);
            blogDiv.append(opt);
            $("#data").append(blogDiv);
        });
    }
</script>
</body>
</html>