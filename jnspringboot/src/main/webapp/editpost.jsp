<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/11/2
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="is-menu-fixed"><!-- InstanceBegin template="/Templates/page-with-sidebar.dwt" codeOutsideHTMLIsLocked="false" -->

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Editor - Responsive HTML5 Template">
    <meta name="keywords" content="editor, blog, html5, portfolio">
    <meta name="author" content="Pixelwars">

    <title>Editor - a wordpress blog</title>

    <!-- FONTS -->
    <link href='css/css.css' rel='stylesheet' type='text/css'>
    <link href='css/css1.css' rel='stylesheet' type='text/css'>

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
    v

    <script type="text/javascript" charset="UTF-8" src="ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="UTF-8" src="ueditor/ueditor.all.js"></script>
    <script type="text/javascript" charset="UTF-8" src="ueditor/lang/zh-cn/zh-cn.js"></script>
    <link rel="stylesheet" type="text/css" charset="UTF-8" href="ueditor/themes/default/css/ueditor.css">

    <%--<script src="js/jquery-1.11.1.min.js"></script>--%>
    <%--<script src="js/jquery-migrate-1.2.1.min.js"></script>--%>
    <%--<script src="js/modernizr.min.js"></script>--%>
    <%--<script src="js/ie.js"></script>--%>
    <script src="js/jquery-1.7.2.min_1.js"></script>

    <script>
        function previewFile() {

            var preview = document.getElementById("mylogo");
            // var preview2 = document.getElementById("mylogo2");
            var file  = document.querySelector('input[type=file]').files[0];
            console.log(file);
            var reader = new FileReader();
            reader.onloadend = function () {
                preview.src = reader.result;
                //  preview2.src = reader.result;
            }
            if (file) {
                reader.readAsDataURL(file);
            } else {
                preview.src = "";
                // preview2.src = "";
            }
        }
    </script>
    <script>
        $(document).ready(function () {
            var str="";
            $.ajax({
                url:"checkpersonal2?jn_userid="+${sessionScope.myuser.jn_userid},
                dataType:"json",
                success:function(msg){
                    if (msg.data!=null&&msg.data.length>0) {
                        for (var i=0;i<msg.data.length;i++){
                            if (msg.data[i].jn_logo==null) {
                                str=str+'<li>\n' +
                                    '                                <a href="#" class="tptn_link">\n' +
                                    '                                    <img src="picture/t01.jpg" alt="post-image" class="tptn_thumb">\n' +
                                    '                                </a>\n' +
                                    '                                <span class="tptn_after_thumb">\n' +
                                    '                                        <a href="#" class="tptn_link"><span class="tptn_title">Runaway A Road Adventure</span></a>\n' +
                                    '                                    <!--<span class="tptn_author"> by <a href="#">Johnny Doe</a></span>-->\n' +
                                    '                                        <span class="tptn_date"> September 3, 2014</span>\n' +
                                    '                                    </span>\n' +
                                    '                            </li>'

                            }else{
                                str=str+'<li>\n' +
                                    '                                <a href="#" class="tptn_link">\n' +
                                    '                                    <img src="picture/t01.jpg" alt="post-image" class="tptn_thumb">\n' +
                                    '                                </a>\n' +
                                    '                                <span class="tptn_after_thumb">\n' +
                                    '                                        <a href="#" class="tptn_link"><span class="tptn_title">Runaway A Road Adventure</span></a>\n' +
                                    '                                    <!--<span class="tptn_author"> by <a href="#">Johnny Doe</a></span>-->\n' +
                                    '                                        <span class="tptn_date"> September 3, 2014</span>\n' +
                                    '                                    </span>\n' +
                                    '                            </li>'

                            }
                        }

                    }

                    $("#content2").html(str);

                }
            });
        });
    </script>
    <script>
        $(document).ready(function () {
            $.ajax({
                url:"checkpersonal3?jn_userid="+${sessionScope.myuser.jn_userid}
            })
            console.log("2222");
        });
    </script>
</head>

<body>

