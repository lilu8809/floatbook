<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE htmlPUBLIC "-//W3C//DTDHTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type"content="text/html; charset=UTF-8">
<title>添加用户</title>
<script src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
</head>
<body>
<h1>完成用户添加</h1>
${name }--${phone }--${birth}
</body>
</html>