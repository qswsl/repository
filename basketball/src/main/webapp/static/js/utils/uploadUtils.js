/**
 * 显示上传提示框
 * @param params
 * suffixs : 默认后缀['.jpg','.gif','.png']
 * callback:function(data){  } 回调函数
 * @returns
 */
function showUpload(params)
{
	//后缀数组
	var suffixs = params.suffixs == undefined ? ['.jpg','.gif','.png'] : params.suffixs;
	//弹出上传文件iframe
	showIframe({
		width:'500px',
		height:'300px',
		url:'/show_upload',
		ok:function(){
			//获取上传文件表单
			var form = getForm();
			//上传文件表单提交
			form.ajaxSubmit({
				dataType: "json",//返回json类型
		        //执行之前函数
		        beforeSubmit: function(arr,$form,options){
		    		//onsubmit函数验证文件是否选择
		    		var file = form.find("#file").val();
		    		if(file == '')
		    		{
		    			parent.toastrError({msg : '请选择要上传的文件!'});
		    			return false;
		    		}
		    		//验证文件后缀是否正确
		    		var extStart = file.lastIndexOf(".");
		    		//上传文件后缀名
		    		var suffix = file.substring(extStart, file.length);
		    		//判断上传文件后缀是否在数组内存在
		    		var index = $.inArray(suffix, suffixs);
		    		//如果不存在
		    		if(index < 0)
		    		{
		    			//格式字符串
		    			var _str_suffixs = suffixs.join('|');
		    			//提示错误消息
		    			parent.toastrError({msg : '上传文件格式错误,仅支持：' + _str_suffixs + "格式文件！"});
		    			return false;
		    		}
		    		onStart();//开启遮层
		    		return true;
		        },
		        //执行成功函数
		        success: function(data,status,xhr,$form){
		        	var _flag = data.flag;//标识
		        	var _path = data.new_file_path;//文件路径
		        	var _msg = data.msg;//消息内容
		        	if(_msg != undefined && _msg != '')
		        	{
		        		if(_flag)
		        		{ 
		        			toastrSuccess({
		        				msg : _msg,
		        				callback:function()
		        				{ 
		        					//关闭上传文件弹出框
		                            layer.close(layer.index);
		        					//调用回调函数，返回上传成功后的json串
		        					params.callback(data);
		        				}
		        			});
		        		}
		        		else { 
		        			parent.toastrError({msg : _msg});
		        		}
		        	}
		        	onComplete();//关闭遮层
		        }
		    });
		}
	});
}
