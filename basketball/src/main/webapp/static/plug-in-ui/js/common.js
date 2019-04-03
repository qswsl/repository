function remoteUrl(url,title){ 
	if(url.indexOf('?')>-1){
 		url += '&t=' + Math.random(1000);  
 	}else{
 		url += '?t=' + Math.random(1000);  
 	}
 	$('#addOrUpdateModalLabel').html(title);
	$.ajax({
      url: url,
      cache: false,
	  dataType: "html",
      success: function(data){
        $('#addOrUpdateModal .modal-body').html(data); 
      },  
      error: function(data, status, e){  
      	if(data.status == "401"){
				alert("娌℃湁鏉冮檺锛�");
				return;
			}
      }
    });
	$('#addOrUpdateModal').modal({show:true,backdrop:false}); 
} 

function doUrl(url){ 
	location.href=url;
} 

function dialogDiv(modalId,title){ 
 	$('#'+modalId+'Label').html(title);
	$('#'+modalId).modal({show:true,backdrop:false}); 
}

function detail(url,title){ 
	if(url.indexOf('?')>-1){
 		url += '&t=' + Math.random(1000);  
 	}else{
 		url += '?t=' + Math.random(1000);  
 	}
	$('#detailModalLabel').html(title);
	$.ajax({
      url: url,
      cache: false,
	  dataType: "html",
      success: function(data){
        $('#detailModal .modal-body').html(data); 
      },  
      error: function(data, status, e){  
      	if(data.status == "401"){
				alert("娌℃湁鏉冮檺锛�");
				return;
			}
      }
    });
	$('#detailModal').modal({show:true,backdrop:false}); 
} 

function showPrivilegeTree(url,title){ 
	if(url.indexOf('?')>-1){
 		url += '&t=' + Math.random(1000);  
 	}else{
 		url += '?t=' + Math.random(1000);  
 	}
 	$('#privilegeTreeModalLabel').html(title);
	$.ajax({
      url: url,
      cache: false,
	  dataType: "html",
      success: function(data){
        $('#privilegeTreeModal .modal-body').html(data); 
      },  
      error: function(data, status, e){  
      	if(data.status == "401"){
				alert("娌℃湁鏉冮檺锛�");
				return;
			}
      }
    });
	$('#privilegeTreeModal').modal({show:true,backdrop:false});
} 


/**
 * ajax鎻愪氦FORM
 * 
 * @param url
 * @param gridname
 */
function ajaxdoForm(formId) {
	var url = $('#' + formId).attr("action");
	$('#'+formId).ajaxSubmit({
        url: url,
        type: 'post',
        dataType: 'json',
        success: function(data, status){ 
        	if(data.success){
        		document.getElementById('formSubmit').submit();
        	}else{
        		alert(data.msg);
        	}
        },  
        error: function(data, status, e){  
        	if(data.status == "401"){
				alert("娌℃湁鏉冮檺锛�");
				return;
			}
        }
	}); 
}

/**
 * ajax鎻愪氦FORM
 * 
 * @param url
 * @param gridname
 */
function ajaxdoFormSubmit(formId) {
	var url = $('#' + formId).attr("action");
	$('#'+formId).ajaxSubmit({
        url: url,
        type: 'post',
        dataType: 'json',
        success: function(data, status){
        	if(data.status == "401"){
				alert("娌℃湁鏉冮檺锛�");
				return;
			}
        	if(data.success){
        		alert(data.msg);
        		//location.reload();
        		$('#formReturn').click();
        	}else{
        		alert(data.msg);
        	}
        },  
        error: function(data, status, e){  
        	if(data.status == "401"){
				alert("娌℃湁鏉冮檺锛�");
				return;
			}
        }
	}); 
}

function delData(url){
	if(confirm("纭鍒犻櫎鍚楋紵")){
		$.ajax({
	      url: url,
	      cache: false,
		  dataType: "json",
	      success: function(data){
	    	  	if(data.success){
	        		alert(data.msg);
	        		document.getElementById('formSubmit').submit();
	        	}else{
	        		alert(data.msg);
	        	}
	      },  
	        error: function(data, status, e){  
	        	if(data.status == "401"){
					alert("娌℃湁鏉冮檺锛�");
					return;
				}
	        }
	    });
	}
	
}

function delDataGrid(url){
	if(confirm("纭鍒犻櫎鍚楋紵")){
		$.ajax({
	      url: url,
	      cache: false,
		  dataType: "json",
	      success: function(data){
	    	  	if(data.success){
	        		alert(data.msg);
	        		dateGrid.reload();
	        	}else{
	        		alert(data.msg);
	        	}
	      },  
	        error: function(data, status, e){  
	        	if(data.status == "401"){
					alert("娌℃湁鏉冮檺锛�");
					return;
				}
	        }
	    });
	}
	
}

function blockUser(id){
	var url = '../rcOperateUser/blockUser.do?id='+id;
	if(confirm("纭鍋滅敤璇ョ敤鎴峰悧锛�")){
		$.ajax({
	      url: url,
	      cache: false,
		  dataType: "json",
	      success: function(data){
	    	  	if(data.success){
	        		alert(data.msg);
	        		document.getElementById('formSubmit').submit();
	        	}else{
	        		alert(data.msg);
	        	}
	      },  
	        error: function(data, status, e){  
	        	if(data.status == "401"){
					alert("娌℃湁鏉冮檺锛�");
					return;
				}
	        }
	    });
	}
	
}

