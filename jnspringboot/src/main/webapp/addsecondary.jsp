<%--
  Created by IntelliJ IDEA.
  User: 小l
  Date: 2022/11/7
  Time: 17:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>锦囊</title>
</head>
<body>
<div id="secondary" class="widget-area sidebar" role="complementary">


    <!-- widget : text -->
    <aside class="widget widget_text">
        <h3 class="widget-title">关于 我</h3>
        <c:if test="${sessionScope.myuser.jn_userlogo==null}">
            <div class="textwidget">
                <img src="picture\about-small.jpg" alt="avatar"> <p>${sessionScope.myuser.jn_usersignature}</p>
            </div>
        </c:if>
        <c:if test="${sessionScope.myuser.jn_userlogo!=null}">
            <div class="textwidget">
                <img src="upload/${sessionScope.myuser.jn_userlogo}" alt="avatar"> <p>${sessionScope.myuser.jn_usersignature}</p>
            </div>
        </c:if>
    </aside>
    <!-- widget : text -->

    <!-- widget : text -->
    <aside class="widget widget_text">
        <h3 class="widget-title">操 作</h3>
        <div class="textwidget">
            <ul class="social2">
                <li><a  href="editpost.jsp">添加帖子</a></li>
                <li><a href="editPersonal.jsp">编辑个人信息</a></li>
            </ul>
        </div>
    </aside>
    <!-- widget : text -->


    <!-- widget : categories -->
    <aside class="widget widget_categories">
        <h3 class="widget-title">查 看</h3>
        <ul>
            <c:if test="${sessionScope.fansnumber1==null}">
                <li class="cat-item"><a href="#">粉丝：10</a></li>
            </c:if>
            <c:if test="${sessionScope.fansnumber1!=null}">
                <li class="cat-item"><a href="#">粉丝：${sessionScope.fansnumber1}</a></li>
            </c:if>
            <c:if test="${sessionScope.collectionnumber1==null}">
                <li class="cat-item"><a href="Collection.jsp">收藏：10</a></li>
            </c:if>
            <c:if test="${sessionScope.collectionnumber1!=null}">
                <li class="cat-item"><a href="Collection.jsp">收藏：${sessionScope.collectionnumber1}</a></li>
            </c:if>
            <c:if test="${sessionScope.concernnumber1==null}">
                <li class="cat-item"><a href="follow.jsp">关注：10</a></li>
            </c:if>
            <c:if test="${sessionScope.concernnumber1!=null}">
                <li class="cat-item"><a href="follow.jsp">关注：${sessionScope.concernnumber1}</a></li>
            </c:if>
            <c:if test="${sessionScope.historynumber1==null}">
                <li class="cat-item"><a href="history.jsp">历史：10</a></li>
            </c:if>
            <c:if test="${sessionScope.historynumber1!=null}">
                <li class="cat-item"><a href="history.jsp">历史：${sessionScope.historynumber1}</a></li>
            </c:if>

        </ul>
    </aside>
    <!-- widget : categories -->



    <!-- widget : popular-posts -->
    <!-- styles for plugin : https://wordpress.org/plugins/top-10 -->
    <aside class="widget widget_widget_tptn_pop">
        <h3 class="widget-title">最新 Posts</h3>
        <div class="tptn_posts tptn_posts_widget">
            <ul id="content2">

                <%--<li>--%>
                <%--<a href="#" class="tptn_link">--%>
                <%--<img src="picture/t01.jpg" alt="post-image" class="tptn_thumb">--%>
                <%--</a>--%>
                <%--<span class="tptn_after_thumb">--%>
                <%--<a href="#" class="tptn_link"><span class="tptn_title">Runaway A Road Adventure</span></a>--%>
                <%--<!--<span class="tptn_author"> by <a href="#">Johnny Doe</a></span>-->--%>
                <%--<span class="tptn_date"> September 3, 2014</span>--%>
                <%--</span>--%>
                <%--</li>--%>

                <%--<li>--%>
                <%--<a href="#" class="tptn_link">--%>
                <%--<img src="picture/t02.jpg" alt="post-image" class="tptn_thumb">--%>
                <%--</a>--%>
                <%--<span class="tptn_after_thumb">--%>
                <%--<a href="#" class="tptn_link"><span class="tptn_title">Stay Calm And Surf</span></a>--%>
                <%--<!--<span class="tptn_author"> by <a href="#">Johnny Doe</a></span>-->--%>
                <%--<span class="tptn_date"> September 3, 2014</span>--%>
                <%--</span>--%>
                <%--</li>--%>

                <%--<li>--%>
                <%--<a href="#" class="tptn_link">--%>
                <%--<img src="picture/t03.jpg" alt="post-image" class="tptn_thumb">--%>
                <%--</a>--%>
                <%--<span class="tptn_after_thumb">--%>
                <%--<a href="#" class="tptn_link"><span class="tptn_title">There's always light at the end of the tunnel</span></a>--%>
                <%--<!--<span class="tptn_author"> by <a href="#">Johnny Doe</a></span>-->--%>
                <%--<span class="tptn_date"> September 3, 2014</span>--%>
                <%--</span>--%>
                <%--</li>--%>


                <%--<!--<li>--%>
                <%--<span class="tptn_after_thumb">--%>
                <%--<a href="#" class="tptn_link"><span class="tptn_title">Keep it Simple Dummy!</span></a>--%>
                <%--<span class="tptn_author"> by <a href="#">Johnny Doe</a></span>--%>
                <%--<span class="tptn_date"> September 3, 2014</span>--%>
                <%--</span>--%>
                <%--</li>-->--%>

            </ul>
        </div>
    </aside>




</div>
</body>
</html>
