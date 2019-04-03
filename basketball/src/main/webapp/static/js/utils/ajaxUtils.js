//开启遮蔽层
function onStart(event) {
	//加载层-默认风格
	parent.layer.load(1, {
		  shade: [0.5,'#2F4050'] //0.1透明度的白色背景
	});

}
//关闭遮蔽层
function onComplete(event, xhr, settings) {
	//此处演示关闭
	setTimeout(function(){
	  parent.layer.closeAll('loading');
	}, 1000);
}
/**
 * 封装ajax
 * url 请求路径
 * param 参数列表
 * callback 回调成功函数
 * @param params
 */
function Ajax(params) {
	//默认异步执行
	var asyncState = params.async!=undefined ? params.async : true;
	$.ajax({
		url : params.url,
		async:asyncState,
		beforeSend:onStart,
		complete:onComplete,
		data : params.param,
        method : "post",
		success : function(data) {
			params.callback(data);
		},
		error : function(XMLHttpRequest, textStatus, errorThrown)
		{
			if(params.error!=null)
			{
				params.error();
			}
		}
	});
}

