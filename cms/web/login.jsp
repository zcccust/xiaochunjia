<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE >
<html>
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
<body>
<div class="container ">
    <div class="row ">
        <div class="col-md-12 center login-header">
            <h2>晓春家</h2>
        </div>
    </div>
    <div class="row">
        <div class="well col-md-5 center login-box">
            <div class="alert alert-info">
                Please login with your Username and Password.
            </div>
            <form class="form-horizontal" action="j_spring_security_check" method="post">
                <fieldset>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user red"></i></span>
                        <input type="text" name="j_username" class="form-control" placeholder="Username">
                    </div>
                    <div class="clearfix"></div>
                    <br>
                    <div class="input-group input-group-lg">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock red"></i></span>
                        <input type="password" name="j_password" class="form-control" placeholder="Password">
                    </div>
                    <div class="clearfix"></div>
                    <p class="center col-md-5">
                        <button type="submit" class="btn btn-primary">Login</button>
                    </p>
                </fieldset>
            </form>
        </div>
    </div>
</div>
</body>
</html>
