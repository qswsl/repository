/**
 * 封装表格函数
 * tableId : 表格id,默认为table_list_1<br>
 * url : 表格异步请求路径<br>
 * pager_div : 表格分页用到的div，默认为pager_list_1<br>
 * cols : 数据绑定model以及列头定义集合<br>
 * @returns
 */
function  Table(params)
{
	//设置jqgrid表格样式为bootstarp
	$.jgrid.defaults.styleUI = "Bootstrap";
	//如果表格编号为''或者undefined时使用默认值table_list_1
	if(params.tableId == '' || params.tableId == undefined)
	{
		params.tableId = "table_list_1";
	}
	//如果表格异步请求路径为''或者undefined时提示
	if(params.url == '' || params.url == undefined)
	{
		alert('Table表格函数：url参数未传递值!');
		return false;
	}
	//col数组动态生成
	if(params.cols == undefined || params.cols == '' || params.cols.length == 0)
	{
		alert('Table表格函数：cols参数未传递值!');
		return false;
	}
	
	//初始化jqgrid表格
	$("#" + params.tableId).jqGrid({
				url : params.url,
				mtype : "POST",
				datatype: "json",
				height : '100%',
				autowidth : true,
				shrinkToFit : true,
				multiselect: true,//复选框 
				rowNum : 20,
				rowList : [ 20, 50, 100, 200 ],
				colModel: params.cols,
				pager : "#"+(params.pager_div == '' || params.pager_div == undefined ? "pager_list_1" : params.pager_div),
				viewrecords : true,
				hidegrid : false
	});
}

/**
 * 获取checkbox选择行的id字符串列表，如：id1,id2,id3...
 * tableId : 表格编号
 * @returns
 */
function getCheckIds(params)
{
	//表格编号
	var tableId = params == undefined || params.tableId == undefined ? "table_list_1" : params.tableId;
	//选中的行编号
	var ids = "";
	//获取多选到的id集合  
	var idArray = $("#" + tableId).jqGrid("getGridParam", "selarrrow");
	//遍历访问这个集合  
	$(idArray).each(function (index, id){
		//由id获得对应数据行
		var row = $("#" + tableId).jqGrid('getRowData', id);
		//追加编号字符串
		ids += (row.id + (index == idArray.length - 1 ? "" : ","));
	});
	return ids;
}
/**
 * 获取选中的数量
 * @param ids 选择的编号字符串
 * @returns
 */
function getCheckCount(ids)
{
	//如果为空或者undefined时返回0
	if(ids == undefined || ids == "")
	{
		return 0;
	}
	//返回选择行数
	return ids.split(",").length;
}