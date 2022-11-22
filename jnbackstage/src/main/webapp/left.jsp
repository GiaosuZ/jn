<%--
  Created by IntelliJ IDEA.
  User: 13095
  Date: 2022/11/6
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="tpl-left-nav tpl-left-nav-hover">
    <div class="tpl-left-nav-title">
        锦囊 列表
    </div>
    <div class="tpl-left-nav-list">
        <ul class="tpl-left-nav-menu">
<%--            <li class="tpl-left-nav-item">--%>
<%--                <a href="index.jsp" class="nav-link">--%>
<%--                    <i class="am-icon-home"></i>--%>
<%--                    <span>首页</span>--%>
<%--                </a>--%>
<%--            </li>--%>
            <li class="tpl-left-nav-item">
                <a href="chart.jsp" class="nav-link tpl-left-nav-link-list">
                    <i class="am-icon-bar-chart"></i>
                    <span>数据表</span>
                </a>
            </li>

            <li class="tpl-left-nav-item">
                <!-- 打开状态 a 标签添加 active 即可   -->
                <a href="javascript:;" class="nav-link tpl-left-nav-link-list active">
                    <i class="am-icon-table"></i>
                    <span>表格</span>
                    <!-- 列表打开状态的i标签添加 tpl-left-nav-more-ico-rotate 图表即90°旋转  -->
                    <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                </a>
                <ul class="tpl-left-nav-sub-menu" style="display:block">
                    <li>
                        <a href="table-font-list.jsp">
                            <i class="am-icon-angle-right"></i>
                            <span>文章管理</span>
                            <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                        </a>
                        <!-- 打开状态 a 标签添加 active 即可   -->
                        <a href="table-images-list.jsp" class="active">
                            <i class="am-icon-angle-right"></i>
                            <span>用户管理</span>
                        </a>
                        <c:if test="${sessionScope.loginuser.jn_managestatus == 1}">
                        <a href="form-news.jsp" class="active">
                            <i class="am-icon-angle-right"></i>
                            <span>管理员</span>
                        </a>
                        </c:if>
<%--                        <a href="form-news.jsp">--%>
<%--                            <i class="am-icon-angle-right"></i>--%>
<%--                            <span>消息列表</span>--%>

<%--                        </a>--%>
<%--                        <a href="form-news-list.jsp">--%>
<%--                            <i class="am-icon-angle-right"></i>--%>
<%--                            <span>文字列表</span>--%>

<%--                        </a>--%>
                    </li>
                </ul>
            </li>

<%--            <li class="tpl-left-nav-item">--%>
<%--                <a href="javascript:;" class="nav-link tpl-left-nav-link-list">--%>
<%--                    <i class="am-icon-wpforms"></i>--%>
<%--                    <span>表单</span>--%>
<%--                    <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>--%>
<%--                </a>--%>
<%--                <ul class="tpl-left-nav-sub-menu">--%>
<%--                    <li>--%>
<%--                        <a href="newmanage.jsp">--%>
<%--                            <i class="am-icon-angle-right"></i>--%>
<%--                            <span>锦囊 表单</span>--%>
<%--                            <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>--%>
<%--                        </a>--%>

<%--                    </li>--%>
<%--                </ul>--%>
<%--            </li>--%>
        </ul>
    </div>
</div>
