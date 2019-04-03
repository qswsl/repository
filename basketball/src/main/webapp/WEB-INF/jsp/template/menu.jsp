<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<nav class="navbar-default navbar-static-side" role="navigation">
	<div class="nav-close">
		<i class="fa fa-times-circle"></i>
	</div>
	<div class="sidebar-collapse">
		<ul class="nav" id="side-menu">
			<li class="nav-header">
				<div class="dropdown profile-element">
					<span><img alt="image" class="img-circle"
						src="img/profile_small.jpg" /></span> <a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <span class="clear">
							<span class="block m-t-xs"><strong class="font-bold">${_su.nickName }</strong></span>
							<span class="text-muted text-xs block">超级管理员<b
								class="caret"></b></span>
					</span>
					</a>
					<ul class="dropdown-menu animated fadeInRight m-t-xs">
						<li><a class="J_menuItem" href="form_avatar.html">修改头像</a></li>
						<li><a class="J_menuItem" href="profile.html">个人资料</a></li>
						<li><a class="J_menuItem" href="contacts.html">联系我们</a></li>
						<li><a class="J_menuItem" href="mailbox.html">信箱</a></li>
						<li class="divider"></li>
						<li><a href="javascript:;" name="logoutBtn">安全退出</a></li>
					</ul>
				</div>
				<div class="logo-element">卡</div>
			</li>
			<!-- 输出菜单列表 -->
			<xunmei:menuTag/>
		</ul>
	</div>
</nav>