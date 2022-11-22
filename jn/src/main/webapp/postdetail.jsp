<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="is-menu-fixed"><!-- InstanceBegin template="/Templates/page-medium.dwt" codeOutsideHTMLIsLocked="false" -->

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
            $.ajax({
                url:"postDetail",
                data:{postid:${sessionScope.postid}},
                dataType:"json",
                success:function (msg) {
                    console.log(msg);
                    var str="";
                    str=str+"<h1 class=\"entry-title\">"+msg.data.jn_posttitle+"</h1>\r\n"
                        +"<div class=\"entry-meta\">\n" +
                        "                                        <span class=\"entry-date\">\n" +
                        "                                        \t<time class=\"entry-date\" datetime=\"2014-07-13T04:34:10+00:00\">"+msg.data.jn_posttime+"</time>\n" +
                        "                                        </span>\n" +
                        "                            </div>"
                        +msg.data.jn_postcontent;
                    $(".entry-header").html(str);
                }
            });


        }
    )
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



                <!-- layout-fixed -->
                <div class="layout-fixed">



                    <!-- InstanceBeginEditable name="LayoutFixedContent" -->


                    <!-- .hentry -->
                    <article class="hentry post">


                        <!-- .entry-header -->
                        <header class="entry-header" id="pd">


                            <!-- .entry-title -->


                        </header>
                        <!-- .entry-header -->

                        <!-- .featured-image -->





                    </article>
                    <!-- .hentry -->







                    <!-- #comments -->
                    <div id="comments" class="comments-area">

                        <h3 class="section-title">5 Comments</h3>

                        <!-- .commentlist -->
                        <ol class="commentlist">
                            <li class="comment even thread-even depth-1">

                                <!-- #comment-## -->
                                <article class="comment">

                                    <!-- .comment-meta -->
                                    <header class="comment-meta comment-author vcard">

                                        <cite class="fn"><a href="#" rel="external nofollow" class="url">Phillip Austin</a></cite>
                                        <span class="comment-date">October 17, 2013 at 2:16 PM</span>
                                    </header>
                                    <!-- .comment-meta -->

                                    <!-- .comment-content -->
                                    <section class="comment-content comment">
                                        <p>Hi, this is a very useful article. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                                    </section>
                                    <!-- .comment-content -->

                                    <!-- .reply -->
                                    <div class="reply">
                                        <a class="comment-reply-link" href="#">Reply <span>↓</span></a>
                                    </div>
                                    <!-- .reply -->

                                </article>
                                <!-- #comment-## -->

                                <!-- .comment depth-2 -->
                                <ol class="children">

                                    <li class="comment odd alt depth-2 bypostauthor">

                                        <!-- #comment-## -->
                                        <article class="comment">

                                            <!-- .comment-meta -->
                                            <header class="comment-meta comment-author vcard">
                                                <img alt="" src="picture/author-1.jpg" class="avatar photo" height="75" width="75">
                                                <cite class="fn"><a href="#" rel="external nofollow" class="url">Johnny Doe</a></cite>
                                                <span class="comment-date">October 17, 2013 at 2:16 PM</span>
                                            </header>
                                            <!-- .comment-meta -->

                                            <!-- .comment-content -->
                                            <section class="comment-content comment">
                                                <p>Thanks Phillip, glad you liked it. Nice to see you around.</p>
                                            </section>
                                            <!-- .comment-content -->

                                            <!-- .reply -->
                                            <div class="reply">
                                                <a class="comment-reply-link" href="#">Reply <span>↓</span></a>
                                            </div>
                                            <!-- .reply -->

                                        </article>
                                        <!-- #comment-## -->

                                        <!-- .comment depth-3 -->
                                        <ol class="children">

                                            <li class="comment even depth-3">
                                                <article class="comment">

                                                    <!-- .comment-meta -->
                                                    <header class="comment-meta comment-author vcard">
                                                        <img alt="" src="picture/testo-02.jpg" class="avatar photo" height="75" width="75">
                                                        <cite class="fn"><a href="#" rel="external nofollow" class="url">Gary Morgan</a></cite>
                                                        <span class="comment-date">October 17, 2013 at 2:16 PM</span>
                                                    </header>
                                                    <!-- .comment-meta -->


                                                    <!-- .comment-content -->
                                                    <section class="comment-content comment">
                                                        <p>Hey guys, c'mon this is old stuff!</p>
                                                    </section>
                                                    <!-- .comment-content -->

                                                    <!-- .reply -->
                                                    <div class="reply">
                                                        <a class="comment-reply-link" href="#">Reply <span>↓</span></a>
                                                    </div>
                                                    <!-- .reply -->

                                                </article>
                                                <!-- #comment-## -->

                                            </li>
                                        </ol>
                                        <!-- .comment depth-3 -->

                                        <ol class="children">

                                            <li class="comment even depth-3">
                                                <article class="comment">

                                                    <!-- .comment-meta -->
                                                    <header class="comment-meta comment-author vcard">
                                                        <img alt="" src="picture/testo-02.jpg" class="avatar photo" height="75" width="75">
                                                        <cite class="fn"><a href="#" rel="external nofollow" class="url">Gary Morgan</a></cite>
                                                        <span class="comment-date">October 17, 2013 at 2:16 PM</span>
                                                    </header>
                                                    <!-- .comment-meta -->


                                                    <!-- .comment-content -->
                                                    <section class="comment-content comment">
                                                        <p>Hey guys, c'mon this is old stuff!</p>
                                                    </section>
                                                    <!-- .comment-content -->

                                                    <!-- .reply -->
                                                    <div class="reply">
                                                        <a class="comment-reply-link" href="#">Reply <span>↓</span></a>
                                                    </div>
                                                    <!-- .reply -->

                                                </article>
                                                <!-- #comment-## -->

                                            </li>
                                        </ol>
                                    </li>
                                </ol>
                                <!-- .comment depth-2 -->

                            </li>
                            <!-- .comment depth-1 -->


                            <!-- .comment depth-1 -->
                            <li class="comment odd alt thread-odd thread-alt depth-1">
                                <article id="comment-5" class="comment">

                                    <!-- .comment-meta -->
                                    <header class="comment-meta comment-author vcard">
                                        <img alt="" src="picture/testo-02.jpg" class="avatar avatar-44 photo" height="75" width="75">
                                        <cite class="fn"><a href="#" rel="external nofollow" class="url">Gary Morgan</a></cite>
                                        <span class="comment-date">October 17, 2013 at 2:16 PM</span>
                                    </header>
                                    <!-- .comment-meta -->

                                    <!-- .comment-content -->
                                    <section class="comment-content comment">
                                        <p>Hi, this is cool but i know something cooler than this, new iPad!</p>
                                    </section>
                                    <!-- .comment-content -->

                                    <!-- .reply -->
                                    <div class="reply">
                                        <a class="comment-reply-link" href="#">Reply <span>↓</span></a>
                                    </div>
                                    <!-- .reply -->

                                </article>
                                <!-- #comment-## -->
                            </li>
                            <!-- .comment depth-1 -->

                        </ol>
                        <!-- .commentlist -->


                        <!-- #respond -->
                        <div id="respond">

                            <h3 id="reply-title">LEAVE A COMMENT <small><a rel="nofollow" id="cancel-comment-reply-link" href="#" style="display:none;">Cancel reply</a></small></h3>

                            <!-- .commentform -->
                            <form action="#" method="post" id="commentform">

                                <p class="comment-notes">Your email address will not be published. Required fields are marked <span class="required">*</span></p>

                                <p class="comment-form-comment">
                                    <label for="comment">Comment</label>
                                    <textarea id="comment" name="comment" rows="8" aria-required="true"></textarea>
                                </p>

                                <p class="comment-form-author">
                                    <label for="author">Name <span class="required">*</span></label>
                                    <input id="author" name="author" type="text" size="30" aria-required="true">
                                </p>

                                <p class="comment-form-email">
                                    <label for="email">Email <span class="required">*</span></label>
                                    <input id="email" name="email" type="text" size="30" aria-required="true">
                                </p>

                                <p class="comment-form-url">
                                    <label for="url">Website</label>
                                    <input id="url" name="url" type="text" size="30">
                                </p>

                                <p class="form-allowed-tags">You may use these <abbr title="HyperText Markup Language">HTML</abbr> tags and attributes: <code>&lt;a href="" title=""&gt; &lt;abbr title=""&gt; &lt;acronym title=""&gt; &lt;b&gt; &lt;blockquote cite=""&gt; &lt;cite&gt; &lt;code&gt; &lt;del datetime=""&gt; &lt;em&gt; &lt;i&gt; &lt;q cite=""&gt; &lt;strike&gt; &lt;strong&gt; </code></p>

                                <p class="form-submit">
                                    <input type="submit" name="submit" id="submit" class="button primary" value="Post Comment">
                                    <input type="hidden" name="comment_post_ID" value="16" id="comment_post_ID">
                                    <input type="hidden" name="comment_parent" id="comment_parent" value="0">
                                </p>

                            </form>
                            <!-- .commentform -->

                        </div>
                        <!-- #respond -->

                    </div>
                    <!-- #comments -->







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
<!-- layout-medium -->


<!-- .site-info -->
<div class="site-info">

    <!-- layout-medium -->
    <div class="layout-medium">
        <center>
            <p>Copyright &copy; 2022.Company name All rights reserved.</p>
        </center>
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
