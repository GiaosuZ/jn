<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/10/28
  Time: 15:24
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
    <link rel="stylesheet" type="text/css" href="css/992.css">


    <%--<script src="js/jquery-1.11.1.min.js"></script>--%>
    <%--<script src="js/jquery-migrate-1.2.1.min.js"></script>--%>
    <%--<script src="js/modernizr.min.js"></script>--%>
    <%--<script src="js/ie.js"></script>--%>
    <script src="js/jquery-1.7.2.min_1.js"></script>
    <script>
    var sum=8;
    function  a1(){
        var size=8;
        sum=sum+size;
        return sum;
    }
    function a2(){
        var num=a1();
        console.log(num);
        $.ajax({
            url:"checkpersona20",
            data:{jn_userid:${sessionScope.myuser.jn_userid},page:1,size:num},
            dataType:"json",
            success:function(msg){
                var str="";
                if (msg.data!=null&&msg.data.length>0) {
                    for (var i=0;i<msg.data.length;i++){
                        if (msg.data[i].jn_logo==null) {
                            str=str+'<article class="hentry post"><div class="featured-image"><a href="#"><img src="picture/10.jpg" alt="blog-image"></a></div><header class="entry-header"><h1 class="entry-title"><a href="#">'+msg.data[i].jn_posttitle+'</a>\n' +
                                '                        </h1><div class="entry-meta"><span class="entry-date"><time class="entry-date" datetime="2014-07-13T04:34:10+00:00">'+msg.data[i].jn_posttime+'</time></span><span class="comment-link"><a href="#">124 Comments</a>\n' +
                                '                                        </span><span class="read-time"><span class="eta"></span> read</span><span class="cat-links"><a href="#" title="View all posts in Adventure" rel="category tag">LIFE</a>\n' +
                                '                                        </span></div></header>\n' +
                                '                        </article>'


                        }else{
                            str=str+'<article class="hentry post"><div class="featured-image"><a href="#"><img src="'+msg.data[i].jn_logo+'" alt="blog-image"></a></div><header class="entry-header"><h1 class="entry-title"><a href="#">'+msg.data[i].jn_posttitle+'</a>\n' +
                                '                        </h1><div class="entry-meta"><span class="entry-date"><time class="entry-date" datetime="2014-07-13T04:34:10+00:00">'+msg.data[i].jn_posttime+'</time></span><span class="comment-link"><a href="#">124 Comments</a>\n' +
                                '                                        </span><span class="read-time"><span class="eta"></span> read</span><span class="cat-links"><a href="#" title="View all posts in Adventure" rel="category tag">LIFE</a>\n' +
                                '                                        </span></div></header>\n' +
                                '                        </article>'}


                    }

                }

                $("#content1").html(str);

            }
        });
    }
    $(document).ready(function () {
        var str="";
        $.ajax({
            url:"checkpersona20",
            data:{jn_userid:${sessionScope.myuser.jn_userid},page:1,size:8},
            dataType:"json",
            success:function(msg){
            if (msg.data!=null&&msg.data.length>0) {
                for (var i=0;i<msg.data.length;i++){
                    if (msg.data[i].jn_logo==null) {
                        str=str+'<article class="hentry post"><div class="featured-image"><a href="#"><img src="picture/10.jpg" alt="blog-image"></a></div><header class="entry-header"><h1 class="entry-title"><a href="#">'+msg.data[i].jn_posttitle+'</a>\n' +
                            '                        </h1><div class="entry-meta"><span class="entry-date"><time class="entry-date" datetime="2014-07-13T04:34:10+00:00">'+msg.data[i].jn_posttime+'</time></span><span class="comment-link"><a href="#">124 Comments</a>\n' +
                            '                                        </span><span class="read-time"><span class="eta"></span> read</span><span class="cat-links"><a href="#" title="View all posts in Adventure" rel="category tag">LIFE</a>\n' +
                            '                                        </span></div></header>\n' +
                            '                        </article>'


                    }else{
                    str=str+'<article class="hentry post"><div class="featured-image"><a href="#"><img src="'+msg.data[i].jn_logo+'" alt="blog-image"></a></div><header class="entry-header"><h1 class="entry-title"><a href="#">'+msg.data[i].jn_posttitle+'</a>\n' +
                        '                        </h1><div class="entry-meta"><span class="entry-date"><time class="entry-date" datetime="2014-07-13T04:34:10+00:00">'+msg.data[i].jn_posttime+'</time></span><span class="comment-link"><a href="#">124 Comments</a>\n' +
                        '                                        </span><span class="read-time"><span class="eta"></span> read</span><span class="cat-links"><a href="#" title="View all posts in Adventure" rel="category tag">LIFE</a>\n' +
                        '                                        </span></div></header>\n' +
                        '                        </article>'}


                }

            }

                $("#content1").html(str);

            }
        });



    });


