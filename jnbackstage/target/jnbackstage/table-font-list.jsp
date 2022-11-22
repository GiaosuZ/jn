<%--
  Created by IntelliJ IDEA.
  User: 13095
  Date: 2022/11/6
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>锦囊-后台系统</title>
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
</head>

<body data-type="generalComponents">


<jsp:include page="header.jsp"></jsp:include>


<c:if test="${empty sessionScope.loginuser}">
    <script>
        alert('请先登录！');
        location.href='login.jsp';
    </script>
</c:if>



<div class="tpl-page-container tpl-page-header-fixed">


    <jsp:include page="left.jsp"></jsp:include>





    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            锦囊
        </div>
        <ol class="am-breadcrumb">
            <li><a href="#" class="am-icon-home">首页</a></li>
            <li><a href="#">锦囊</a></li>
            <li class="am-active">文字列表</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 列表
                </div>


            </div>
            <div class="tpl-block">
                <div class="am-g">
                    <div class="am-u-sm-12 am-u-md-6">
                        <div class="am-btn-toolbar">
                            <div class="am-btn-group am-btn-group-xs">
<%--                                <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 新增</button>--%>
<%--                                <button type="button" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-save"></span> 保存</button>--%>
<%--                                <button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-archive"></span> 审核</button>--%>
<%--                                <button type="button" class="am-btn am-btn-default am-btn-danger" onclick=""><span class="am-icon-trash-o"></span> 删除</button>--%>
                            </div>
                        </div>
                    </div>
<%--                    <div class="am-u-sm-12 am-u-md-3">--%>
<%--                        <div class="am-form-group">--%>
<%--                            <select data-am-selected="{btnSize: 'sm'}">--%>
<%--                                <option value="option1">所有类别</option>--%>
<%--                                <option value="option2">IT业界</option>--%>
<%--                                <option value="option3">数码产品</option>--%>
<%--                                <option value="option3">笔记本电脑</option>--%>
<%--                                <option value="option3">平板电脑</option>--%>
<%--                                <option value="option3">只能手机</option>--%>
<%--                                <option value="option3">超极本</option>--%>
<%--                            </select>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                        <div style="float: right">--%>
<%--                            <form action="font" role="form" class="form-inline" method="post">--%>
<%--                                <input type="hidden" name="page" value="${requestScope.page}">--%>
<%--                                <input type="hidden" name="size" value="${requestScope.size}">--%>

<%--                                <div class="col-sm-10" style="margin-bottom: 5px; margin-top:5px;padding-right: 0px;padding-left: 0px;display: inline-block;">--%>
<%--                                    <input name="jn_username" id="post_author" placeholder="文章作者" style="height: 29px;width: 120px;" class="form-control">--%>
<%--                                </div>--%>


<%--                                <div class="col-sm-10" style="margin-bottom: 5px; margin-top:5px;padding-right: 0px;padding-left: 0px;display: inline-block;">--%>
<%--                                    <input name="jn_posttime" id="post_time" placeholder="文章时间" style="height: 29px;width: 120px;padding: 6px 5px;" class="form-control">--%>
<%--                                </div>--%>


<%--                                <div class="col-sm-10" style="margin-bottom: 5px; margin-top:5px;padding-right: 0px;padding-left: 0px;display: inline-block;">--%>
<%--                                    <input name="jn_posttypename" id="post_type" placeholder="文章类型" style="height: 29px;width: 120px;" class="form-control">--%>
<%--                                </div>--%>


<%--                                <div class="col-sm-10" style="margin-bottom: 5px; margin-top:5px;padding-right: 0px;padding-left: 0px;display: inline-block;">--%>
<%--                                    <input name="jn_posttitle" id="post_title" placeholder="文章标题" style="height: 29px;width: 120px;" class="form-control">--%>
<%--                                </div>--%>


