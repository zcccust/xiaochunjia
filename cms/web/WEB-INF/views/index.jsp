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
    <meta content="xiaochunjia.com" name="application-name">
    <link href="/static/images/baby_bottle.png" rel="shortcut icon">
    <link href="${ctx}/static/css/bootstrap-spacelab.min.css" rel="stylesheet" type="text/css">
    <link href="${ctx}/static/css/bootstrap-cerulean.min.css.css" rel="stylesheet" type="text/css">
    <link href="${ctx}/static/css/charisma-app.css" rel="stylesheet" type="text/css">
</head>
</head>

<body>
<!-- topbar starts -->
<div class="navbar navbar-default" role="navigation">

    <div class="navbar-inner">
        <a class="navbar-brand" href="#"><span>晓春家内容管理</span></a>

        <ul class="collapse navbar-collapse nav navbar-nav top-menu">
            <li><a href="http://www.xiaochunjia.com"><i class="glyphicon glyphicon-globe"></i> 访问主页</a></li>
        </ul>

        <div class="btn-group pull-right">
            <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                <i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs"> admin</span>
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                <li><a href="${ctx}/j_spring_security_logout">Logout</a></li>
            </ul>
        </div>

    </div>
</div>
<!-- topbar ends -->

<div class="ch-container">
    <div class="row">
        <!-- left menu starts -->
        <div class="col-sm-2 col-lg-2">
            <div class="sidebar-nav">
                <div class="nav-canvas">
                    <div class="nav-sm nav nav-stacked">

                    </div>
                    <ul class="nav nav-pills nav-stacked main-menu">
                        <li class="nav-header">文章</li>
                        <li class="active"><a class="ajax-link" href="#"><i class="glyphicon glyphicon-folder-open"></i><span> 所有文章</span></a>
                        </li>
                        <li><a class="ajax-link" href="#"><i
                                class="glyphicon glyphicon-eye-open"></i><span> 亲子</span></a></li>
                        <li><a class="ajax-link" href="#"><i class="glyphicon glyphicon-edit"></i><span> 旅行</span></a>
                        </li>
                        <li><a class="ajax-link" href="#"><i
                                class="glyphicon glyphicon-list-alt"></i><span> 美食</span></a></li>
                        <li><a class="ajax-link" href="#"><i class="glyphicon glyphicon-font"></i><span> 烘焙</span></a>
                        </li>
                        <li><a class="ajax-link" href="#"><i
                                class="glyphicon glyphicon-picture"></i><span> 摄影</span></a></li>
                        <li><a class="ajax-link" href="#"><i
                                class="glyphicon glyphicon-picture"></i><span> 读书</span></a></li>
                        <li><a class="ajax-link" href="#"><i class="glyphicon glyphicon-picture"></i><span> wiki</span></a>
                        </li>
                        <li class="nav-header hidden-md">统计</li>
                        <li><a class="ajax-link" href="#"><i
                                class="glyphicon glyphicon-align-justify"></i><span> 某统计</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--/span-->
        <!-- left menu ends -->

        <noscript>
            <div class="alert alert-block col-md-12">
                <h4 class="alert-heading">Warning!</h4>

                <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a>
                    enabled to use this site.</p>
            </div>
        </noscript>

        <div id="content" class="col-lg-10 col-sm-10">

            <div class="row">
                <div class="box col-md-12">
                    <div class="box-inner">
                        <div class="box-header well" data-original-title="">
                            <h2><i class="glyphicon glyphicon-folder-open"></i> 全部文章</h2>
                            <div class="box-icon">
                                <a class="btn btn-setting btn-round btn-default" href="#">
                                    <i class=" glyphicon glyphicon-plus"></i>
                                </a>
                            </div>
                        </div>
                        <div class="box-content">

                            <table class="table table-striped table-bordered bootstrap-datatable datatable responsive">
                                <thead>
                                <tr>
                                    <th>标题</th>
                                    <th>时间</th>
                                    <th>栏目</th>
                                    <th>类型</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="blog" items="${blogs}" varStatus="status">
                                <tr>
                                    <td>${blog.title}</td>
                                    <td class="center"><fmt:formatDate value="${blog.date}"  type="both" /></td>
                                    <td class="center">${blog.categoryDesc}</td>
                                    <td class="center">${blog.typeDesc}</td>
                                    <td class="center">
                                        <a class="btn btn-success" href="#">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            View
                                        </a>
                                        <a class="btn btn-info" href="#">
                                            <i class="glyphicon glyphicon-edit icon-white"></i>
                                            Edit
                                        </a>
                                        <a class="btn btn-danger" href="#">
                                            <i class="glyphicon glyphicon-trash icon-white"></i>
                                            Delete
                                        </a>
                                    </td>
                                </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
                <!--/span-->

            </div><!--/row-->



            <!-- content ends -->
        </div>
    </div>


    <footer class="row">
        <p class="col-md-9 col-sm-9 col-xs-12 copyright"></p>

        <p class="col-md-3 col-sm-3 col-xs-12 powered-by">晓春家 Powered by: <a
                href="http://www.xiaochunjia.com">晓春,小驴</a></p>
    </footer>

</div>

<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<!-- external javascript -->

<!--[if lt IE 9]>
<script src="${ctx}/static/js/html5shiv.js"></script>
<![endif]-->

<script src="http://cdn.bootcss.com/bootstrap/2.3.2/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='bower_components/moment/min/moment.min.js'></script>
<script src='bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="js/charisma.js"></script>


</body>
</html>