function unlockUser(id){
	var url = '../rcOperateUser/unlockUser.do?id='+id;
	if(confirm("纭鍚敤璇ョ敤鎴峰悧锛�")){
		$.ajax({
	      url: url,
	      cache: false,
		  dataType: "json",
	      success: function(data){
	    	  	if(data.success){
	        		alert(data.msg);
	        		document.getElementById('formSubmit').submit();
	        	}else{
	        		alert(data.msg);
	        	}
	      },  
	        error: function(data, status, e){  
	        	if(data.status == "401"){
					alert("娌℃湁鏉冮檺锛�");
					return;
				}
	        }
	    });
	}
	
	
}


function redirectUrl(url){
	$.ajax({
		      url: url,
		      cache: false,
			  dataType: "json",
		      success: function(data){
		    	  	if(data.success){
		        		alert(data.msg);
		        		document.getElementById('formSubmit').submit();
		        	}else{
		        		alert(data.msg);
		        	}
		      }
		    });

	}

	
//jquery灏嗚〃鍗曞簭鍒楀寲json瀵硅薄 
$.fn.serializeObject = function () {
    var obj = {};
    var count = 0;
    $.each(this.serializeArray(), function (i, o) {
        var n = o.name, v = o.value;
        count++;
        obj[n] = obj[n] === undefined ? v: $.isArray(obj[n]) ? obj[n].concat(v) : [obj[n], v];
    });
    //obj.nameCounts = count + "";//琛ㄥ崟name涓暟
    //return JSON.stringify(obj);
    return obj;
};


//鍒濆鍖栦笅鏍�
function resetIndex(idv) {
	$box = $("#"+idv+"");
	$box.find("div[for$='divBox']").each(function(i){
		$(':input, select', this).each(function(){
			var $this = $(this), name = $this.attr('name'), val = $this.val();
			if(name!=null){
				if (name.indexOf("#index#") >= 0){
					$this.attr("name",name.replace('#index#',i));
				}else{
					var s = name.indexOf("[");
					var e = name.indexOf("]");
					var new_name = name.substring(s+1,e);
					$this.attr("name",name.replace(new_name,i));
				}
			}
			$this.parent().parent().find("label[for$='trtitle']").each(function(){
				var $this = $(this);
				var title = $this.html();
				if (title.indexOf("#index#") >= 0){
					$this.html(title.replace('#index#',(i+1)));
				}else{
					var s = title.indexOf("[");
					var e = title.indexOf("]");
					var new_title = title.substring(s+1,e);
					$this.html(title.replace(new_title,(i+1)));
				}
			});
		});
	});
	
	$box.find("div[for$='divBox']").each(function(i){
		$('div>select', this).each(function(){
			var $this = $(this),id = $this.attr('id'),val = $this.val();
			if(id!=null){
				if (id.indexOf("#index#") >= 0){
					$this.attr("id",id.replace('#index#',i));
				}
			}
			$this.parent().parent().find("label[for$='trtitle']").each(function(){
				var $this = $(this);
				var title = $this.html();
				if (title.indexOf("#index#") >= 0){
					$this.html(title.replace('#index#',(i+1)));
				}else{
					var s = title.indexOf("[");
					var e = title.indexOf("]");
					var new_title = title.substring(s+1,e);
					$this.html(title.replace(new_title,(i+1)));
				}
			});
			
			if(id.indexOf("tppCode") >=0){
				$this.bind("change",function(){
	    			changeTpp(i);
	    		});
			}
			if(id.indexOf("pmCode") >=0){
				$this.bind("change",function(){
	    			changePm(i);
	    		});
			}
		});
	});
}


/**
 * 鏍煎紡鍖栨棩鏈熸椂闂�
 * @param format
 * @returns format
 */
Date.prototype.format = function(format) {
	if (isNaN(this.getMonth())) {
		return '';
	}
	if (!format) {
		format = "yyyy-MM-dd hh:mm:ss";
	}
	var o = {
		/* month */
		"M+" : this.getMonth() + 1,
		/* day */
		"d+" : this.getDate(),
		/* hour */
		"h+" : this.getHours(),
		/* minute */
		"m+" : this.getMinutes(),
		/* second */
		"s+" : this.getSeconds(),
		/* quarter */
		"q+" : Math.floor((this.getMonth() + 3) / 3),
		/* millisecond */
		"S" : this.getMilliseconds()
	};
	if (/(y+)/.test(format)) {
		format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
	}
	for ( var k in o) {
		if (new RegExp("(" + k + ")").test(format)) {
			format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
		}
	}
	return format;
};

$.FormatDateTime = function (obj,farmat) { 
	if(obj==null) return "";
    var d = new Date(obj);   
    return d.format(farmat);
}; 


function amountIsNotZero(obj){
	var amount = $(obj).val();
	if(parseFloat(amount)==0){
		$(obj).val("");
		alert("閲戦涓嶈兘涓�0");
		$(obj).focus();
		return false;
	}
	return true;
}

function isAmount(obj){
	var amount = $(obj).val();
	if(amount==""){
		return false;
	}
	var s_currency = /^([1-9][\d]{0,7}|0)(\.[\d]{1,2})?$/;
	if(parseFloat(amount)==0){
		$(obj).val("");
		alert("閲戦涓嶈兘涓�0");
		$(obj).focus();
		return false;
	}
	if(!s_currency.test(amount)){
		$(obj).val("");
	   alert("璇疯緭鍏ユ纭殑鏁板瓧銆�");
	   $(obj).focus();
	   return false; 
	}
	return true;
}

$.escapeHTML = function (obj) { 
	if(obj==null) return "";
	var div = document.createElement('div');    
	var text = document.createTextNode(obj);   
	div.appendChild(text);   
	return  div.innerHTML; 
//    return  obj.replace(/&/g, '&').replace(/>/g, '>').replace(/</g, '<').replace(/鈥�/g, '"');
};