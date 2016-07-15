/*
 **	Anderson Ferminiano
 **	contato@andersonferminiano.com -- feel free to contact me for bugs or new implementations.
 **	jQuery ScrollPagination
 **	28th/March/2011
 **	http://andersonferminiano.com/jqueryscrollpagination/
 **	You may use this script for free, but keep my credits.
 **	Thank you.
 */

(function ($) {
    /**
     * 时间对象的格式化;
     */
    Date.prototype.format = function(format) {
        /* 
         * eg:format="yyyy-MM-dd hh:mm:ss"; 
         */
        var o = {
            "M+" : this.getMonth() + 1, // month  
            "d+" : this.getDate(), // day  
            "h+" : this.getHours(), // hour  
            "m+" : this.getMinutes(), // minute  
            "s+" : this.getSeconds(), // second  
            "q+" : Math.floor((this.getMonth() + 3) / 3), // quarter  
            "S" : this.getMilliseconds()
            // millisecond  
        }

        if (/(y+)/.test(format)) {
            format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4
                - RegExp.$1.length));
        }

        for (var k in o) {
            if (new RegExp("(" + k + ")").test(format)) {
                format = format.replace(RegExp.$1, RegExp.$1.length == 1
                    ? o[k]
                    : ("00" + o[k]).substr(("" + o[k]).length));
            }
        }
        return format;
    }

    $.fn.scrollPagination = function (options) {
        var opts = $.extend($.fn.scrollPagination.defaults, options||{});
        var target = opts.scrollTarget;
        if (target == null) {
            target = obj;
        }
        opts.scrollTarget = target;
        return this.each(function () {
            $.fn.scrollPagination.init($(this), opts);
        });

    };

    $.fn.stopScrollPagination = function () {
        return this.each(function () {
            $(this).attr('scrollPagination', 'disabled');
        });

    };

    $.fn.scrollPagination.loadContent = function (obj, opts) {
        var target = opts.scrollTarget;
        var mayLoadContent = $(target).scrollTop() + opts.heightOffset >= $(document).height() - $(target).height();
        if (mayLoadContent && opts.lock) {
            if (opts.beforeLoad != null ) {
                opts.beforeLoad();
            }
            opts.lock = false;
            $(obj).children().attr('rel', 'loaded');
            $.ajax({
                type:'GET',
                url:opts.contentPage,
                data:opts.contentData,
                success:function (data) {
                    opts.lock = true;
                    opts.loader(data);
                    var objectsRendered = $(obj).children('[rel!=loaded]');

                    if (opts.afterLoad != null) {
                        opts.afterLoad(objectsRendered);
                    }
                },
                dataType:opts.dataType
            });
        }

    };

    $.fn.scrollPagination.init = function (obj, opts) {
        var target = opts.scrollTarget;
        $(obj).attr('scrollPagination', 'enabled');

        $(target).scroll(function (event) {
            if ($(obj).attr('scrollPagination') == 'enabled') {
                $.fn.scrollPagination.loadContent(obj, opts);
            }
            else {
                event.stopPropagation();
            }
        });

        $.fn.scrollPagination.loadContent(obj, opts);

    };

    $.fn.scrollPagination.defaults = {
        'contentPage':null,
        'contentData':{},
        'beforeLoad':null,
        'afterLoad':null,
        'scrollTarget':null,
        'heightOffset':0,
        'dataType':null,
        'loader':function(data){},
        'lock':true
    };
})(jQuery);