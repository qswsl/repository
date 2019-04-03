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
        <form role="form" class="form-inline" action="<%= request.getContextPath()%>/user/queryRecord" method="post"  id="formSubmit">
            <div  class="col-md-10" style="width:100%">
                <div class="panel panel-default">

                    <div class="panel-body">
                        <div class="search">
                            <div class="form-group col-sm-4">
                                <label class="control-label col-sm-3 line34">输入球队名称：</label>
                                <div class="col-sm-8">
                                   <input type="text" name="TeamName" id="TeamName"  class="form-control">
                                </div>
                            </div>
                            <div class="form-group col-sm-4">
                                <label class="control-label col-sm-3 line34">地址：</label>
                                <div class="col-sm-8">
                                    <input type="text" name="address" id="address" value="" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">说明（选填）：</label>
                                <div class="col-sm-8">
                                    <input id="comment" name="comment" class="form-control" required="" aria-required="true"  placeholder="如：实力很强..等"></input>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
                <button type="button" class="btn btn-success" style="float: right;" onclick="addTeam()">保存</button>
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
            content: ''
        });
    }
 function addTeam(){

     var TeamName=$("#TeamName").val()
     var address=$("#address").val()
     var comment=$("#comment").val()
     if (TeamName==null||TeamName=='')
     {
         alert('球队名称不能为空');
         return;
     }
     if (address==null||address=='')
     {
         alert('地址不能为空');
         return;
     }
     $.ajax({
         type: 'POST',
         url: '<%=request.getContextPath()%>/user/addSaveTeam',
         data: {"name": TeamName,"address": address,"remark": comment},
         async: false,
         cache: false,
     });

     alert("添加成功")
     window.location.reload()
 }

</script>
</html>