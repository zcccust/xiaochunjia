<%@ page isELIgnored="false"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE >
<html>
<head>
<%@ include file="/WEB-INF/views/include/meta.jsp"%>
<link href="${ctx}/static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${ctx}/static/bootstrap-fileinput/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
</head>
<body>
<!-- 页头 -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<div class="callout-top"></div>
<input id="upload" type="file" multiple class="file-loading" accept="image/*">
<div class="clear"></div>

<!-- 页尾 -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
<script src="${ctx}/static/jquery/jquery-1.9.1.min.js" type="text/javascript" ></script>
<script src="${ctx}/static/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${ctx}/static/bootstrap-fileinput/js/fileinput.min.js" type="text/javascript"></script>
<script src="${ctx}/static/bootstrap-fileinput/js/locales/fr.js" type="text/javascript"></script>
<script src="${ctx}/static/bootstrap-fileinput/js/locales/es.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx}/static/js/tinymce/tinymce.min.js"></script>
<script type="text/javascript">
$("#upload").fileinput({
    uploadUrl: "${ctx}/blog/uploadimage",
    allowedFileExtensions: ["jpg", "png", "gif"]
});
</script>
</body>
</html>
