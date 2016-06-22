<%@ page isELIgnored="false"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE >
<html>
<head>
<%@ include file="/WEB-INF/views/include/meta.jsp"%>
</head>
<body>
<!-- 页头 -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<!-- 照片等总体展示 -->
<div class="callout callout-top clearfix"></div>

<!-- 博文数据区 -->
<div class="grid">
	${blog.content}
</div>

<div class="clear"></div>

<!-- 页尾 -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>

<script type="text/javascript">
var p=1;
$(document).ready(function() {
});
</script>
</body>
</html>
