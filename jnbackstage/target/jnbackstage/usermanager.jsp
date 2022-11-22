<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    //初始化   管理员列表数据
    $(document).ready(function(){
    	flushManagertable(1,5,"");
    });
    
    /*
    传入page，size，key
    */
    function flushManagertable(page,size,key){
    	//发起ajax请求
    	$.ajax({
    	url:"ManageServlet",	
    	data:{flag:"queryAllManagerUseAjax",page:page,size:size,key:key},	
    	dataType:"json",
    	type:"GET",
    	success: function(msg){
    	   let content=msg.msgcontent;
    	   let str="";
    	   for(let i=0;i<content.mlist.length;i++){
    		   /*
    		   str=str+'<tr><td><input type="checkbox"></td>'+
               '<td>'+content.mlist[i].manager_id+'</td><td>'+content.mlist[i].manager_name+'</td><td>'+content.mlist[i].manager_pwd+'</td>'+
               '<td>'+content.mlist[i].manager_role+'</td><td>'+content.mlist[i].manager_status+'</td><td>'+
               '<div class="am-btn-toolbar"><div class="am-btn-group am-btn-group-xs">'+
               '<button class="am-btn am-btn-default am-btn-xs am-text-secondary" onclick="editmanager('+content.mlist[i].manager_id+')"><span class="am-icon-pencil-square-o"></span>编辑</button>'+
               '</div></div></td></tr>';	
               
               */
               
      		   str=str+'<tr><td><input type="checkbox"></td>'+
               '<td>'+content.mlist[i].manager_id+'</td><td>'+content.mlist[i].manager_name+'</td>'+
               '<td>'+content.mlist[i].manager_role+'</td><td>'+content.mlist[i].manager_status+'</td><td>'+
               '<a href="javascript:editmanager('+content.mlist[i].manager_id+')" class="am-btn am-btn-default am-btn-xs am-text-secondary">编辑</a>&nbsp;&nbsp;&nbsp;'+
               '<a href="javascript:deletemanager('+content.mlist[i].manager_id+')" class="am-btn am-btn-default am-btn-xs am-text-secondary">删除</a></td></tr>';
    	   }
    	  $("#mymanagerbody").html(str);
    	   
    	  let maxPage=content.maxPage;//最大页数
    	  let page=content.page//当前页数
    	  let size=content.size; //每页显示条数
    	  let key=content.key;  //关键字
    	  //上一页
    	  let str2='<li class=""><a href="javascript:flushManagertable('+(page-1)+','+size+',\''+key+'\')">«</a></li>';  //上一页
    	  let str3='';
    	  for(let i=1;i<=maxPage;i++){
    		 if(i==page){
    			 str3=str3+'<li class="am-active"><a>'+i+'</a></li>';
    		 } 
    		 else{
    			 str3=str3+'<li><a href="javascript:flushManagertable('+i+','+size+',\''+key+'\')">'+i+'</a></li>';	 
    		 }   		  
    	  }
    	  //下一页
    	  let str4='<li class=""><a href="javascript:flushManagertable('+(page+1)+','+size+',\''+key+'\')">»</a></li>';  //下一页
    	  
    	  
    	  $("#mymanagerindex").html(str2+str3+str4);
    	}	
    	});
    	
    	
    }
    
    
    function  mysearch(){
    //获取输入的搜索内容
     var key=  $("#mykey").val();
    //刷新列表数据
     flushManagertable(1,5,key);	
    	
    }
    
    
    function editmanager(id){
    	//跳转到一个servlet中 将当前id传递过去
    	location.href="ManageServlet?flag=queryManagerById&mid="+id;
    	// alert(11111);    
    	// location.href="http://www.baidu.com";
    }
    function deletemanager(id){
    	if(confirm("确定是否该删除该管理员")){
    		location.href="ManageServlet?flag=deletemanagerById&mid="+id;
    	}
    }
    
    function myadd(){
    	location.href="addmanager.jsp";
    }
    </script>
    
</head>

<body data-type="chart">


<jsp:include page="head.jsp"></jsp:include>







    <div class="tpl-page-container tpl-page-header-fixed">

       <jsp:include page="left.jsp"></jsp:include>





        <div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                用户账号管理
            </div>
            <ol class="am-breadcrumb">
                <li><a href="#" class="am-icon-home">首页</a></li>
                <li><a href="#">用户</a></li>
                <li class="am-active">账号管理</li>
            </ol>
            <div class="tpl-portlet-components">
         
                <div class="tpl-block">
                                              <div class="portlet-title">
                    <div class="caption font-green bold">
                     普通用户列表
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="portlet-input input-small input-inline">
                            <div class="input-icon right">
                                <i class="am-icon-search"></i>
                                <input type="text"  class="form-control form-control-solid" placeholder="搜索..."> </div>
                        </div>
                    </div>


                </div>
                
                 <form class="am-form">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-check"><input type="checkbox" class="tpl-table-fz-check"></th>
                                            <th class="table-id">ID</th>
                                            <th class="table-title">标题</th>
                                            <th class="table-type">类别</th>
                                            <th class="table-author am-hide-sm-only">作者</th>
                                            <th class="table-date am-hide-sm-only">修改日期</th>
                                            <th class="table-set">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><input type="checkbox"></td>
                                            <td>1</td>
                                            <td><a href="#">Business management</a></td>
                                            <td>default</td>
                                            <td class="am-hide-sm-only">测试1号</td>
                                            <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                                                        <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span class="am-icon-copy"></span> 复制</button>
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</button>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                       
                                    </tbody>
                                </table>
                                <div class="am-cf">

                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination">
                                            <li class="am-disabled"><a href="#">«</a></li>
                                            <li class="am-active"><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">5</a></li>
                                            <li><a href="#">»</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <hr>

                            </form>
                 
                 
               
                                <div class="portlet-title">
                    <div class="caption font-green bold">
                     管理员列表   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <button type="button" class="am-btn am-btn-default am-btn-success" onclick="myadd()"><span class="am-icon-plus"></span> 新增</button>
                    </div>
                    <div class="tpl-portlet-input tpl-fz-ml">
                        <div class="portlet-input input-small input-inline">
                            <div class="input-icon right">
                                <i class="am-icon-search" onclick="mysearch()"></i>
                                <input type="text" id="mykey" class="form-control form-control-solid" placeholder="搜索..."> </div>
                        </div>
                    </div>


                </div>
                  <form class="am-form">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-check"><input type="checkbox" class="tpl-table-fz-check"></th>
                                            <th class="">账号ID</th>
                                            <th class="">账号名称</th>
                                            <th class=" ">账号角色</th>
                                            <th class=" ">账号状态</th>
                                            <th class="">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody id="mymanagerbody">
                                        
                                       
                                    </tbody>
                                </table>
                                <div class="am-cf">

                                    <div class="am-fr">
                                        <ul class="am-pagination tpl-pagination" id="mymanagerindex">
                                           
                                        </ul>
                                    </div>
                                </div>
                                <hr>

                            </form>
                </div>

            </div>










        </div>

    </div>
    <script src="assets/js/amazeui.min.js"></script>
    <script src="assets/js/iscroll.js"></script>
    <script src="assets/js/app.js"></script>

</body>

</html>