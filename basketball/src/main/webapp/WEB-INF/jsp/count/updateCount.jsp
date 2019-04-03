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


    <title></title>
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
                    <h5>实时录入球员信息
                        <small></small>
                    </h5>
                </div>
                <input type="hidden" value="${count.id}" id="PlayerId">
                <div class="ibox-content">
                    <form method="get" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">姓名</label>

                            <div class="col-sm-10">
                                <input type="text" disabled="" value="${count.name}" class="form-control">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>


                        <div class="form-group">
                            <label class="col-sm-2 control-label">得分</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="score" value="${count.score}">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>


                        <div class="form-group">
                            <label class="col-sm-2 control-label">篮板</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="lan" value="${count.lan}">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>




                        <div class="form-group">
                            <label class="col-sm-2 control-label">助攻</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="zhu" value="${count.zhu}">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>





                        <div class="form-group">
                            <label class="col-sm-2 control-label">三分</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="san" value="${count.san}">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>






                        <div class="form-group">
                            <label class="col-sm-2 control-label">抢断</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="qiang" value="${count.qiang}">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>





                        <div class="form-group">
                            <label class="col-sm-2 control-label">盖帽</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="gai" value="${count.gai}">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>






                        <div class="form-group">
                            <label class="col-sm-2 control-label">失误</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="shi" value="${count.shi}">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>




                        <div class="form-group">
                            <label class="col-sm-2 control-label">犯规</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="fan" value="${count.fan}">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>



                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <button class="btn btn-primary" type="button" onclick="addPlayer()">修改</button>
                                <a href="javascript:history.back(-1)" class="btn btn-white">返回</a>
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

        var id =$("#PlayerId").val();
        var score=$("#score").val()
        var lan=$("#lan").val()
        var zhu=$("#zhu").val()
        var san=$("#san").val()
        var qiang=$("#qiang").val()
        var gai=$("#gai").val()
        var shi = $("#shi").val()
        var fan = $("#fan").val()

        $.ajax({
            type: 'POST',
            url: '<%= request.getContextPath()%>/user/getOneCountUpdate',
            data: {"id": id,"score": score,"lan": lan,"zhu": zhu,"san": san,"qiang": qiang,"gai":gai,"shi":shi,"fan":fan},
            async: false,
            cache: false,
        });

        alert("修改成功")
        window.location.href = document.referrer;

    }

</script>

</body>

</html>
