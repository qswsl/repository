/**
 * 显示弹出框
 * msg : 弹出框内容字符串
 * @returns
 */
function showAlert(params)
{
	//参数未传递
	if(params == undefined)
	{
		alert('弹出框showAlert函数参数未传递!');
		return false;
	}
	//消息未传递
	else if(params.msg == undefined || params.msg == '')
	{
		alert('弹出框showAlert函数参数：msg未传递!');
		return false;
	}
	//初体验
	layer.alert(params.msg);
}

/**
 * 参数列表
 * width : 弹出框宽度
 * height : 弹出框高度
 * url : 请求iframe路径
 * @returns
 */
function showIframe(params) {
	//参数未传递
	if(params == undefined)
	{
		alert('弹出框showIframe函数参数未传递!');
		return false;
	}
	//宽度未传递
	else if(params.width == undefined || params.width == '')
	{
		alert('弹出框showIframe函数参数：width未传递!');
		return false;
	}
	//高度未传递
	else if(params.height == undefined || params.height == '')
	{
		alert('弹出框showIframe函数参数：height未传递!');
		return false;
	}
	//请求路径未传递
	else if(params.url == undefined || params.url == '')
	{
		alert('弹出框showIframe函数参数：url未传递!');
		return false;
	}
	//打开layer弹出框
	layer.open({
		type : 2,
		area : [ params.width, params.height ],
		fixed : false, // 不固定
		maxmin : true,
		content : params.url,
		btn: ['确定', '取消'],
		//确定按钮
		yes: function() {
			if(params.ok != undefined){
				params.ok();
			}
		},
		//第二个按钮
		btn2: function() {
			//关闭弹出框
			layer.closeAll();
		}
	});
}

/**
 * msg : 询问消息内容
 * ok : 点击确定按钮调用该函数
 * cancel : 点击取消按钮调用该函数
 * @returns
 */
function showConfirm(params)
{
	//参数未传递
	if(params == undefined)
	{
		alert('弹出框showConfirm函数参数未传递!');
		return false;
	}
	//宽度未传递
	else if(params.msg == undefined || params.msg == '')
	{
		alert('弹出框showConfirm函数参数：msg未传递!');
		return false;
	}
	//询问框
	layer.confirm(params.msg, 
		{
			btn: ['确定','取消'] //按钮
		},
		//对应第一个按钮函数
		function(){
			if(params.ok != undefined){
				params.ok();
			}
		},
		//对应第二个按钮函数
		function(){
			if(params.cancel != undefined){
				params.cancel();
			}
		}
	);
}

/**
 * 获取layer弹出框内iframe的form内的元素key=value
 * @returns
 */
function getFormData()
{
	return getForm().serialize();
}
/**
 * 获取iframe内表单对象
 * @returns
 */
function getForm()
{
	return $("iframe").contents().find("form");
}

/**
 * 提交基于jquery.validator验证的ajax表单
 * @returns
 */
function submitAjaxValidaForm()
{
	getForm().find("button[type='submit']").click();
}

/**
 * 追加菜单编号
 * @param jump_url 执行ajax成功后的jump_url
 * @returns
 */
function appendMenuId(jump_url)
{
	//获取iframe的路径
	var frame_array = parent.$(".J_iframe");
	//返回路径菜单编号
	var menu = $(frame_array[1]).attr("data-id").split("?")[1];
	//跟会格式化后的跳转路径
	return jump_url + "?" + menu;
}