<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- jquery基本包 -->
<script src="${res }js/jquery.min.js?v=2.1.4"></script>
<!-- jquery异步表单工具包-->
<script src="${res }js/plugins/jquery-form.js"></script>
<!-- bootstrap基本包 -->
<script src="${res }js/content.min.js?v=3.3.6"></script>
<script src="${res }js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="${res }js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="${res }js/plugins/layer/layer.min.js"></script>
<script src="${res }js/xunmei.min.js?v=4.1.0"></script>
<script type="text/javascript" src="${res }js/icheck.min.js"></script>
<script src="${res }js/plugins/pace/pace.min.js"></script>
<!-- 表单验证 -->
<script src="${res }js/plugins/validate/jquery.validate.min.js"></script>
<script src="${res }js/plugins/validate/messages_zh.min.js"></script>
<!-- 表单验证设置 -->
<script src="${res }js/utils/validator/jquery.validator.setting.js"></script>
<!-- toastr消息通知 -->
<script src="${res }/js/plugins/toastr/toastr.min.js"></script>
<!-- layer弹出框 -->
<script src="${res }/js/layer/layer.js"></script>
<!-- ajax工具类 -->
<script src="${res }js/utils/ajaxUtils.js"></script>
<!-- toastr消息提醒工具类 -->
<script src="${res }/js/utils/toastrUtils.js"></script>
<!-- layer弹出框工具类 -->
<script src="${res }/js/utils/layerUtils.js"></script>
<!-- 文件上传工具类 -->
<script src="${res }js/utils/uploadUtils.js"></script>
<!-- jqgrid -->
<script src="${res }js/utils/tableUtils.js"></script>
<!-- 多选下拉框 -->
<script src="${res }js/utils/selector.js"></script>

<script src="${res }js/plugins/peity/jquery.peity.min.js"></script>
<script src="${res }js/plugins/jqgrid/i18n/grid.locale-cnffe4.js?0820"></script>
<script src="${res }js/plugins/jqgrid/jquery.jqGrid.minffe4.js?0820"></script>
<!--日期控件 -->
<script src="${res }js/plugins/datapicker/bootstrap-datepicker.js"></script>
<!-- 下拉框多选 -->
<script src="${res }js/plugins/chosen/chosen.jquery.js"></script>
<script type="text/javascript">
//动态绑定jqgrid宽度
$(window).bind("resize", function() {
	if($(".jqGrid_wrapper")!=undefined){
		var width = $(".jqGrid_wrapper").width();
		$("#table_list_1").setGridWidth(width);
	}
})
</script>