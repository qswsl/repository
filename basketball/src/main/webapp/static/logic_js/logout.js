//执行登录
$(function() {
	$("a[name='logoutBtn']").click(function() {
		showConfirm({
			msg : "确定要退出本系统吗?",
			ok : function() {
				// 发送ajax请求
				Ajax({
					url : "/logout",
					callback : function(data) {
						// 登录成功跳转页面
						if (data.flag) {
							location.href = "/login";
						}
						// 登录失败,提示消息内容
						else {
                            layer.msg('退出失败');
						}
					}
				});
			}
		});
	});
});