<%--                                <div class="col-sm-10" style="margin-bottom: 5px; margin-top:5px;padding-right: 0px;padding-left: 0px;display: inline-block;">--%>
<%--                                    <input name="jn_poststatus" id="post_status" placeholder="文章状态" style="height: 29px;width: 120px;" class="form-control"">--%>
<%--                                </div>--%>

<%--                                <div class="checkbox m-l m-r-xs" style="margin-left: 0px; margin-top:5px;display: inline-block;">--%>
<%--                                    <button class="btn btn-white" type="submit">查询</button>--%>
<%--                                </div>--%>

<%--                            </form>--%>
<%--                        </div>--%>
                </div>
                <div class="am-g">
                    <div class="am-u-sm-12">
                        <form class="am-form" action="font" method="post">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <thead>
                                <tr>
<%--                                    <th class="table-check"><input type="checkbox" class="tpl-table-fz-check"></th>--%>
                                    <th class="table-id">ID</th>
                                    <th class="table-title">标题</th>
                                    <th class="table-type">类别</th>
                                    <th class="table-author am-hide-sm-only">作者</th>
                                    <th class="table-date am-hide-sm-only">修改日期</th>
                                    <th class="table-date am-hide-sm-only">状态</th>
                                    <th class="table-set">操作</th>
                                </tr>
                                </thead>
                                <tbody id="content1">
                                </tbody>
                            </table>
                            <div class="am-cf">

<%--                                <div class="am-fr">--%>
<%--                                    <ul class="am-pagination tpl-pagination">--%>
<%--                                        <li class="am-disabled"><a href="#">«</a></li>--%>
<%--                                        <li class="am-active"><a href="#">1</a></li>--%>
<%--                                        <li><a href="#">2</a></li>--%>
<%--                                        <li><a href="#">3</a></li>--%>
<%--                                        <li><a href="#">4</a></li>--%>
<%--                                        <li><a href="#">5</a></li>--%>
<%--                                        <li><a href="#">»</a></li>--%>
<%--                                    </ul>--%>
<%--                                </div>--%>
                            </div>
                            <hr>

                        </form>
                    </div>

                </div>
            </div>
            <div class="tpl-alert"></div>
        </div>










    </div>

</div>


<script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>
</body>
<script>
    $(document).ready(function () {
        var str="";
        $.ajax({
            url:"font",
            type:"GET",
            dataType:"json",
            success:function(msg){
                if (msg.data.list!=null&&msg.data.list.length>0) {
                    for (var i=0;i<msg.data.list.length;i++){
                        str=str+'<tr> <td><input type="checkbox" name="ids" value="'+msg.data.list[i].jn_postid +'"></td> \n'+
                            '<td>'+msg.data.list[i].jn_postid +'</td>\n'+
                            ' <td><a href="#">'+msg.data.list[i].jn_posttitle +'</a></td>\n'+
                            '<td>'+msg.data.list[i].jn_posttypename +'</td>\n'+
                            '<td class="am-hide-sm-only">'+msg.data.list[i].jn_username +'</td>\n'+
                            '<td class="am-hide-sm-only">'+msg.data.list[i].jn_posttime +'</td>\n'+
                            '<td class="am-hide-sm-only">'+msg.data.list[i].jn_poststatus +'</td>\n'+
                            ' <td>\n'+
                            '<div class="am-btn-toolbar">\n'+
                            '<div class="am-btn-group am-btn-group-xs">\n'+
                            ' <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> <a href="updatepost?postid='+msg.data.list[i].jn_postid +'">添加</a></button>\n'+
                            // '<button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 复制</button>\n'+
                            '<button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> <a href="deletpost?postid='+msg.data.list[i].jn_postid +'">删除</a></button>\n'+
                            ' </div>\n'+
                            ' </div>\n'+
                            '</td>\n'+
                            '</tr>'
                    }
                }
                $("#content1").html(str);
            }
        });
    });
</script>
</html>