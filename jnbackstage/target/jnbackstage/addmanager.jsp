<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/app.css">
   <script src="js/jquery.min.js"></script>
    <script>
   
    </script>
   
</head>
<body data-type="chart">

<c:if test="${sessionScope.loginmanager.manager_role=='普通管理员'}">
  <script>
   alert("当前角色的权限不足，无法添加管理员！");
   history.go(-1);
  </script>
</c:if>

<jsp:include page="head.jsp"></jsp:include>
    <div class="tpl-page-container tpl-page-header-fixed">
       <jsp:include page="left.jsp"></jsp:include>
        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                添加管理员账号
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">用户</a></li>
                <li class="am-active">添加管理员账号</li>
            </ol>
            <div class="tpl-portlet-components" style="height: 800px">
         
                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 编辑
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="portlet-input input-small input-inline">
                       
                        </div>
                    </div>


                </div>
                <div class="tpl-block " >

                    <div class="am-g tpl-amazeui-form">


                        <div class="am-u-sm-12 am-u-md-9">
                            <form class="am-form am-form-horizontal" action="ManageServlet" method="get">
                            <input type="hidden" name="flag" value="addManager">
                             
                                <div class="am-form-group">
                                    <label for="user-email" class="am-u-sm-3 am-form-label">账号名称</label>
                                      <div class="am-u-sm-9">
                                        <input type="text" name="managername"  id="" placeholder="账号名称" >
                                        <small></small>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-phone" class="am-u-sm-3 am-form-label">账号密码</label>
                                    <div class="am-u-sm-9">
                                        <input type="password" name="managerpwd" value="" id="" placeholder="账号密码">
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-phone" class="am-u-sm-3 am-form-label">确认密码</label>
                                    <div class="am-u-sm-9">
                                        <input type="password" id="" value="" placeholder="确认密码">
                                    </div>
                                </div>

                                  <div class="am-form-group">
                                    <label for="user-email" class="am-u-sm-3 am-form-label">账号角色</label>
                                      <div class="am-u-sm-9">
                                 
                                        <select name="managerrole" data-am-selected="{searchBox: 1}">
                                        <option value="普通管理员" selected="selected">普通管理员</option>
                                        <option value="超级管理员">超级管理员</option>
										</select>                                 
											
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-intro" class="am-u-sm-3 am-form-label">账号状态</label>
                                    <div class="am-u-sm-9">
                                        <select name="managerstatus" data-am-selected="{searchBox: 1}">
                                        <option value="禁用" >禁用</option>
                                        <option value="激活" selected="selected">激活</option>
										</select>                                 										
                                    </div>
                                </div>
                                
                               

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary">添加账号</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

       






         </div>
        </div>

    </div>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/iscroll.js"></script>
    <script src="assets/js/app.js"></script>

</body>

</html>