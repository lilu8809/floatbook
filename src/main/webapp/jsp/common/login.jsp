<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>加入float books，畅享流动</title>
	<link rel="stylesheet" href="<%=path %>/css/style.css" type="text/css" media="screen"/>
	<link rel="stylesheet" href="<%=path %>/css/login.css" type="text/css" media="screen"/>
	<script src="<%=path %>/js/jquery-2.1.1.min.js"></script>
	<script src="<%=path %>/js/jquery.cookie.js"></script>
	<script src="<%=path %>/js/login/login.js"></script>
</head>
<body>   
	<div id="logo" ><img src="<%=path %>/images/logoxiaowhite.jpg" /></div>
	&nbsp;<div style=" font-weight:bold; float:left;"></div>
	<div id="regist">Or免费<a href="<%=path %>/regist/regist.do">注册</a></div>
	<div id="login">已经有账户了？<a href="<%=path %>/login/login.do">登录</a></div>
	<hr  style="height:5px; background:#0085cc; border:0; text-align:center;"/>
	<div id="container">
	<div style="float:left; color:#0085cc; font-size:19px;font-weight:bold; margin:10px;">Float Books，畅享知识流动</div>
	<div id="pic">
	<table>
	<tr></tr>
	<tr></tr></table>
	<form  action="<%=path %>/login/dologin.do" method="post" name="LoginForm" id="LoginForm">
		<center>
		<table class="tableborder" align="center" cellpadding="4" cellspacing="1" width="97%">
		<tbody>
		<tr></tr>
		<tr>
			<td class="altbg1" align="right">我的号码:</td>
			<td class="altbg2" align="left">
				<input name="telephone" type="text" id="telephone" style="width:150px; height:20px" />
				<span id="phoneLabel" >11位手机号码</span>
			</td>
		</tr>
		<tr>
			<td class="altbg1" align="right">我的密码:</td>
			<td class="altbg2" align="left">
				<input name="password" type="text" id="password" style="width:150px; height:20px" />
			</td>
		</tr>
		<tr><td/><td><span id="checkInfo" ></span></td></tr>
		<tr>
			<td></td>
			<td align="left">
				<input id="loginsubmit" type="button"  value="快快开门" />
				<input id="loginagain" type="reset" value="艾玛重填"/>
			</td>
		</tr>
		<tr><td/><td><span id="loginInfo" ></span></td></tr>
		</tbody>  
		</table>
		<br>
		</center>
	</form>
	
	</div>
	
	</div>
</body>
</html>