</script>
    <script>

        $(document).ready(function () {
            var str="";
            $.ajax({
                url:"checkpersonal0?jn_userid="+${sessionScope.myuser.jn_userid},
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
    <!-- header -->




    <!-- site-main -->
    <div id="main" class="site-main">







        <!-- InstanceBeginEditable name="FeaturedContent" -->


        <!-- post-slider -->
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
                    <!-- .entry-meta -->

                    <!-- .entry-title -->
                    <h1 class="entry-title"><a href="#">The Life of Stuff</a></h1>
                </header>
                <!-- .entry-header -->

            </div>
            <!-- post -->


            <!-- post -->
            <div class="post-thumbnail" style="background-image:url(image/03.jpg)">

                <!-- .entry-header -->
                <header class="entry-header">

                    <!-- .entry-meta -->
                    <div class="entry-meta">
                            <span class="cat-links">
                                <a href="#" rel="category tag">Nature</a>
                            </span>
                    </div>
                    <!-- .entry-meta -->

                    <!-- .entry-title -->
                    <h1 class="entry-title"><a href="#">Cuckoo Events</a></h1>
                </header>
                <!-- .entry-header -->

            </div>
            <!-- post -->

            <!-- post -->
            <div class="post-thumbnail" style="background-image:url(image/04.jpg)">

                <!-- .entry-header -->
                <header class="entry-header">

                    <!-- .entry-meta -->
                    <div class="entry-meta">
                            <span class="cat-links">
                                <a href="#" rel="category tag">Life</a>
                            </span>
                    </div>
                    <!-- .entry-meta -->

                    <!-- .entry-title -->
                    <h1 class="entry-title"><a href="blog-single.html">Stay Calm And Surf</a></h1>
                </header>
                <!-- .entry-header -->

            </div>
            <!-- post -->

            <!-- post -->
            <div class="post-thumbnail" style="background-image:url(image/05.jpg)">

                <!-- .entry-header -->
                <header class="entry-header">

                    <!-- .entry-meta -->
                    <div class="entry-meta">
                            <span class="cat-links">
                                <a href="#" rel="category tag">Fashion</a>
                            </span>
                    </div>
                    <!-- .entry-meta -->

                    <!-- .entry-title -->
                    <h1 class="entry-title"><a href="#">Becoming a Dragonfly</a></h1>
                </header>
                <!-- .entry-header -->

            </div>
            <!-- post -->

        </div>
        <!-- post-slider -->



        <!-- InstanceEndEditable -->


        <!-- layout-fixed -->
        <div class="layout-medium">

            <!-- primary -->
            <div id="primary" class="content-area with-sidebar">

                <!-- site-content -->
                <div id="content" class="site-content" role="main">


                    <!-- InstanceBeginEditable name="PrimaryContent" -->



                    <!--<header class="entry-header">
                        <h1 class="entry-title">Stories</h1>
                    </header>-->

                    <!-- BLOG MASONRY -->
                    <div class="masonry blog-masonry" data-layout="fitRows" data-item-width="340" id="content1">


                    </div>
                    <!-- BLOG MASONRY -->



                    <!-- post nav -->
                    <nav class="navigation" role="navigation">
                        <div class="nav-previous"><button onclick="a2()"><a><span class="meta-nav" >←</span> 更 多</a></button></div>
                        <!--<div class="nav-next"><a href="#">Newer posts <span class="meta-nav">→</span></a></div>-->
                    </nav>
                    <!-- post nav -->




                    <!-- InstanceEndEditable -->


                </div>
                <!-- site-content -->

            </div>
            <!-- primary -->


            <!-- #secondary -->
            <div id="secondary" class="widget-area sidebar" role="complementary">





                <!-- widget : categories -->
                <aside class="widget widget_categories">
                    <h3 class="widget-title">查 看</h3>
                    <ul>
                        <c:if test="${sessionScope.fansnumber1==null}">
                            <li class="cat-item"><a href="#">粉丝：0</a></li>
                        </c:if>
                        <c:if test="${sessionScope.fansnumber1!=null}">
                            <li class="cat-item"><a href="#">粉丝：${sessionScope.fansnumber1}</a></li>
                        </c:if>
                        <c:if test="${sessionScope.collectionnumber1==null}">
                            <li class="cat-item"><a href="Collection.jsp">收藏：0</a></li>
                        </c:if>
                        <c:if test="${sessionScope.collectionnumber1!=null}">
                            <li class="cat-item"><a href="Collection.jsp">收藏：${sessionScope.collectionnumber1}</a></li>
                        </c:if>
                        <c:if test="${sessionScope.concernnumber1==null}">
                            <li class="cat-item"><a href="follow.jsp">关注：0</a></li>
                        </c:if>
                        <c:if test="${sessionScope.concernnumber1!=null}">
                            <li class="cat-item"><a href="follow.jsp">关注：${sessionScope.concernnumber1}</a></li>
                        </c:if>
                        <c:if test="${sessionScope.historynumber1==null}">
                            <li class="cat-item"><a href="history.jsp">历史：0</a></li>
                        </c:if>
                        <c:if test="${sessionScope.historynumber1!=null}">
                            <li class="cat-item"><a href="history.jsp">历史：${sessionScope.historynumber1}</a></li>
                        </c:if>

                    </ul>
                </aside>

            </div>
            <!-- #secondary -->


        </div>
        <!-- layout-medium -->




    </div>
    <!-- site-main -->


    <!-- site-footer -->
    <footer id="colophon" class="site-footer" role="contentinfo">

        <!-- layout-medium -->
        <div class="layout-medium">


            <!-- footer-sidebar -->




            <!-- .site-info -->


            <!-- layout-medium -->
            <div class="layout-medium">

                <p>Copyright &copy; 2022.Company name All rights reserved.</p>

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

