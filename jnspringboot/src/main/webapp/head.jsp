<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/11/7
  Time: 13:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
                    "<li><a  href='checkpersonal3'>个人中心&nbsp;</a></li>\r\n"+
                    "<li><a  href='dynamic.jsp'>动态&nbsp;</a></li>\r\n"+
                    "<li><a  href='cancellationuser'>退出登录</a></li>";
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
<header id="masthead" class="site-header" role="banner">

    <!-- site-navigation -->
    <nav id="primary-navigation" class="site-navigation primary-navigation" role="navigation">

        <a class="menu-toggle"><span class="lines"></span></a>

        <!-- nav-menu -->
        <div class="nav-menu">
            <ul>
                <li><a href="index.jsp">首页</a>
                    <!-- level 2 -->
                    <!--  <ul>
                          <li><a href="home-alt.html">Home Alternate</a></li>
                          <li><a href="">Blog Masonry</a></li>
                          <li><a href="blog-simple.html">Blog Simple</a></li>
                          <li><a href="blog-regular-with-sidebar.html">Blog Regular Sidebar</a></li>
                          <li><a href="blog-masonry-with-sidebar.html">Blog Masonry Sidebar</a></li>
                      </ul> -->
                    <!-- level 2 -->
                </li>
                <li><a href="javascript: gettype(1);">科技</a></li>
                <li><a href="javascript: gettype(2);">运动</a></li>
                <li><a href="javascript: gettype(3);">汽车</a></li>
                <li><a href="javascript: gettype(4);">美食</a></li>
                <li><a href="javascript: gettype(5);">游戏</a></li>
                <li><a href="javascript: gettype(6);">摄影</a></li>
                <li><a href="javascript: gettype(7);">美容</a></li>
                <li><a href="javascript: gettype(8);">时尚</a>
                    <!-- level 2 -->
                    <!-- <ul>
                         <li><a href="resume.html">Resume</a></li>
                         <li><a href="typo.html">Typography</a></li>
                         <li><a href="shortcodes.html">Shortcodes</a></li>
                         <li><a href="archives.html">Archives</a></li>
                         <li><a href="404.html">404</a></li>
                         <li><a href="grid.html">Grid</a></li>
                         <li><a href="form-elements.html">Forms</a> -->
                    <!-- level 3 -->
                    <!-- <ul>
                        <li><a href="grid.html">Grid</a></li>
                        <li><a href="form-elements.html">Forms</a></li>
                    </ul> -->
                    <!-- level 3 -->
                </li>
            </ul>
            <!-- level 2 -->
            </li>

            </ul>
        </div>
        <!-- nav-menu -->

        <a class="search-toggle toggle-link" id="findbykey"></a>

        <!-- search-container -->
        <div class="search-container">

            <div class="search-box">
                <form role="search" method="post" class="search-form" action="javascript:click();" id="search">
                    <label>Search for
                        <input type="search" id="search-field" placeholder="type and hit enter" name="keyword">
                    </label>
                    <input type="submit"  value="Search">
                </form>
            </div>

        </div>
        <!-- search-container -->

        <!-- social-container -->
        <div class="social-container">

            <ul class="social">
                <li><a  href="register.jsp">注册</a></li>
                <li><a  href="login.jsp">登录</a></li>
                <li><a  href="checkpersonal3">个人中心</a></li>
                <li><a  href="#">动态</a></li>
            </ul>


        </div>
        <!-- social-container -->

    </nav>
    <!-- site-navigation -->

    <!-- site-title -->
    <h1 class="site-title">
        <a href="index.html" rel="home">
            <img src="picture/jinnanglog.png" alt="logo">
            <!--EDITOR-->
        </a>
    </h1>







    <!-- site-title -->


    <!--<h1 class="site-title">
        <a href="../index.html" rel="home">
            EDITOR
        </a>
    </h1>
    <p class="site-description">just another minimalist theme.</p>-->


</header>
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

</html>
