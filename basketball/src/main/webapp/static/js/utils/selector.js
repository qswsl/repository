//选择框配置信息
var config = {
	".chosen-select" : {},
	".chosen-select-deselect" : {
		allow_single_deselect : !0
	},
	".chosen-select-no-single" : {
		disable_search_threshold : 10
	},
	".chosen-select-no-results" : {
		no_results_text : "未选择值..."
	},
	".chosen-select-width" : {
		width : "95%"
	}
}
/**
 * 生成下拉框
 * @returns
 */
function createSelector() {
	// 声明chosen下拉框
	for ( var selector in config)
	$(selector).chosen(config[selector]);
}