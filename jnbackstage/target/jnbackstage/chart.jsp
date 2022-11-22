<%--
  Created by IntelliJ IDEA.
  User: 13095
  Date: 2022/11/6
  Time: 15:40
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
    <script src="assets/js/echarts.min.js"></script>
</head>

<body data-type="chart">
<c:if test="${empty sessionScope.loginuser}">
    <script>
        alert('请先登录！');
        location.href='login.jsp';
    </script>
</c:if>

<jsp:include page="header.jsp"></jsp:include>







<div class="tpl-page-container tpl-page-header-fixed">

    <jsp:include page="left.jsp"></jsp:include>





    <div class="tpl-content-wrapper">
        <div class="tpl-content-page-title">
            锦囊 表单
        </div>
        <ol class="am-breadcrumb">
            <li><a href="#" class="am-icon-home">首页</a></li>
            <li><a href="#">表单</a></li>
            <li class="am-active">锦囊 表单</li>
        </ol>
        <div class="tpl-portlet-components">
            <div class="portlet-title">
                <div class="caption font-green bold">
                    <span class="am-icon-code"></span> 折线图
                </div>
                <div class="tpl-portlet-input tpl-fz-ml">
                    <div class="portlet-input input-small input-inline">
                        <div class="input-icon right">

                    </div>
                </div>


            </div>
            <div class="tpl-block">
                <div class="am-g">

                </div>


                <!--此部分数据请在 js文件夹下中的 app.js 中的 “百度图表A” 处修改数据 插件使用的是 百度echarts-->
                <div class="tpl-echarts tpl-chart-mb" id="tpl-echarts-A">

                </div>
                <div class="portlet-title">
                    <div class="caption font-green bold">
                    </div>
                </div>
                <div class="tpl-echarts tpl-chart-mb" id="tpl-echarts-B">

                </div>

                <div class="portlet-title">
                    <div class="caption font-green bold">
                        <span class="am-icon-code"></span> 折线柱图
                    </div>
                </div>
                <div class="tpl-echarts tpl-chart-mb" id="tpl-echarts-C">

                </div>
            </div>

        </div>










    </div>

</div>


<script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>
</body>
<script>

    $(document).ready(function() {
        $.ajax({
            url: "chart",
            type: "GET",
            dataType: "json",
            success: function (msg) {
                if (msg.flag == 0) {
                    //没有数据
                    $("#tpl-echarts-A").html("暂无数据");
                } else if (msg.flag == 1) {
                    //有数据
                    var echartsA = echarts.init(document.getElementById('tpl-echarts-A'));
                    var echartsAdate = new Array();
                    var echartsAcount = new Array();
                    for (let i = 0; i < msg.data.list.length; i++) {
                        echartsAdate[i] = msg.data.list[i].echarsDate;
                        echartsAcount[i] = msg.data.list[i].echarsCount;
                    }
                    option = {
                        title:{
                            text:"文章发表的数量和时间折线图"
                        },
                        tooltip: {
                            trigger: 'axis'
                        },
                        xAxis: {
                            type: 'category',
                            data: echartsAdate,
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [
                            {
                                data: echartsAcount,
                                type: 'line',
                                smooth: false
                            }
                        ]
                    };
                    echartsA.setOption(option);
                } else if (msg.flag == 2) {
                    //异常
                    $("#tpl-echarts-A").html("数据获取异常，请联系锦囊开发人员");
                }
            }
        });
    })
</script>

</html>
