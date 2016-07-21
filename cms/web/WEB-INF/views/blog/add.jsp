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

        <div class="col-lg-10 col-sm-10">
            <div class="row">
                <div class="box col-md-12">
                    <div class="box-inner">
                        <div class="box-header well" data-original-title="">
                            <h2><i class="icon-edit"></i> 新增文章</h2>
                        </div>
                        <div class="box-content">
                            <form action="${ctx}/blog/save" method="post">
                                <div class="form-group">
                                    <label>栏目</label>
                                    <div>
                                        <c:forEach var="category" items="${categorys}" varStatus="">
                                            <label class="radio-inline">
                                                <input type="radio" value="${category.id}"
                                                       name="category">${category.title}
                                            </label>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>形式</label>
                                    <div>
                                        <label class="radio-inline">
                                            <input type="radio" value="0" name="type">文字
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" value="1" name="type">图片
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" value="2" name="type">图文混合
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>安全等级</label>
                                    <div>
                                        <label class="radio-inline">
                                            <input type="radio" value="0" name="level">完全公开
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" value="1" name="level">验证访问
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="title">标题</label>
                                    <input id="title" type="text" class="form-control" name="title"/>
                                </div>
                                <div class="form-group">
                                    <label for="dspText">文字摘要</label>
                                    <textarea id="dspText" class="form-control" placeholder="一段描述文字" name="dspText"></textarea>
                                </div>
                                <div class="form-group">
                                    <label >图片摘要</label>
                                    <a href="#" onclick="chooseImage(this)"><img width="80" height="60" src=""
                                                                                 data-mce-src="" caption="false"
                                                                                 data-mce-selected="1"></a>
                                    <input type="hidden" name="dspImage" id="dspImage">
                                </div>
                                <div class="form-group">
                                    <label >正文内容</label>
                                        <textarea id="content" class="form-control" placeholder="博客正文"
                                                  name="content"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="tags" >标签</label>
                                    <input id="tags" type="text" class="form-control" placeholder="多个标签之间使用空格分隔。" name="tags">
                                </div>
                                <button class="btn btn-default" type="submit">Submit</button>
                            </form>
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

<script type="text/javascript" src="${ctx}/static/js/tinymce/tinymce.min.js"></script>

<script type="text/javascript">
    tinymce.PluginManager.add('example', function (editor, url) {
        // Add a button that opens a window
        editor.addButton('example', {
            text: 'My button',
            icon: false,
            onclick: function () {
                // Open window
                editor.windowManager.open({
                    title: 'My html dialog',
                    url: '${ctx}/static/imageManager.html',
                    width: 900,
                    height: 400,
                    resizable: 'yes',
                    inline: true,
                    buttons: [{
                        text: 'Ok',
                        subtype: 'primary',
                        onclick: function () {
                            var imgs = window[1].getImages();
                            for (i = 0; i < imgs.length; i++) {
                                editor.insertContent(' <img src="' + imgs[i] + '" data-mce-src="' + imgs[i] + '" caption="false" data-mce-selected="1">');
                            }
                            (this).parent().parent().close();
                        }
                    },
                        {
                            text: 'Close',
                            onclick: function () {
                                (this).parent().parent().close();
                            }
                        }]
                });
            }
        });
    });
    $(document).ready(function () {
        tinymce.init({
            selector: '#content',
            language: 'zh_CN',
            theme: 'modern',
            height: 500,
            plugins: [
                'advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker',
                'searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking',
                'save table contextmenu directionality emoticons template paste textcolor codesample example'
            ],
            toolbar: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | print preview media fullpage | forecolor backcolor emoticons | code codesample example',
        });
    });
    function chooseImage(a) {
        top.tinymce.activeEditor.windowManager.open({
            title: 'My html dialog',
            url: '${ctx}/static/imageManager.html',
            width: 900,
            height: 400,
            resizable: 'yes',
            inline: true,
            buttons: [{
                text: 'Ok',
                subtype: 'primary',
                onclick: function () {
                    var imgs = window[1].getImages();
                    for (i = 0; i < imgs.length; i++) {
                        $(a).html(' <img  width="100" height="80"  src="' + imgs[i] + '" data-mce-src="' + imgs[i] + '" caption="false" data-mce-selected="1">');
                        $("#dspImage").val(imgs[i]);
                    }
                    (this).parent().parent().close();
                }
            },
                {
                    text: 'Close',
                    onclick: function () {
                        (this).parent().parent().close();
                    }
                }]
        });
    }
</script>

</body>
</html>
