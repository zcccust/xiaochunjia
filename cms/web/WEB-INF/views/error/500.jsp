<%@ page isELIgnored="false"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE >
<html>
<head>
<%@ include file="/WEB-INF/views/include/head.jsp"%> 
</head>
<body>

<!-- 页头 -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<!-- 照片等总体展示 -->
<div class="callout callout-top clearfix"></div>

<!-- 博文数据区 -->
<div class="grid">
<a href="http://www.xiaochunjia.com"><img class="full-width" src="${ctx}/static/image/500.jpg?text=full+width" /></a>
</div>

<!-- 页尾 -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>

</body>
</html>
