<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="is-menu-fixed"><!-- InstanceBegin template="/Templates/page-medium.dwt" codeOutsideHTMLIsLocked="false" -->

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Editor - Responsive HTML5 Template">
    <meta name="keywords" content="editor, blog, html5, portfolio">
    <meta name="author" content="Pixelwars">

    <title>锦囊</title>

    <!-- FONTS -->
    <link href="css/css.css" rel="stylesheet" type="text/css">
    <link href="css/css1.css" rel="stylesheet" type="text/css">

    <!-- STYLES -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/fontello.css">
    <link rel="stylesheet" type="text/css" href="css/uniform.default.css">
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="css/fluidbox.css">
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="css/selection-sharer.css">
    <link rel="stylesheet" type="text/css" href="css/elastislide.css">
    <link rel="stylesheet" type="text/css" href="css/align.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/768.css">
    <link rel="stylesheet" type="text/css" href="css/992.css">

    <!-- INITIAL SCRIPTS -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/modernizr.min.js"></script>
    <!--[if lt IE 9]>
    <script src="js/ie.js"></script>
    <![endif]-->


    <!-- InstanceBeginEditable name="head" -->
    <!-- InstanceEndEditable -->


</head>
<script>
    $(document).ready(
        function () {
            var str1="";
            var name="${sessionScope.myuser.getJn_username()}";

            if(name!=""){
                str1=str1+"<li><a  href='#'>欢迎，"+"${sessionScope.myuser.getJn_username()}&nbsp;&nbsp;"+"</a></li>\r\n"+
                    "<li><a  href='personal.jsp'>个人中心&nbsp;</a></li>\r\n"+
                    "<li><a  href='#'>动态&nbsp;</a></li>\r\n"+
                    "<li><a  href='javascript:a()'>退出登录</a></li>";
                $(".social").html(str1);
            }
            $.ajax({
                url:"postShow",
                data:{page:1,size:3},
                dataType:"json",
                success:function (msg) {
                    console.log(1);
                    var str2="";
                    if (msg.data!=null&&msg.data.length>0) {
                        for (var i=0;i<msg.data.length;i++){
                            if (msg.data[i].jn_logo!=null) {
                                str2=str2+"<article class=\"hentry post\">\n" +
                                    "\n" +
                                    "                            <!-- .featured-image -->\n" +
                                    "                            <div class=\"featured-image\">\n" +
                                    "                                <a href=\"blog-single.html\"><img src='upload/"+msg.data[i].jn_logo+"' alt=\"blog-image\"></a>\n" +
                                    "                            </div>\n" +
                                    "                            <!-- .featured-image -->\n" +
                                    "\n" +
                                    "\n" +
                                    "                            <!-- .entry-header -->\n" +
                                    "                            <header class=\"entry-header\">\n" +
                                    "\n" +
                                    "                                <!-- .entry-title -->\n" +
                                    "                                <h1 class=\"entry-title\"><a href=\"blog-single.html\">"+msg.data[i].jn_posttitle+"</a></h1>\n" +
                                    "\n" +
                                    "\n" +
                                    "                                <!-- .entry-meta -->\n" +
                                    "                                <div class=\"entry-meta\">\n" +
                                    "                                        <span class=\"entry-date\">\n" +
                                    "                                            <time class=\"entry-date\" datetime=\"2014-07-13T04:34:10+00:00\">"+msg.data[i].jn_posttime+"</time>\n" +
                                    "                                        </span>\n" +
                                    "                                    <span class=\"comment-link\">\n" +
                                    "                                            <a href=\"blog-single.html#comments\">124 Comments</a>\n" +
                                    "                                        </span>\n" +
                                    "                                    <span class=\"read-time\"><span class=\"eta\"></span> read</span>\n" +
                                    "                                    <span class=\"cat-links\">\n" +
                                    "                                            <a href=\"#\" title=\"View all posts in Adventure\" rel=\"category tag\">LIFE</a>\n" +
                                    "                                        </span>\n" +
                                    "                                </div>\n" +
                                    "                                <!-- .entry-meta -->\n" +
                                    "\n" +
                                    "\n" +
                                    "                            </header>\n" +
                                    "                            <!-- .entry-header -->\n" +
                                    "\n" +
                                    "                            <!-- .entry-content -->\n" +
                                    "                            <div class=\"entry-content\">\n" +
                                    "\n" +
                                    "                                <p>It may comfort you to know that Fry's death took only fifteen seconds, yet the pain was so intense, that it felt to him like fifteen years.\n" +
                                    "                                    <span class=\"more\">\n" +
                                    "                                            <a href=\"blog-single.html\" class=\"more-link\">Continue reading <span class=\"meta-nav\">→</span></a>\n" +
                                    "                                        </span>\n" +
                                    "                                </p>\n" +
                                    "\n" +
                                    "                            </div>\n" +
                                    "                            <!-- .entry-content -->\n" +
                                    "\n" +
                                    "\n" +
                                    "                        </article>";

                            }else{
                                str2=str2+"";
                            }


                        }

                    }

                    $("#post").html(str2);
                }
            });
        }
    );
