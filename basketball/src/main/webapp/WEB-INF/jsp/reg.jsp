<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<jsp:include page="template/header.jsp"/>
<jsp:include page="template/import.jsp"/>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <title></title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html"/><![endif]-->

    <link rel="shortcut icon" href="favicon.ico">
    <link href="${res}main/css/bootstrap.min.css" rel="stylesheet">
    <link href="${res}main/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="${res}main/css/boot.css" rel="stylesheet">
    <link href="${res}main/css/style.css?v=4.1.0" rel="stylesheet">
</head>

<body class="gray-bg">

<div class="middle-box text-center loginscreen   animated fadeInDown">
    <div>
        <div>

           <%-- <h1 class="logo-name"></h1>--%>
            <img style="border-radius: 100px;" class="logo-name" src="${res }img/ball.gif">
        </div>
        <h3>欢迎注册</h3>
        <p>创建普通账户</p>
        <form class="m-t" role="form" action="login.html">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="请输入用户名" required="" id="name">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="请输入密码" required="" id="pwd">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" placeholder="请再次输入密码" required="" id="pwd2">
            </div>

            <button type="button" class="btn btn-primary block full-width m-b" onclick="reg()">注 册</button>

            <p class="text-muted text-center">
                <small>已经有账户了？</small>
                <a href="<%= request.getContextPath()%>/login">点此登录</a>
            </p>

        </form>
    </div>
</div>

<script src="${res}js/layer/layer.js"></script>
<script src="${res}main/js/jquery.min.js"></script>
<script src="${res}main/js/bootstrap.min.js"></script>
<script src="${res}main/js/jquery.metisMenu.js"></script>
<script src="${res}main/js/jquery.slimscroll.min.js"></script>
<script src="${res}main/js/layer.min.js"></script>
<script src="${res}main/js/hplus.min.js?v=4.1.0"></script>
<script type="text/javascript" src="${res}main/js/contabs.min.js"></script>
<script src="${res}main/js/pace.min.js"></script>
</body>
<script>

function reg(){
    var  name=$("#name").val()
    var  pwd=$("#pwd").val()
    var  pwd2=$("#pwd2").val()

   if(name==null||name==''){
        alert("请输入账号")
        return false;

   }
    if(pwd==null||pwd==''){
        alert("请输入密码")
        return false;

    }

    if(pwd2==null||pwd2==''){
        alert("请输入确认密码")
        return false;

    }

    if(pwd2!=pwd){
        alert("两次密码不一样")
        return false;

    }
    $.ajax({
        type: 'POST',
        url: '<%= request.getContextPath()%>/addReg',
        data: {"name": name,"pwd":pwd},
        async: false,
        cache: false,
        success:function(data){
           if(data=='success'){
               alert("恭喜注册成功 请登陆")
               window.location.href="<%= request.getContextPath()%>/login";
           }else{

               alert("注册失败  用户名已占用")
           }

        }
    });

}


</script>
</html>
