/**
 * editId : 富文本div编号
 * @param params
 * @returns
 */
function showEditor(params)
{
	//富文本对象
	var summ = params.editId == undefined ? ".summernote" : "#" + params.editId;
	//生成富文本对象
	$(summ).summernote({
		lang : "zh-CN",//设置字符集
		focus : true//焦点
	});
}

/**
 * 获取富文本html内容
 * @param editId ：富文本编号
 * @returns
 */
function getEditorHtml(editId)
{
	return $("#" + editId).code();
}

/**
 * 设置富文本html内容
 * @param html
 * @returns
 */
function setEditorHtml(editId,html)
{
	$("#" + editId).summernote('code', html);
}

/**
 * 删除富文本对象
 * @param editId
 * @returns
 */
function destoryEditor(editId)
{
	return $("#" + editId).destroy();
}