</script>
<script>
    var size = 3;
    var is_requesting = false;
    var changeScrollSlide1 = function() {
        // 如果滚动到最顶端且没有正在请求中，则向后端发送请求，获取旧的消息
        if ($('.post').scrollTop() === 0 && is_requesting === false) {
            size+=3;
            is_requesting = true;

            // 向后端发送请求
            $.ajax({
                url: 'postShow',
                dataType: 'json',
                data: { page: 1, size: size},
                success: function(msg) {

                    // TODO：将获取的数据渲染到页面
                    var str2=""
                    if (msg.data!=null&&msg.data.length>0) {
                        for (var i=0;i<msg.data.length;i++){
                            console.log(i)
                            if (msg.data[i].jn_logo!=null) {
                                str2=str2+"<article class=\"hentry post\">\n" +
                                    "\n" +
                                    "                            <!-- .featured-image -->\n" +
                                    "                            <div class=\"featured-image\">\n" +
                                    "                                <a href=\"blog-single.html\"><img src='upload/"+msg.data[i].jn_logo+"' alt=\"blog-image\"></a>\n" +
                                    "                            </div>\n" +
                                    "                            <!-- .featured-image -->\n" +
                                    "\n" +
                                    "\n" +
                                    "                            <!-- .entry-header -->\n" +
                                    "                            <header class=\"entry-header\">\n" +
                                    "\n" +
                                    "                                <!-- .entry-title -->\n" +
                                    "                                <h1 class=\"entry-title\"><a href=\"blog-single.html\">"+msg.data[i].jn_posttitle+"</a></h1>\n" +
                                    "\n" +
                                    "\n" +
                                    "                                <!-- .entry-meta -->\n" +
                                    "                                <div class=\"entry-meta\">\n" +
                                    "                                        <span class=\"entry-date\">\n" +
                                    "                                            <time class=\"entry-date\" datetime=\"2014-07-13T04:34:10+00:00\">"+msg.data[i].jn_posttime+"</time>\n" +
                                    "                                        </span>\n" +
                                    "                                    <span class=\"comment-link\">\n" +
                                    "                                            <a href=\"blog-single.html#comments\">124 Comments</a>\n" +
                                    "                                        </span>\n" +
                                    "                                    <span class=\"read-time\"><span class=\"eta\"></span> read</span>\n" +
                                    "                                    <span class=\"cat-links\">\n" +
                                    "                                            <a href=\"#\" title=\"View all posts in Adventure\" rel=\"category tag\">LIFE</a>\n" +
                                    "                                        </span>\n" +
                                    "                                </div>\n" +
                                    "                                <!-- .entry-meta -->\n" +
                                    "\n" +
                                    "\n" +
                                    "                            </header>\n" +
                                    "                            <!-- .entry-header -->\n" +
                                    "\n" +
                                    "                            <!-- .entry-content -->\n" +
                                    "                            <div class=\"entry-content\">\n" +
                                    "\n" +
                                    "                                <p>"+msg.data[i].jn_postcontent+"\n" +
                                    "                                    <span class=\"more\">\n" +
                                    "                                            <a href=\"blog-single.html\" class=\"more-link\">Continue reading <span class=\"meta-nav\">→</span></a>\n" +
                                    "                                        </span>\n" +
                                    "                                </p>\n" +
                                    "\n" +
                                    "                            </div>\n" +
                                    "                            <!-- .entry-content -->\n" +
                                    "\n" +
                                    "\n" +
                                    "                        </article>";

                            }else{
                                str2=str2+"";
                            }


                        }

                    }

                    $("#post").html(str2);
                    is_requesting = false;
                },
                error: function() {
                    size-=3;
                    is_requesting = false;
                }
            })
        }
    }

    window.addEventListener('scroll', changeScrollSlide1, true)

