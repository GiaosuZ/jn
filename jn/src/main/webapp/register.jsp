<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <script type="text/javascript">
        function a1(){
            var name=$("#your-name").val();//$("#username").attr("value")
            if(name==null){
                //??????????????????
                $("#your-name2").html("???????????????????????");
                return false;
            }else{
                $("#your-name2").html("????????????????????????");
                return true;
            }
        }
        function a2(){
            var name=document.getElementById("your-password").value;
            if(name==null||name.length<5){
                //??????????????????
                document.getElementById("your-password11").innerHTML="????????????????????";
                return false;
            }else{
                document.getElementById("your-password11").innerHTML="?????????????????????";
                return true;
            }
        }
        function a3(){
            var pwd1=document.getElementById("your-password").value;
            var pwd2=document.getElementById("your-password2").value;
            if(pwd1==pwd2){
                document.getElementById("your-password22").innerHTML="?????????????????????";
                return true;
            }else{
                document.getElementById("your-password22").innerHTML="???????????????????????";
                return false;
            }
        }
    </script>
    <script>
        function myjump() {
            var email = $("#jn_email").val();
            $.ajax({
                url:"validationEmail",
                data:{email,email},
                dataType:"json",
                success:function (msg) {
                    alert(msg.data);
                }
            });
        }
    </script>
<script>
    function myjump1() {
        
    }
</script>
</head>

<body>

<!-- page -->
<div id="page" class="hfeed site">

    <!-- header -->
    <header id="masthead" class="site-header" role="banner">

        <!-- site-title -->
        <h1 class="site-title">
            <a href="index.html" rel="home">
                <img src="picture/jinnanglog.png" alt="logo">
                <!--EDITOR-->
            </a>
        </h1>
        <!-- site-title -->


    </header>
    <!-- header -->

    <!-- site-main -->
    <div id="main" class="site-main">

        <!-- primary -->
        <div id="primary" class="content-area">

            <!-- site-content -->
            <div id="content" class="site-content" role="main">



                <!-- layout-fixed -->
                <div class="layout-fixed">

                    <!-- .hentry -->
                    <article class="hentry page">


                        <!-- .entry-header -->
                        <header class="entry-header">
                            <h1 class="entry-title">??? ???</h1>
                        </header>
                        <!-- .entry-header -->


                        <!-- .entry-content -->
                        <div class="entry-content">

                            <p>???????????????????????????,??????????????????.......</p>


                            <form action="addUser" method="post" class="validate-form">

                                <p>
                                    <label for="your-name">????????? *</label>
                                    <input type="text" name="jn_username" id="your-name" placeholder="???????????????" class="required" onblur="a1()" required /><span id="your-name2"></span>
                                </p>

                                <p>
                                    <label for="your-password">?????? *</label>
                                    <input type="password" name="jn_userpwd" id="your-password" class="required password" placeholder="????????????" onblur="a2()" required /><span id="your-password11"></span>
                                </p>

                                <p>
                                    <label for="your-password2">???????????? *</label>
                                    <input type="password" name="userpwd2" id="your-password2" class="required password2" placeholder="????????????"  onblur="a3()" required /><span id="your-password22"></span>
                                </p>
                                <p>
                                    <label for="your-name">?????? *</label>
                                    <input type="text" name="jn_email" id="jn_email"  class="required" required/><input type="button" onclick="myjump()" value="???????????????" />
                                </p>
                                <p>
                                    <label for="your-name">????????? *</label>
                                    <input type="text" name="code" id="verification" class="required" required/>
                                </p>


                                <p>
                                    <label>??????</label>

                                    <label class="inline-label">
                                        <input type="radio" name="jn_usersex" value="???" class="required"  required/>???
                                    </label>

                                    <label class="inline-label">
                                        <input type="radio" name="jn_usersex" value="???" class="required" required />???
                                    </label>
                                </p>


                                <p>
                                    <input type="submit" value="??? ???" onclick="" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="reset" value="??? ???" >
                                </p>
                            </form>
                        </div>
                        <!-- .entry-content -->


                    </article>
                    <!-- .hentry -->

                </div>
                <!-- layout-fixed -->

            </div>
            <!-- site-content -->
        </div>
        <!-- primary -->
    </div>

    <!-- site-main -->


    <!-- site-footer -->
    <footer id="colophon" class="site-footer" role="contentinfo">





         </aside> -->

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
