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
<div id="bc" class="grid"></div>
<div class="grid">
<button id="mb" class="blue">看更多</button>
</div>


<div class="grid center">
<div class="col_12 center column " >
<button class="small" onclick="$('#login').slideToggle();"><i class="fa fa-leaf "></i> 亲朋通道</button>
<div class="hide" id="login">
<fieldset id="verify" class="col_6" style="height:150">
<legend>亲朋验证</legend>
<form id="formV" action="${ctx}/user/verify" method="post">
<div id="questionDiv" class=" col_12 column " ></div>
<div class="col_12 column" >
<input name="answer" type="text" placeholder="请填写答案" class="required" />
<button type="submit" class="small column">提交</button>
</div>
</form>
</fieldset>
<fieldset  class="col_6" style="height:150">
<legend>后台管理</legend>
<form id="formL" action="${ctx}/user/login" method="post">
<label class="inline" >管理密码： </label>
<div class="col_12 column" >
<input name="pwd" type="password" placeholder="请输入密码" class="required" />
<button type="submit" class="small column">提交</button>
</div>
</form>
</fieldset>
</div>
<div class="col_12"><p>通过亲朋通道，您可以查看更多内容,或者上传自己喜欢的内容。</p></div>
</div>
</div>
<div class="clear"></div>

<!-- 页尾 -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>

<script type="text/javascript">
var p=1;
$(document).ready(function(){
	var c =getUrlParam('c');
	loadBlogs(p,c);	
	loadQuestions();
	$("#mb").click(function(){
		p++;
		loadBlogs(p,c);
	});
   $("#formV").validate({ 
	   submitHandler: function(form) {
		   $(form).ajaxSubmit({
		        success: function (data) {
		        	var result = JSON.parse(data);
		        	if(result.result==true){	
		        		window.location.reload();
		        	}
		        	else{
		        		alert(result.message);
		        	}
		         }
		    });
		  },
       messages:{
           question:{
               required:"必填"
           },
           answer:{
               required:"必填"
           }                                   
       }
       
   });  
   $("#formL").validate({ 
	   submitHandler: function(form) {
		   $(form).ajaxSubmit({
		        success: function (data) {
		        	var result = JSON.parse(data);
		        	if(result.result==true){
		        		window.location="${ctx}/blog/m";
		        	}
		        	else{
		        		alert(result.message);
		        	}
		         }
		    });
		  },
       messages:{
           pwd:{
               required:"必填"
           }                                   
       }
       
   });
});
function loadBlogs(page,c){	
	$.ajax({
		url:"${ctx}/blog/"+c+"/"+page,
		success:function(data, textStatus){	
			var bolgs = JSON.parse(data);
			appendBlogs(bolgs);
		},
		error:function(r,s,e){
			//document.location = "${ctx}/error/500";
		}
	});
}
function loadQuestions(){
	$.ajax({
		url:"${ctx}/user/questions/",
		success:function(data, textStatus){	
			var qs = JSON.parse(data);
			var qHtml="";
			$.each(qs, function(i,q){
				var qStr = '<input class="radio" type="radio" name="question" value="'+q.id+'" class="required" /><label class="inline" for="radio1">'+q.question+'&nbsp&nbsp&nbsp</label>';
				qHtml+=qStr;
			});

			$("#questionDiv").html(qHtml);				
		},
		error:function(r,s,e){
			//document.location = "${ctx}/error/500";
		}
	});
}
function appendBlogs(blogs){
	$.each(blogs, function(i,blog){
		var bolgStr = '<h3 class="post-title"><a href="${ctx}/blog/'+blog.id+'" >'+blog.title+'</a></h3><img width="150" height="130" class="pull-left" src="'+blog.dspImage+'" data-mce-src="'+blog.dspImage+'" caption="false" data-mce-selected="1"><div id=class="clearfix">'+blog.dspText+'</div><hr class="alt1">';
		$("#bc").append(bolgStr); 
	});	
}
function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]); return null; //返回参数值
}
</script>
</body>
</html>
