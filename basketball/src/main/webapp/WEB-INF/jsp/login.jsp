<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<jsp:include page="template/header.jsp" />
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<title>登录到 军校篮球比赛信息管理与技战术评估系统</title>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<!-- 移动设备 viewport -->
	<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no,minimal-ui">
	<meta name="author" content="admui.com">
	<!-- 360浏览器默认使用Webkit内核 -->
	<meta name="renderer" content="webkit">
	<!-- 禁止搜索引擎抓取 -->
	<meta name="robots" content="nofollow">
	<!-- 禁止百度SiteAPP转码 -->
	<meta http-equiv="Cache-Control" content="no-siteapp">
	<!-- Chrome浏览器添加桌面快捷方式（安卓） -->
	<link rel="icon" type="image/png" href="${res }img/basketball">
	<meta name="mobile-web-app-capable" content="yes">
	<!-- Safari浏览器添加到主屏幕（IOS） -->
	<link rel="icon" sizes="192x192" href="${res }img/basketball">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-title" content="Admui">
	<!-- Win8标题栏及ICON图标 -->
	<link rel="apple-touch-icon-precomposed" href="${res }img/basketball">
	<meta name="msapplication-TileImage" content="${res }img/basketball">
	<meta name="msapplication-TileColor" content="#62a8ea">

	<!--[if lte IE 9]>
	<meta http-equiv="refresh" content="0; url='http://www.admui.com/ie/'" />
	<![endif]-->
	<!--[if lt IE 10]>
	<![endif]-->

	<!-- 样式 -->
	<link rel="stylesheet" href="${res }login/css/bootstrap.css">

	<link rel="stylesheet" href="${res }login/css/site.css" id="admui-siteStyle">

	<link rel="stylesheet" href="${res }login/css/web-icons.css">
	<link rel="stylesheet" href="${res }login/css/login.css">

	<!-- 插件 -->
	<link rel="stylesheet" href="${res }login/css/formValidation.css">
	<link rel="stylesheet" href="${res }login/css/animsition.css">
	<link rel="stylesheet" href="${res }login/css/bootstrap-select.css">

	<!-- 百度统计 -->
	<script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?07c22b55f1a0ca76abce0416f7cadfe1";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
	</script>

	<!-- 客服组件 -->
	<script src="//assets-cdn.kf5.com/supportbox/main.js?2&_=1518318585262" id="kf5-provide-supportBox" kf5-domain="admui.kf5.com"></script>
</head>

<body class="page-login layout-full page-dark">

<div class="page height-full">
	<div class="page-content height-full">
		<div class="page-brand-info vertical-align animation-slide-left hidden-xs">
			<div class="page-brand vertical-align-middle">
				<!-- <div class="brand">
                     <img class="brand-img" src="http://cdn.admui.com/demo/iframe/1.0.0/images/logo-white.svg" height="50" alt="Admui">
                 </div>-->
				<h1 class="hidden-sm" style="color: white">欢迎使用   军校篮球比赛信息管理与技战术评估系统</h1>
				<ul class="list-icons hidden-sm">
					<li>
						&bull;&nbsp;&nbsp;该系统主要包括五大板块的管理:&nbsp;&nbsp; 基本信息管理&nbsp; 赛事安排&nbsp; 赛场情况控制&nbsp;  赛事信息发布&nbsp; 球员个人能力评估
                     </li>
                     <li> &bull;&nbsp;&nbsp;基本信息管理模块:&nbsp;&nbsp;球队的信息管理  球员的管理</li>
                     <li> &bull;&nbsp;&nbsp;赛事安排:&nbsp;&nbsp;创建赛事 实时查看对战信息
                     </li>
					<li> &bull;&nbsp;&nbsp;球场控制:&nbsp;&nbsp;对球员的比赛信息管理
					</li>
					<li> &bull;&nbsp;&nbsp;赛事信息发布:&nbsp;&nbsp;及时发布对战信息
					</li>

					<li> &bull;&nbsp;&nbsp;球员个人能力评估:&nbsp;&nbsp;对每场比赛的球员发挥做评比
					</li>
				</ul>
			</div>
		</div>
		<div class="page-login-main animation-fade">

			<div class="vertical-align">
				<div class="vertical-align-middle">
					<div class="brand visible-xs text-center">
						<img class="brand-img" src="http://cdn.admui.com/demo/basic/1.1.0/images/logo.svg" height="50" alt="Admui">
					</div>
					<h3 class="hidden-xs">
						管理员登陆

					</h3>
					<p class="hidden-xs">欢迎使用军校篮球比赛信息管理与技战术评估系统</p>
					<form action="<%= request.getContextPath()%>/logging" class="login-form" method="post" id="loginForm">

						<div class="form-group">
							<label class="sr-only">用户名</label>
							<input type="text" class="form-control" id="name" name="name" placeholder="请输入用户名">
						</div>
						<div class="form-group">
							<label class="sr-only" for="password">密码</label>
							<input type="password" class="form-control" id="password" name="pwd" placeholder="请输入密码">
						</div>

						<div class="form-group clearfix">

						</div>
						<div class="collapse" id="forgetPassword" aria-expanded="true">
							<div class="alert alert-warning alert-dismissible" role="alert">
								请联系管理员重置密码。
							</div>
						</div>
						<h2 style="color: red">${msg}</h2>
						<button type="submit" class="btn btn-primary btn-block margin-top-30">立即登录</button>

						<button type="button" class="btn btn-primary btn-block margin-top-30" onclick="reg()">注册</button>
						<%--<a href="<%= request.getContextPath()%>/reg" class="btn btn-primary btn-block margin-top-30">注册</a>--%>
					</form>
				</div>
			</div>
			<footer class="page-copyright">
				<p>xxxxxxxxxxxxxxxxxxxx大学&copy;2018

				</p>
			</footer>
		</div>
	</div>
</div>

<!-- JS -->
<script src="${res}login/js/jquery.min.js"></script>
<script src="${res}login/js/bootstrap.min.js"></script>
<script src="${res}login/js/bootstrap-select.min.js"></script>
<script src="${res}login/js/formValidation.min.js"></script>
<script src="${res}login/js/bootstrap1.min.js"></script>
<script src="${res}login/js/login.js"></script>
<script language="javascript">
    if(top !== self){
        top.location.href = location.href;
    }
    function reg(){

        window.location.href='<%= request.getContextPath()%>/reg'
	}
</script>
</body>

</html>