<!-- page -->
<div id="page" class="hfeed site">

    <!-- header -->
    <jsp:include page="head.jsp"></jsp:include>
    <center>
        <div style="height: 2000px; width: 1000px;">
    <div id="main" class="site-main">
        <form id="mypost" method="post" action="addPost" >
            <p>
               <label for="attach-file">帖子封面</label>
                <input type="file" id="attach-file" name="jn_logo"  onchange="previewFile()">
            </p>
            <img src="picture/3.jpg" width="200" height="140"  id="mylogo"/><br />
            <p>帖子标题：<input type="text" name="posttitle" value=""></p>
            <p><textarea id="myeditor" name="postcontent" onfocus="if (value=='帖子内容:'){value='帖子内容'}" onblur="if (value==''){value='帖子内容'} "></textarea></p>
            <script type="text/javascript">

                var editor = new UE.ui.Editor();

                editor.render("myeditor");
            </script>
            <p>标签：<input type="checkbox" value="科技" name="posttype" >科技
                <input type="checkbox" value="运动" name="posttype" >运动
                <input type="checkbox" value="汽车" name="posttype" >汽车
                <input type="checkbox" value="美食" name="posttype" >美食
                <input type="checkbox" value="游戏" name="posttype" >游戏
                <input type="checkbox" value="摄影" name="posttype" >摄影
                <input type="checkbox" value="美容" name="posttype" >美容
                <input type="checkbox" value="时尚" name="posttype" >时尚
            </p>
            <input type="submit" value="发布">
        </form>


        <!--<div class="post-slider owl-carousel" data-items="3" data-loop="false" data-center="false" data-mouse-drag="true" data-nav="false" data-dots="false" data-autoplay="true" data-autoplay-speed="600" data-autoplay-timeout="2000">-->
        <div class="post-slider owl-carousel" data-items="2" data-loop="true" data-dots="false" data-nav="true" data-nav-prev-text="prev" data-nav-next-text="next">

            <!-- post -->
            <div class="post-thumbnail" style="background-image:url(image/01.jpg)">

                <!-- .entry-header -->
                <header class="entry-header">

                    <!-- .entry-meta -->
                    <div class="entry-meta">
                            <span class="cat-links">
                                <a href="#" rel="category tag">TRAVEL</a>
                            </span>
                    </div>
                    <!-- .entry-meta -->

                    <!-- .entry-title -->
                    <h1 class="entry-title"><a href="blog-single.html">There's always light at the end of the tunnel</a></h1>
                </header>
                <!-- .entry-header -->

            </div>
            <!-- post -->
            <div class="post-thumbnail" style="background-image:url(image/02.jpg)">

                <!-- .entry-header -->
                <header class="entry-header">

                    <!-- .entry-meta -->
                    <div class="entry-meta">
                            <span class="cat-links">
                                <a href="#" rel="category tag">Life</a>
                            </span>
                    </div>
                    <h1 class="entry-title"><a href="#">The Life of Stuff</a></h1>
                </header>
                <!-- .entry-header -->

            </div>
            <div class="post-thumbnail" style="background-image:url(image/03.jpg)">

                <!-- .entry-header -->
                <header class="entry-header">

                    <!-- .entry-meta -->
                    <div class="entry-meta">
                            <span class="cat-links">
                                <a href="#" rel="category tag">Nature</a>
                            </span>
                    </div>
                    <h1 class="entry-title"><a href="#">Cuckoo Events</a></h1>
                </header>
                <!-- .entry-header -->

            </div>
            <div class="post-thumbnail" style="background-image:url(image/04.jpg)">

                <!-- .entry-header -->
                <header class="entry-header">

                    <!-- .entry-meta -->
                    <div class="entry-meta">
                            <span class="cat-links">
                                <a href="#" rel="category tag">Life</a>
                            </span>
                    </div>

                    <h1 class="entry-title"><a href="blog-single.html">Stay Calm And Surf</a></h1>
                </header>
            </div>
            <div class="post-thumbnail" style="background-image:url(image/05.jpg)">

                <!-- .entry-header -->
                <header class="entry-header">

                    <!-- .entry-meta -->
                    <div class="entry-meta">
                            <span class="cat-links">
                                <a href="#" rel="category tag">Fashion</a>
                            </span>
                    </div>
                    <h1 class="entry-title"><a href="#">Becoming a Dragonfly</a></h1>
                </header>
                <!-- .entry-header -->

            </div>
        </div>


    </div>
    <!-- site-main -->
        </div>
    </center>

    <!-- site-footer -->
    <footer id="colophon" class="site-footer" role="contentinfo">

        <!-- layout-medium -->
        <div class="layout-medium">


            <!-- footer-sidebar -->




            <!-- .site-info -->


            <!-- layout-medium -->
            <div class="layout-medium">



            </div>
            <!-- layout-medium -->


        </div>


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