</script>
<script>
    var flag=0;
    var name="";
    function showpostbytype(typename) {
        if(name!=typename){
            flag=0;
        }
        if(flag==0){
            name=typename;
            flag=1;
        }
        var size = 3;
        var is_requesting = false;
        $.ajax({
            url: 'postShowbytype',
            dataType: 'json',
            data: {type:typename, page: 1, size: size},
            success: function(msg) {
                // TODO：将获取的数据渲染到页面
                var str2="";
                $("#post").html(str2);
                if (msg.data!=null&&msg.data.length>0) {
                    for (var i=0;i<msg.data.length;i++){

                        if (msg.data[i].jn_logo!=null) {
                            str2=str2+"<article class=\"hentry post\">\n" +
                                "\n" +
                                "                            <!-- .featured-image -->\n" +
                                "                            <div class=\"featured-image\">\n" +
                                "                                <a href=\"blog-single.html\"><img src='upload/"+msg.data[i].jn_logo+"' alt=\"blog-image\"></a>\n" +
                                "                            </div>\n" +
                                "                            <!-- .featured-image -->\n" +
                                "\n" +
                                "\n" +
                                "                            <!-- .entry-header -->\n" +
                                "                            <header class=\"entry-header\">\n" +
                                "\n" +
                                "                                <!-- .entry-title -->\n" +
                                "                                <h1 class=\"entry-title\"><a href=\"blog-single.html\">"+msg.data[i].jn_posttitle+"</a></h1>\n" +
                                "\n" +
                                "\n" +
                                "                                <!-- .entry-meta -->\n" +
                                "                                <div class=\"entry-meta\">\n" +
                                "                                        <span class=\"entry-date\">\n" +
                                "                                            <time class=\"entry-date\" datetime=\"2014-07-13T04:34:10+00:00\">"+msg.data[i].jn_posttime+"</time>\n" +
                                "                                        </span>\n" +
                                "                                    <span class=\"comment-link\">\n" +
                                "                                            <a href=\"blog-single.html#comments\">124 Comments</a>\n" +
                                "                                        </span>\n" +
                                "                                    <span class=\"read-time\"><span class=\"eta\"></span> read</span>\n" +
                                "                                    <span class=\"cat-links\">\n" +
                                "                                            <a href=\"#\" title=\"View all posts in Adventure\" rel=\"category tag\">LIFE</a>\n" +
                                "                                        </span>\n" +
                                "                                </div>\n" +
                                "                                <!-- .entry-meta -->\n" +
                                "\n" +
                                "\n" +
                                "                            </header>\n" +
                                "                            <!-- .entry-header -->\n" +
                                "\n" +
                                "                            <!-- .entry-content -->\n" +
                                "                            <div class=\"entry-content\">\n" +
                                "\n" +
                                "                                <p>It may comfort you to know that Fry's death took only fifteen seconds, yet the pain was so intense, that it felt to him like fifteen years.\n" +
                                "                                    <span class=\"more\">\n" +
                                "                                            <a href=\"blog-single.html\" class=\"more-link\">Continue reading <span class=\"meta-nav\">→</span></a>\n" +
                                "                                        </span>\n" +
                                "                                </p>\n" +
                                "\n" +
                                "                            </div>\n" +
                                "                            <!-- .entry-content -->\n" +
                                "\n" +
                                "\n" +
                                "                        </article>";

                        }else{
                            str2=str2+"";
                        }


                    }

                }
                console.log(typename);
                $("#post").html(str2);
            }

        })
        var changeScrollSlide1 = function() {
            if(name!=typename){
                window.removeEventListener('scroll', changeScrollSlide1, true);
            }
            // 如果滚动到最顶端且没有正在请求中，则向后端发送请求，获取旧的消息
            if ($('.post').scrollTop() === 0 && is_requesting === false) {
                size+=3;
                is_requesting = true

                // 向后端发送请求
                $.ajax({
                    url: 'postShowbytype',
                    dataType: 'json',
                    data: {type:typename, page: 1, size: size},
                    success: function(msg) {
                        // TODO：将获取的数据渲染到页面
                        var str2="";
                        $("#post").html(str2);
                        if (msg.data!=null&&msg.data.length>0) {
                            for (var i=0;i<msg.data.length;i++){

                                if (msg.data[i].jn_logo!=null) {
                                    str2=str2+"<article class=\"hentry post\">\n" +
                                        "\n" +
                                        "                            <!-- .featured-image -->\n" +
                                        "                            <div class=\"featured-image\">\n" +
                                        "                                <a href=\"blog-single.html\"><img src='upload/"+msg.data[i].jn_logo+"' alt=\"blog-image\"></a>\n" +
                                        "                            </div>\n" +
                                        "                            <!-- .featured-image -->\n" +
                                        "\n" +
                                        "\n" +
                                        "                            <!-- .entry-header -->\n" +
                                        "                            <header class=\"entry-header\">\n" +
                                        "\n" +
                                        "                                <!-- .entry-title -->\n" +
                                        "                                <h1 class=\"entry-title\"><a href=\"blog-single.html\">"+msg.data[i].jn_posttitle+"</a></h1>\n" +
                                        "\n" +
                                        "\n" +
                                        "                                <!-- .entry-meta -->\n" +
                                        "                                <div class=\"entry-meta\">\n" +
                                        "                                        <span class=\"entry-date\">\n" +
                                        "                                            <time class=\"entry-date\" datetime=\"2014-07-13T04:34:10+00:00\">"+msg.data[i].jn_posttime+"</time>\n" +
                                        "                                        </span>\n" +
                                        "                                    <span class=\"comment-link\">\n" +
                                        "                                            <a href=\"blog-single.html#comments\">124 Comments</a>\n" +
                                        "                                        </span>\n" +
                                        "                                    <span class=\"read-time\"><span class=\"eta\"></span> read</span>\n" +
                                        "                                    <span class=\"cat-links\">\n" +
                                        "                                            <a href=\"#\" title=\"View all posts in Adventure\" rel=\"category tag\">LIFE</a>\n" +
                                        "                                        </span>\n" +
                                        "                                </div>\n" +
                                        "                                <!-- .entry-meta -->\n" +
                                        "\n" +
                                        "\n" +
                                        "                            </header>\n" +
                                        "                            <!-- .entry-header -->\n" +
                                        "\n" +
                                        "                            <!-- .entry-content -->\n" +
                                        "                            <div class=\"entry-content\">\n" +
                                        "\n" +
                                        "                                <p>It may comfort you to know that Fry's death took only fifteen seconds, yet the pain was so intense, that it felt to him like fifteen years.\n" +
                                        "                                    <span class=\"more\">\n" +
                                        "                                            <a href=\"blog-single.html\" class=\"more-link\">Continue reading <span class=\"meta-nav\">→</span></a>\n" +
                                        "                                        </span>\n" +
                                        "                                </p>\n" +
                                        "\n" +
                                        "                            </div>\n" +
                                        "                            <!-- .entry-content -->\n" +
                                        "\n" +
                                        "\n" +
                                        "                        </article>";

                                }else{
                                    str2=str2+"";
                                }


                            }

                        }
                        console.log(typename);
                        $("#post").html(str2);

                        is_requesting = false;
                    },
                    error: function() {
                        size-=3;
                        is_requesting = false;
                    }
                })
            }
        }

        window.addEventListener('scroll', changeScrollSlide1, true);
        flag=1;


    }
    function remove() {
        window.removeEventListener('scroll', changeScrollSlide1,true);
        console.log(1);
    }
    function gettype(index) {
        remove();
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;

        if (index==1){

            var str="";
            str=str+"<h1 class=\"entry-title\">科技与狠活</h1>";
            $("#typetitle").html(str);
            var typename="科技";
            showpostbytype(typename);
        }
        if (index==2){
            var str="";
            str=str+"<h1 class=\"entry-title\">人生只有摆烂和运动</h1>";
            $("#typetitle").html(str);
            var typename="运动";
            showpostbytype(typename);
        }
        if (index==3){
            var str="";
            str=str+"<h1 class=\"entry-title\">关于朕的座驾</h1>";
            $("#typetitle").html(str);
            var typename="汽车";
            showpostbytype(typename);
        }
        if (index==4){
            var str="";
            str=str+"<h1 class=\"entry-title\">不干不净吃了没病</h1>";
            $("#typetitle").html(str);
            var typename="美食";
            showpostbytype(typename);
        }
        if (index==5){
            var str="";
            str=str+"<h1 class=\"entry-title\">游戏和女朋友你选谁</h1>";
            $("#typetitle").html(str);
            var typename="游戏";
            showpostbytype(typename);
        }
        if (index==6){
            var str="";
            str=str+"<h1 class=\"entry-title\">记录美好生活</h1>";
            $("#typetitle").html(str);
            var typename="摄影";
            showpostbytype(typename);
        }
        if (index==7){
            var str="";
            str=str+"<h1 class=\"entry-title\">男人也要对自己好一点</h1>";
            $("#typetitle").html(str);
            var typename="美容";
            showpostbytype(typename);
        }
        if (index==8){
            var str="";
            str=str+"<h1 class=\"entry-title\">这是啥？</h1>";
            $("#typetitle").html(str);
            var typename="时尚";
            showpostbytype(typename);
        }

    }
    function ppclick(){
        setTimeout(function() {
            // IE
            if(document.all) {
                document.getElementById("findbykey").click();
            }
            // 其它浏览器
            else {
                var e = document.createEvent("MouseEvents");
                e.initEvent("click", true, true);
                document.getElementById("findbykey").dispatchEvent(e);
            }
        }, 500);

    }
    function click(){


        window.onload = ppclick();


    }
