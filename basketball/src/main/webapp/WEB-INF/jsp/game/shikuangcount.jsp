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

</head>

<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <a href="<%= request.getContextPath()%>/user/shikuang" class="btn btn-primary">返回</a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <%-- <a href="<%= request.getContextPath()%>/user/data?be_game=${be_team}" class="btn btn-primary">本场比赛信息打印</a>--%>

    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>数据统计（主队）</h5>
                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th></th>
                                <th>球员</th>
                                <th>得分</th>
                                <th>篮板</th>
                                <th>助攻</th>
                                <th>三分球</th>
                                <th>抢断</th>
                                <th>盖帽</th>
                                <th>失误</th>
                                <th>犯规</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                         <c:forEach items="${homeList}" var="list">
                            <tr>
                                <td></td>
                                <td>${list.name}</td>
                                <td>${list.score}</td>
                                <td>${list.lan}</td>
                                <td>${list.zhu}</td>
                                <td>${list.san}</td>
                                <td>${list.qiang}</td>
                                <td>${list.gai}</td>
                                <td>${list.shi}</td>
                                <td>${list.fan}</td>
                                <td><a href="<%= request.getContextPath()%>/user/updateOneCount?id=${list.id}" style="color: #00a2d4">点击录入</a></td>
                            </tr>
                          </c:forEach>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>数据统计（客队）</h5>
                </div>
                <div class="ibox-content">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th></th>
                                <th>球员</th>
                                <th>得分</th>
                                <th>篮板</th>
                                <th>助攻</th>
                                <th>三分球</th>
                                <th>抢断</th>
                                <th>盖帽</th>
                                <th>失误</th>
                                <th>犯规</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${guestList}" var="list">
                                <tr>
                                    <td></td>
                                    <td>${list.name}</td>
                                    <td>${list.score}</td>
                                    <td>${list.lan}</td>
                                    <td>${list.zhu}</td>
                                    <td>${list.san}</td>
                                    <td>${list.qiang}</td>
                                    <td>${list.gai}</td>
                                    <td>${list.shi}</td>
                                    <td>${list.fan}</td>
                                    <td><a href="<%= request.getContextPath()%>/user/updateOneCount?id=${list.id}" style="color: #00a2d4">点击录入</a></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>

    </div>
</div>
<script src="https://cdn.staticfile.org/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="http://www.zi-han.net/theme/hplus/js/plugins/peity/jquery.peity.min.js"></script>
<script src="http://www.zi-han.net/theme/hplus/js/content.min.js?v=1.0.0"></script>
<script src="http://www.zi-han.net/theme/hplus/js/plugins/iCheck/icheck.min.js"></script>
<script src="http://www.zi-han.net/theme/hplus/js/demo/peity-demo.min.js"></script>
<script>
    $(document).ready(function () {
        $(".i-checks").iCheck({checkboxClass: "icheckbox_square-green", radioClass: "iradio_square-green",})
    });
</script>

</body>

</html>
