<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//获取项目路径
    String path = request.getContextPath();
	//获取项目名称以及项目端口号，生成绝对路径
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
	//设置request中base变量为项目根路径
    request.setAttribute("base", basePath);
	//设置request中res变量为静态资源文件根路径
    request.setAttribute("res", basePath + "static/");
%>