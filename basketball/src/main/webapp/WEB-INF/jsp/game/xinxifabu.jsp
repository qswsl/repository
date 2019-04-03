<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="../template/header.jsp" />
<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="${res }plug-in-ui/css/bootstrap.css" rel="stylesheet">
    <link href="${res }plug-in-ui/css/style.css" rel="stylesheet">
    <link href="${res }plug-in-ui/css/zTreeStyle/zTreeStyle.css" type="text/css" rel="stylesheet"/>
    <link href="${res }plug-in-ui/css/mycss/kongjian.css" rel="stylesheet">

    <script type="text/javascript" src="${res }js/layDate-v5.0.9/laydate/laydate.js"></script>
    <script type="text/javascript" src="${res }plug-in-ui/js/iFrameResize.js"></script>
    <script type="text/javascript" src="${res }plug-in-ui/js/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="${res }plug-in-ui/js/respond.min.js"></script>
    <script type="text/javascript" src="${res }plug-in-ui/js/bootstrap.js"></script>
    <script type="text/javascript" src="${res }plug-in-ui/js/common.js"></script>
    <script type="text/javascript" src="${res }plug-in-ui/js/jquery.form.js"></script>
    <script type="text/javascript" src="${res }plug-in-ui/js/scrollNav.js"></script>
    <script type="text/javascript" src="${res }js/layer/layer.js"></script>
    <script type="text/javascript" src="plug-in-ui/js/My97DatePicker/WdatePicker.js" language="javascript"></script>
</head>
<body style='overflow:scroll;overflow-x:hidden'>
<div class="container bs-docs-container" style="width:100%;">
    <div class="row">
        <form role="form" class="form-inline" action="<%= request.getContextPath()%>/user/xinxifabu" method="post"  id="formSubmit">
            <div  class="col-md-10" style="width:100%">
                <div class="panel panel-default">
                    <div class="panel-heading">比赛表</div>


                    <div class="panel-body">

                        <div class="search">
                            <div class="form-group col-sm-4">
                                <label class="control-label col-sm-3 line34">主队：</label>
                                <div class="col-sm-8">
                                    <input type="text" name="home" id="name" value="${home}" class="form-control">
                                </div>
                            </div>
                            <div class="form-group col-sm-4">
                                <label class="control-label col-sm-3 line34">客队：</label>
                                <div class="col-sm-8">
                                    <input type="text" name="guest" id="student_number" value="${guest}" class="form-control">
                                </div>
                            </div>
                            <%--<div class="form-group col-sm-4">
                                <label class="control-label col-sm-3 line34">登陆码</label>
                                <div class="col-sm-8">
                                    <input type="text" name="code" id="code" value="${code}" class="form-control">
                                </div>
                            </div>--%>

                            <button type="submit" class="btn btn-primary">查询</button>
                        </div>
                       <%-- <div class="search">
                            <a href="<%= request.getContextPath()%>/user/derive" style="margin-left: 100px" class="btn btn-primary" onclick="return confirm('确定导出？')">前一天数据汇总表Excel导出</a>
                            <a href="<%= request.getContextPath()%>/user/allDerive" style="margin-left: 110px" class="btn btn-primary" onclick="return confirm('确定导出？')">叠加数据汇总表Excel导出</a>
                        </div>--%>
                        <button type="button" class="btn btn-primary" onclick="shua()">刷新</button>
                        <div id="legend">
                           <%-- <legend  class="le"><button type="button" class="btn btn-primary" onclick="doUrl('/p3/wxActInvite.do?toAdd')" >新增</button></legend>--%>
                        </div>
                        <table class="table table-striped">
                            <thead>
                            <th style="text-align:center;">编号</th>
                            <th style="text-align:center;">主队</th>
                            <th style="text-align:center;">主队分数</th>
                            <th style="text-align:center;"></th>
                            <th style="text-align:center;">客队分数</th>
                            <th style="text-align:center;">客队</th>
                            <th style="text-align:center;">状态</th>

                           <%-- <th style="text-align:center;">实况</th>--%>
                            <th style="text-align:center;">操作</th>
                            </thead>
                            <tobody>
                               <c:forEach items="${list}" var="list">
                                   <tr style="text-align:center;">
                                       <td>${list.id}</td>
                                       <td>${list.home_name}</td>
                                       <td><b>${list.home_score}</b></td>
                                       <td>:</td>
                                       <td><b>${list.guest_score}</b></td>
                                       <td>${list.guest_name}</td>
                                       <td>
                                           <c:if test="${list.status=='2'}"><b style="color: #85837a">已结束</b></c:if>
                                           <c:if test="${list.status=='1'}"><b style="color: #c82640">比赛中</b></c:if>
                                           <c:if test="${list.status=='0'}"><b style="color: #4fdf0a">未开始</b></c:if>

                                       </td>
                                      <%-- <td><a href="<%= request.getContextPath()%>/user/count?id=${list.id}" style="color: #00a2d4">技术统计</a></td>--%>
                                       <td><a href="<%= request.getContextPath()%>/user/data?id=${list.id}">本场比赛信息打印</a></td>
                                   </tr>
                              </c:forEach>
                            </tobody>
                        </table>
                        <div class="text-right">
                         <!--公用翻页代码-->
                          <jsp:include page="../page.jsp">
                                <jsp:param value="${page}" name="datas"/>
                                <jsp:param value="" name="url"/>
                            </jsp:include>
                            <!--END公用翻页代码-->
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

</body>
<script>
    laydate.render({
        elem: '#startTime'
        ,type: 'datetime'
    });
    laydate.render({
        elem: '#endTime'
        ,type: 'datetime'
    });



    function deleteId(id){
        var msg = "您真的确定要删除吗？\n\n请确认！";
        if (confirm(msg)==true){
            $.ajax({
                type: 'POST',
                url: '<%=request.getContextPath()%>/user/deleteGame',
                data: {"id": id},
                dataType: "json",
                async: false,
                cache: false,
            });
            alert("删除成功")
            window.location.reload()
        }else{
            return false;
        }
    }

    function shua(){

        window.location.reload()

    }

</script>
</html>