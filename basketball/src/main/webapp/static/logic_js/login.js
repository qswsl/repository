//执行登录
$(function(){
	$("#subBtn").click(function(){
		//用户名
		var name = $("#name").val();
		//密码
		var pwd = $("#pwd").val();
		if(name == undefined || name == "")
		{
            layer.msg('请输入用户名');
			return false;
		}
		else if(pwd == undefined || pwd == "")
		{
            layer.msg('请输入密码');
			return false;
		}
		//发送ajax请求
		Ajax({
			url:"/logging",
            btnId:"subBtn",
			param:{"name":name,"pwd":pwd},
			callback:function(data)
			{
				//登录成功跳转页面
				if(data.flag)
				{
					location.href = "/user/main";
				}
				//登录失败,提示消息内容
				else{
                    layer.msg('用户名或密码错误');
				}
			}
		});

	});
});