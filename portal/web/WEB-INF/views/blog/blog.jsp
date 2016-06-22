<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE >
<html>
<head>
    <%@ include file="/WEB-INF/views/include/meta.jsp" %>
</head>
<body>
<!-- 页头 -->
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<div class="callout-top"></div>
<div class="grid">
    <form action="${ctx}/blog/save" method="post">
        <div class="col_4">
            <h5>分类:</h5>
            <input type="radio" name="category" value="0" id="radio6" checked/>
            <label for="radio6" class="inline">照片</label>
            <input type="radio" name="category" value="1" id="radio7"/>
            <label for="radio7" class="inline">慢生活</label>
            <input type="radio" name="category" value="2" id="radio8"/>
            <label for="radio8" class="inline">读书笔记</label>
        </div>
        <div class="col_4">
            <h5>形式:</h5>
            <input type="radio" name="type" value="0" id="radio1" checked/>
            <label for="radio1" class="inline">文字</label>
            <input type="radio" name="type" value="1" id="radio2"/>
            <label for="radio2" class="inline">图片</label>
            <input type="radio" name="type" value="2" id="radio3"/>
            <label for="radio3" class="inline">图文混合</label>
        </div>
        <div class="col_4">
            <h5>安全等级 :</h5>
            <input type="radio" name="level" value="0" id="radio4"/>
            <label for="radio4" class="inline">完全公开</label>
            <input type="radio" name="level" value="1" id="radio5" checked/>
            <label for="radio5" class="inline">验证访问</label>
        </div>
        <div class="col_12">
            <h5>标题:</h5>
            <input type="text" class="col_8" name="title"/>
        </div>
        <div class="col_8">
            <h5>文字摘要:</h5>
            <textarea class="col_12" placeholder="一段描述文字" name="dspText"></textarea>
        </div>
        <div class="col_4">
            <h5>图片摘要:</h5>
            <a href="#" onclick="chooseImage(this)"><img width="80" height="60" src="" data-mce-src="" caption="false"
                                                         data-mce-selected="1"></a>
            <input type="hidden" name="dspImage" id="dspImage">
        </div>
        <div class="col_12">
            <h5>正文内容:</h5>
            <textarea id="content" class="col_12" placeholder="博客正文" name="content"></textarea>
        </div>
        <div class="col_1">
            <h5>标签:</h5>
        </div>
        <div class="col_9">
            <input type="text" class="col_12" placeholder="多个标签之间使用空格分隔。" name="tags">
        </div>
        <div class="col_2">
            <input class="small" type="submit" value="提交">
        </div>
    </form>
</div>

<div class="clear"></div>

<!-- 页尾 -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
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
