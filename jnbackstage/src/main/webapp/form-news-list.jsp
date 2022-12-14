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
                    <span class="am-icon-code"></span> 表单
                </div>
                <div class="tpl-portlet-input tpl-fz-ml">
                    <div class="portlet-input input-small input-inline">
                        <div class="input-icon right">
                            <i class="am-icon-search"></i>
                            <input type="text" class="form-control form-control-solid" placeholder="搜索..."> </div>
                    </div>
                </div>


            </div>
            <div class="tpl-block">
                <div class="am-g">
                    <div class="am-u-sm-12 am-u-md-6">
                        <div class="am-btn-toolbar">
                            <div class="am-btn-group am-btn-group-xs">
                                <button type="button" class="am-btn am-btn-default am-btn-success"><span class="am-icon-plus"></span> 新增</button>
                                <button type="button" class="am-btn am-btn-default am-btn-secondary"><span class="am-icon-save"></span> 保存</button>
                                <button type="button" class="am-btn am-btn-default am-btn-warning"><span class="am-icon-archive"></span> 审核</button>
                                <button type="button" class="am-btn am-btn-default am-btn-danger"><span class="am-icon-trash-o"></span> 删除</button>
                            </div>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-form-group">
                            <select data-am-selected="{btnSize: 'sm'}">
                                <option value="option1">所有类别</option>
                                <option value="option2">IT业界</option>
                                <option value="option3">数码产品</option>
                                <option value="option3">笔记本电脑</option>
                                <option value="option3">平板电脑</option>
                                <option value="option3">只能手机</option>
                                <option value="option3">超极本</option>
                            </select>
                        </div>
                    </div>
                    <div class="am-u-sm-12 am-u-md-3">
                        <div class="am-input-group am-input-group-sm">
                            <input type="text" class="am-form-field">
                            <span class="am-input-group-btn">
            <button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search" type="button"></button>
          </span>
                        </div>
                    </div>
                </div>

                <ul class="tpl-task-list">
                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> Amaze UI Icon 组件目前使用了 Font Awesome </span>
                            <span class="label label-sm label-success">技术部</span>
                            <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 在 data-am-dropdown 里指定要适应到的元素，下拉内容的宽度会设置为该元素的宽度。当然可以直接在 CSS 里设置下拉内容的宽度。 </span>
                            <span class="label label-sm label-danger">运营</span>

                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 使用 LESS： 通过设置变量 @fa-font-path 覆盖默认的值，如 @fa-font-path: "../fonts";。这个变量定义在 icon.less 里。 </span>
                            <span class="label label-sm label-warning">市场部</span>

                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                            <span class="label label-sm label-default">已废弃</span>

                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 按照示例组织好 HTML 结构（不加 data-am-dropdown 属性），然后通过 JS 来调用。 </span>
                            <span class="label label-sm label-success">技术部</span>
                            <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                            <span class="label label-sm label-default">已废弃</span>

                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 使用 LESS： 通过设置变量 @fa-font-path 覆盖默认的值，如 @fa-font-path: "../fonts";。这个变量定义在 icon.less 里。 </span>
                            <span class="label label-sm label-warning">市场部</span>

                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                            <span class="label label-sm label-default">已废弃</span>

                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 按照示例组织好 HTML 结构（不加 data-am-dropdown 属性），然后通过 JS 来调用。 </span>
                            <span class="label label-sm label-success">技术部</span>
                            <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                            <span class="label label-sm label-default">已废弃</span>

                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 使用 LESS： 通过设置变量 @fa-font-path 覆盖默认的值，如 @fa-font-path: "../fonts";。这个变量定义在 icon.less 里。 </span>
                            <span class="label label-sm label-warning">市场部</span>

                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                            <span class="label label-sm label-default">已废弃</span>

                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 按照示例组织好 HTML 结构（不加 data-am-dropdown 属性），然后通过 JS 来调用。 </span>
                            <span class="label label-sm label-success">技术部</span>
                            <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                            <span class="label label-sm label-default">已废弃</span>

                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 使用 LESS： 通过设置变量 @fa-font-path 覆盖默认的值，如 @fa-font-path: "../fonts";。这个变量定义在 icon.less 里。 </span>
                            <span class="label label-sm label-warning">市场部</span>

                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 添加 .am-btn-group-justify class 让按钮组里的按钮平均分布，填满容器宽度。 </span>
                            <span class="label label-sm label-default">已废弃</span>

                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>

                    <li>
                        <div class="task-checkbox">
                            <input type="hidden" value="1" name="test">
                            <input type="checkbox" class="liChild" value="2" name="test"> </div>
                        <div class="task-title">
                            <span class="task-title-sp"> 按照示例组织好 HTML 结构（不加 data-am-dropdown 属性），然后通过 JS 来调用。 </span>
                            <span class="label label-sm label-success">技术部</span>
                            <span class="task-bell">
                                            <i class="am-icon-bell-o"></i>
                                        </span>
                        </div>
                        <div class="task-config">
                            <div class="am-dropdown tpl-task-list-dropdown" data-am-dropdown="">
                                <a href="###" class="am-dropdown-toggle tpl-task-list-hover " data-am-dropdown-toggle="">
                                    <i class="am-icon-cog"></i> <span class="am-icon-caret-down"></span>
                                </a>
                                <ul class="am-dropdown-content tpl-task-list-dropdown-ul">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-check"></i> 保存 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-pencil"></i> 编辑 </a>
                                    </li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="am-icon-trash-o"></i> 删除 </a>
                                    </li>
                                </ul>


                            </div>
                        </div>
                    </li>
                </ul>
            </div>

        </div>










    </div>

</div>


<script src="http://www.jq22.com/jquery/jquery-2.1.1.js"></script>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/app.js"></script>
</body>

</html>