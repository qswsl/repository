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
                    <h5>修改比赛信息
                        <small></small>
                    </h5>
                </div>
                <input type="hidden" value="${game.id}" id="PlayerId">
                <div class="ibox-content">
                    <form method="get" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">主队</label>

                            <div class="col-sm-10">
                                <input type="text" disabled="" id="home_name" value="${game.home_name}" class="form-control">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>


                        <div class="form-group">
                            <label class="col-sm-2 control-label">得分</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="home_score" value="${game.home_score}">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>


                        <div class="form-group">
                            <label class="col-sm-2 control-label">客队</label>

                            <div class="col-sm-10">
                                <input type="text" disabled="" id="guest_name" value="${game.guest_name}" class="form-control">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>




                        <div class="form-group">
                            <label class="col-sm-2 control-label">得分</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="guest_score" value="${game.guest_score}">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">状态</label>

                            <div class="col-sm-10">
                                <select class="form-control m-b" name="account" id="status">
                                    <option>请选择..</option>
                                    <option value="0">未开始</option>
                                    <option value="1">比赛中</option>
                                    <option value="2">已结束</option>
                                </select>
                            </div>
                        </div>

                        <div class="hr-line-dashed"></div>


                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <button class="btn btn-primary" type="button" onclick="addPlayer()">修改</button>
                                <a href="javascript:window.location.href = document.referrer;" class="btn btn-white">返回</a>
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
        var home_score=$("#home_score").val()
        var guest_score=$("#guest_score").val()
        var status=$("#status").val()
       if(status==null||status=="请选择.."){

            alert("请选择状态")
           return false;
       }
        $.ajax({
            type: 'POST',
            url: '<%= request.getContextPath()%>/user/updateGameOne',
            data: {"id": id,"home_score": home_score,"guest_score": guest_score,"status": status},
            async: false,
            cache: false,
        });

        alert("修改成功")
        window.location.href = document.referrer;

    }

</script>

</body>

</html>
