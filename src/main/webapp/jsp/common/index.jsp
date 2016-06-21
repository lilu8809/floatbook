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
<title>Index</title>
<script src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
</head>
<body>
<h3>用户信息操作：form提交add.do，传递表单参数</h3>
<form action="user/add.do"method="post">
姓名：<input type="text"name="userid"></input><br/>
号码：<input type="text"name="phone"></input><br/>
生日：<input type="text"name="birth"></input><br/>
<input type="submit"value="提交"/>
</form>
<br></br>
</body>
</html>