</script>
<body>

<!-- page -->
<div id="page" class="hfeed site">

    <!-- header -->
    <jsp:include page="head.jsp"></jsp:include>
    <!-- header -->




    <!-- site-main -->
    <div id="main" class="site-main">




        <!-- primary -->
        <div id="primary" class="content-area">

            <!-- site-content -->
            <div id="content" class="site-content" role="main">






                <!-- InstanceBeginEditable name="FeaturedContent" -->


                <!-- InstanceEndEditable -->



                <!-- layout-medium -->
                <div class="layout-medium">



                    <!-- InstanceBeginEditable name="LayoutMediumContent" -->


                    <!-- entry-header -->
                    <header class="entry-header" id="typetitle">
                        <h1 class="entry-title">诗和远方</h1>
                    </header>
                    <!-- entry-header -->



                    <!-- BLOG MASONRY -->
                    <div class="masonry blog-masonry" data-layout="masonry" data-item-width="340" id="post">


                        <!-- .hentry -->

                    </div>
                    <!-- BLOG MASONRY -->




                    <!-- .navigation .pagination -->
                    <nav class="navigation pagination" role="navigation">

                        <h2 class="screen-reader-text">Posts navigation</h2>

                        <!-- .nav-links
                        <div class="nav-links">
                            <a class="page-numbers prev" href="#">上一页</a>
                            <a class="page-numbers" href="#"><span class="meta-nav screen-reader-text">Page </span>1</a>
                            <span class="page-numbers dots">…</span>
                            <a class="page-numbers" href="#"><span class="meta-nav screen-reader-text">Page </span>4</a>
                            <span class="page-numbers current"><span class="meta-nav screen-reader-text">Page </span>5</span>
                            <a class="page-numbers" href="#"><span class="meta-nav screen-reader-text">Page </span>6</a>
                            <span class="page-numbers dots">…</span>
                            <a class="page-numbers" href="#"><span class="meta-nav screen-reader-text">Page </span>8</a>
                            <a class="page-numbers next" href="#">下一页</a>
                        </div>
                        -->
                        <!-- .nav-links -->

                    </nav>
                    <!-- .navigation .pagination -->


                    <!-- InstanceEndEditable -->



                </div>
                <!-- layout-medium -->






            </div>
            <!-- site-content -->

        </div>
        <!-- primary -->




    </div>
    <!-- site-main -->


    <!-- site-footer -->
    <footer id="colophon" class="site-footer" role="contentinfo">

        <!-- layout-medium -->
        <div class="layout-medium">

            <!-- footer-social
            <div class="footer-social">

                <ul class="social">
                    <li><a class="facebook" href="#"></a></li>
                    <li><a class="twitter" href="#"></a></li>
                    <li><a class="google-plus" href="#"></a></li>
                    <li><a class="dribbble" href="#"></a></li>
                    <li><a class="instagram" href="#"></a></li>
                    <li><a class="vine" href="#"></a></li>
                </ul>
            -->
            </div>
            <!-- footer-social -->

            <!-- footer-sidebar -->
            <div class="footer-sidebar widget-area" role="complementary">

                <!-- widget -->
                <aside class="widget widget_text">
                    <h3 class="widget-title">关于 我</h3>
                    <div class="textwidget">
                        <img src="picture/about-small.jpg" alt="avatar"> <p>这个人很懒什么都没有留下</p>
                    </div>
                </aside>
                <!-- widget -->

                <!-- widget -->
                <aside class="widget widget_tag_cloud">
                    <h3 class="widget-title">标签</h3>
                    <div class="tagcloud"> <a href="#" title="1 topic" style="font-size: 8pt;">adaptive</a> <a href="#" title="2 topics" style="font-size: 22pt;">design</a> <a href="#" title="1 topic" style="font-size: 8pt;">html</a> <a href="#" title="2 topics" style="font-size: 22pt;">responsive</a> <a href="#" title="2 topics" style="font-size: 22pt;">think</a> <a href="#" title="1 topic" style="font-size: 8pt;">web design</a> <a href="#" title="1 topic" style="font-size: 8pt;">css</a> <a href="#" title="2 topics" style="font-size: 22pt;">animations</a> <a href="#" title="1 topic" style="font-size: 8pt;">layout</a> <a href="#" title="2 topics" style="font-size: 14pt;">mobile</a> <a href="#" title="2 topics" style="font-size: 22pt;">think</a> <a href="#" title="1 topic" style="font-size: 8pt;">typography</a> </div>
                </aside>
                <!-- widget -->

                <!-- widget : categories -->
                <!-- <aside class="widget widget_categories">
                   <h3 class="widget-title">Categories</h3>
                   <ul>
                     <li class="cat-item"><a href="#" title="View all posts filed under Nature">Nature</a></li>
                     <li class="cat-item"><a href="#" title="View all posts filed under Life">Life</a></li>
                     <li class="cat-item"><a href="#" title="View all posts filed under Adventure">Adventure</a></li>
                     <li class="cat-item"><a href="#" title="View all posts filed under Freebies">Travel</a></li>
                     <li class="cat-item"><a href="#" title="View all posts filed under Sport">Sport</a></li>
                   </ul>
                 </aside> -->
                <!-- widget : categories -->


                <!-- widget -->
                <!-- <aside class="widget widget_recent_entries">
                    <h3 class="widget-title">Recent Posts</h3>
                    <ul>
                        <li><a href="#">Runaway A Road Adventure</a></li>
                        <li><a href="#">All In Our Head</a></li>
                        <li><a href="#">Smaller Plate</a></li>
                        <li><a href="#">Alice On The Roof</a></li>
                        <li><a href="#">Becoming A DragonFly</a></li>
                    </ul>
                </aside> -->
                <!-- widget -->


            </div>
            <!-- footer-sidebar -->


        <!-- layout-medium -->


        <!-- .site-info -->
        <div class="site-info">

            <!-- layout-medium -->
            <div class="layout-medium">

                <p>Copyright &copy; 2022.Company name All rights reserved.</p>

            </div>
            <!-- layout-medium -->

        </div>
        <!-- .site-info -->



    </footer>
    <!-- site-footer -->


</div>
<!-- page -->


<script src="js/fastclick.js"></script>
<script src="js/jquery.fitvids.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/jquery.uniform.min.js"></script>
<script src="js/imagesloaded.pkgd.min.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.fluidbox.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/readingTime.js"></script>
<script src="js/selection-sharer.js"></script>
<script src="js/r-gallery.js"></script>
<script src="js/main.js"></script>


</body>
<!-- InstanceEnd --></html>