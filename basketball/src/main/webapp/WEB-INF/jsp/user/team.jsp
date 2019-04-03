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
        <form role="form" class="form-inline" action="<%= request.getContextPath()%>/user/team" method="post"  id="formSubmit">
            <div  class="col-md-10" style="width:100%">
                <div class="panel panel-default">
                    <div class="panel-heading">球队表</div>


                    <div class="panel-body">

                        <div class="search">
                            <div class="form-group col-sm-4">
                                <label class="control-label col-sm-3 line34">球队名称：</label>
                                <div class="col-sm-8">
                                    <input type="text" name="name" id="name" value="${name}" class="form-control">
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

                        <button type="button" class="btn btn-success" onclick="add()">录入球队</button>
                        <button type="button" class="btn btn-primary" onclick="shua()">刷新</button>
                        <div id="legend">
                           <%-- <legend  class="le"><button type="button" class="btn btn-primary" onclick="doUrl('/p3/wxActInvite.do?toAdd')" >新增</button></legend>--%>
                        </div>
                        <table class="table table-striped">
                            <thead>
                            <th>编号</th>
                            <th>球队名称</th>
                            <th>地址</th>
                            <th>操作</th>
                            </thead>
                            <tobody>
                               <c:forEach items="${list}" var="list">
                                   <tr>
                                       <td>${list.id}</td>
                                       <td>${list.name}</td>
                                       <td>${list.address}</td>
                                       <td><span style="color: #00a2d4" onclick="deleteId(${list.id})">删除</span>&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #00a2d4" onclick="update(${list.id})">修改</span></td>
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

    //根据时间范围查询
    function scopeData() {
        var startTime=$("#startTime").val();
        var endTime=$("#endTime").val();
        if(startTime==""){
            alert("请选择开始时间")
            return false;
        }
        if(endTime==""){
            alert("请选择结束时间")
            return false;
        }
        var msg='确定导出该时间范围内的数据统计？';
        if(confirm(msg)==true){
            window.location.href="<%= request.getContextPath()%>/user/scopeData?startTime="+startTime+"&endTime="+endTime;
            return true;
        }else{
            return false;
        }
    }

    function add(){

        layer.open({
            title:"添加球队",
            type: 2,
            area: ['700px', '450px'],
            fixed: false, //不固定
            maxmin: true,
            content: '<%= request.getContextPath()%>/user/addTeam'
        });
    }

    function deleteId(id){
        var msg = "您真的确定要删除吗？\n\n请确认！";
        if (confirm(msg)==true){
            $.ajax({
                type: 'POST',
                url: '<%=request.getContextPath()%>/user/deleteTeam',
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

    function update(id){
        layer.open({
            title:"修改球队",
            type: 2,
            area: ['700px', '450px'],
            fixed: false, //不固定
            maxmin: true,
            content: '<%=request.getContextPath()%>/user/updateTeam?id='+id

        });
    }

    function shua(){

        window.location.reload()

    }
</script>
</html>