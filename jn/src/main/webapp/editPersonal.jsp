<%--
  Created by IntelliJ IDEA.
  User: 小l
  Date: 2022/11/1
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="is-menu-fixed"><!-- InstanceBegin template="/Templates/page-fixed.dwt" codeOutsideHTMLIsLocked="false" -->

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

    <!-- INITIAL SCRIPTS -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/modernizr.min.js"></script>
    <!--[if lt IE 9]>
    <script src="js/ie.js"></script>
    <![endif]-->

    <!-- InstanceBeginEditable name="head" -->
    <!-- InstanceEndEditable -->
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
</head>

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



                <!-- layout-fixed -->
                <div class="layout-fixed">



                    <!-- InstanceBeginEditable name="LayoutFixedContent" -->



                    <!-- .hentry -->
                    <article class="hentry page">


                        <!-- .entry-header -->
                        <header class="entry-header">
                            <h1 class="entry-title">编辑个人页</h1>
                        </header>
                        <!-- .entry-header -->


                        <!-- .entry-content -->
                        <div class="entry-content">

                            <p>生活不止眼前的苟且还有诗和远方......</p>


                            <form action="saveUser" method="post" enctype="multipart/form-data">

                                <p>
                                    <label for="your-name">用户名 *</label>
                                    <input readonly="readonly"type="text" name="jn_username" id="your-name" class="required" value="${sessionScope.myuser.jn_username}">
                                </p>

                                <p>
                                    <label for="your-email">邮箱 *</label>
                                    <input type="text" name="jn_useremail" id="your-email" class="required email"value="${sessionScope.myuser.jn_useremail}">
                                </p>

                                <p>
                                    <label for="jn_userpwd">修改密码 *</label>
                                    <input type="text" name="jn_userpwd" id="jn_userpwd"value="${sessionScope.myuser.jn_userpwd}">
                                </p>


                                <p>
                                    <label for="attach-file">头 像</label>
                                    <input type="file" id="attach-file" name="jn_userlogo"  onchange="previewFile()">
                                    <c:if test="${sessionScope.myuser.jn_userlogo==null}">
                                </p>
                                 <img src="picture/3.jpg" width="200" height="140"  id="mylogo"/><br />
                                <p> </c:if>
                                    <c:if test="${sessionScope.myuser.jn_userlogo!=null}">
                                </p>
                                <img src="upload/${sessionScope.myuser.jn_userlogo}" width="200" height="140"  id="mylogo"/><br />
                                <p> </c:if>
                                    <label for="jn_usersignature">你的 个性签名</label>
                                    <textarea name="jn_usersignature" id="jn_usersignature">${sessionScope.myuser.jn_usersignature}</textarea>
                                </p>


                                <p>
                                    <label>性别</label>
                                    <c:if test="${sessionScope.myuser.jn_usersex=='男'}">
                                    <label class="inline-label">
                                        <input type="radio" name="jn_usersex" value="radio_1" id="radio_1" class="required" checked="checked">男
                                    </label>
                                        <label class="inline-label">
                                            <input type="radio" name="jn_usersex" value="radio_2" id="radio_2" class="required">女
                                        </label>
                                    </c:if>
                                    <c:if test="${sessionScope.myuser.jn_usersex=='女'}">
                                        <label class="inline-label">
                                            <input type="radio" name="jn_usersex" value="radio_1" id="radio_1" class="required">男
                                        </label>
                                        <label class="inline-label">
                                            <input type="radio" name="jn_usersex" value="radio_2" id="radio_2" class="required"checked="checked">女
                                        </label>
                                    </c:if>
                                </p>


                                <p>

                                    <input type="submit" value="保 存">
                                </p>
                            </form>





                        </div>
                        <!-- .entry-content -->


                    </article>
                    <!-- .hentry -->



                    <!-- InstanceEndEditable -->



                </div>
                <!-- layout-fixed -->




            </div>
            <!-- site-content -->

        </div>
        <!-- primary -->




    </div>
    <!-- site-main -->





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
