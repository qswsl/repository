/**
 * 参数列表 msg : 消息内容 title : 标题 callback : function() 回调函数
 * 
 * @returns
 */
function toastrInfo(params)
{
	// 参数未传递
	if(params == undefined)
	{
		alert('弹出框toastrInfo函数参数未传递!');
		return false;
	}
	// 消息内容未传递
	else if(params.msg == undefined || params.msg == '')
	{
		alert('弹出框toastrInfo函数参数：msg未传递!');
		return false;
	}
	toastr.info(params.msg,params.title == undefined ? "系统消息" : params.title);
	// 3秒后执行callback函数
    setTimeout(function(){
        // 关闭弹出框
        layer.closeAll();
        if(params.callback != undefined){
            params.callback();
        }
    },5000)
}

/**
 * 参数列表 msg : 消息内容 title : 标题 callback : function() 回调函数
 * 
 * @returns
 */
function toastrWarning(params)
{
	// 参数未传递
	if(params == undefined)
	{
		alert('弹出框toastrWarning函数参数未传递!');
		return false;
	}
	// 消息内容未传递
	else if(params.msg == undefined || params.msg == '')
	{
		alert('弹出框toastrWarning函数参数：msg未传递!');
		return false;
	}
	toastr.warning(params.msg , params.title == undefined ? "系统警告" : params.title);
	// 3秒后执行callback函数
	setTimeout(function(){
        // 关闭弹出框
        layer.closeAll();
        if(params.callback != undefined){
            params.callback();
        }
	},5000)


}

/**
 * 参数列表 msg : 消息内容 title : 标题 callback : function() 回调函数
 * 
 * @returns
 */
function toastrSuccess(params)
{
	// 参数未传递
	if(params == undefined)
	{
		alert('弹出框toastrSuccess函数参数未传递!');
		return false;
	}
	// 消息内容未传递
	else if(params.msg == undefined || params.msg == '')
	{
		alert('弹出框toastrSuccess函数参数：msg未传递!');
		return false;
	}
	toastr.success(params.msg , params.title == undefined ? "成功消息" : params.title);
	// 3秒后执行callback函数
    setTimeout(function(){
        // 关闭弹出框
        layer.closeAll();
        if(params.callback != undefined){
            params.callback();
        }
    },5000)
}
/**
 * 参数列表 msg : 消息内容 title : 标题 callback : function() 回调函数
 * 
 * @returns
 */
function toastrError(params)
{
	// 参数未传递
	if(params == undefined)
	{
		alert('弹出框toastrError函数参数未传递!');
		return false;
	}
	// 消息内容未传递
	else if(params.msg == undefined || params.msg == '')
	{
		alert('弹出框toastrError函数参数：msg未传递!');
		return false;
	}
	toastr.error(params.msg , params.title == undefined ? "系统异常" : params.title);
	// 3秒后执行callback函数
    setTimeout(function(){
        // 关闭弹出框
        layer.closeAll();
        if(params.callback != undefined){
            params.callback();
        }
    },5000)
}