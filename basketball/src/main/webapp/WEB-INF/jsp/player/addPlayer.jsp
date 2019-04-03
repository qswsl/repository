<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="../template/header.jsp" />

<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 基本表单</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.staticfile.org/font-awesome/4.4.0/css/font-awesome.css?v=4.4.0" rel="stylesheet">
    <link href="http://www.zi-han.net/theme/hplus/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="https://cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="http://www.zi-han.net/theme/hplus/css/style.min.css?v=4.1.0" rel="stylesheet">
    <script type="text/javascript" src="${res }js/layDate-v5.0.9/laydate/laydate.js"></script>

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">

    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>录入球员
                        <small></small>
                    </h5>
                </div>
                <div class="ibox-content">
                    <form method="get" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">姓名</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="playerName">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">学号</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="studentNumber">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">球衣号码</label>

                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="uniformNumber">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">性别<br/>
                            </label>
                            <div class="col-sm-10">
                                <div class="radio">
                                    <label>
                                        <input type="radio" checked="" value="男" id="optionsRadios1" name="optionsRadios">
                                        男
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" value="女" id="optionsRadios2" name="optionsRadios">
                                        女
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">年龄</label>

                            <div class="col-sm-10">
                                <select class="form-control m-b" name="account" id="age">
                                    <option>选择</option>
                                    <option>18</option>
                                    <option>19</option>
                                    <option>20</option>
                                    <option>21</option>
                                    <option>22</option>
                                    <option>23</option>
                                    <option>24</option>
                                    <option>25</option>
                                    <option>26</option>
                                    <option>27</option>
                                    <option>28</option>
                                    <option>29</option>
                                    <option>30</option>

                                </select>
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">出生日期</label>

                            <div class="col-sm-10">
                                <input type="text" id="birth" class="form-control" id="birth">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>


                        <div class="form-group">
                            <label class="col-sm-2 control-label">所属球队</label>

                            <div class="col-sm-10">
                                <select class="form-control m-b" name="account" id="be_long_team">
                                    <option>请选择...</option>

                                </select>
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <button class="btn btn-primary" type="button" onclick="addPlayer()">保存</button>
                                <a href="<%= request.getContextPath()%>/user/player" class="btn btn-white">返回</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.staticfile.org/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://www.zi-han.net/theme/hplus/js/content.min.js?v=1.0.0"></script>
<script src="http://www.zi-han.net/theme/hplus/js/plugins/iCheck/icheck.min.js"></script>
<script>
    $(document).ready(function () {
        $(".i-checks").iCheck({checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green",})
    });
    laydate.render({
        elem: '#birth'
    });

    function addPlayer(){

        var playerName=$("#playerName").val()
        var studentNumber=$("#studentNumber").val()
        var uniformNumber=$("#uniformNumber").val()
        var birth=$("#birth").val()
        var age=$("#age").val()
        var be_long_team=$("#be_long_team").val()
        var optionsRadios = $('input:radio:checked').val();
        if (playerName==null||playerName=='')
        {
            alert('请输入姓名');
            return;
        }
        if (studentNumber==null||studentNumber=='')
        {
            alert('请输入学号');
            return;
        }
        if (uniformNumber==null||uniformNumber=='')
        {
            alert('请输入球衣号码');
            return;
        }
        if (birth==null||birth=='')
        {
            alert('请选择出生日期');
            return;
        }
        if (age==null||age=='选择')
        {
            alert('请选择年龄');
            return;
        }
        if (be_long_team==null||be_long_team=='请选择...')
        {
            alert('请选择球队');
            return;
        }
        $.ajax({
            type: 'POST',
            url: '<%= request.getContextPath()%>/user/addSavePlayer',
            data: {"name": playerName,"student_number": studentNumber,"uniform_number": uniformNumber,"age": age,"date_birth": birth,"be_long_team": be_long_team,"sex":optionsRadios},
            async: false,
            cache: false,
        });

        alert("录入成功")
        window.location.href="<%= request.getContextPath()%>/user/player";

    }

    $(function() {
        $.ajax({
            type: 'POST',
            url: '<%= request.getContextPath()%>/user/listTeam',
           success:function(data){
               $.each(data, function(key, value) {
                   $("#be_long_team").append(
                       "<option value ='" + value.name + "'>" + value.name
                       + "</option>");
               });

           }
        });

    });
</script>

</body>

</html>
