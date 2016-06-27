<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="this is my page">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>加入float books，畅享流动</title>
	<link rel="stylesheet" href="<%=path %>/css/style.css" type="text/css" media="screen"/>
	<link rel="stylesheet" href="<%=path %>/css/regist.css" type="text/css" media="screen"/>
	<script src="<%=path %>/js/jquery-2.1.1.min.js"></script>
	<script src="<%=path %>/js/jquery.flexslider-min.js"></script>
	<script src="<%=path %>/js/regist/regist.js"></script>
</head>
<body>   
	<div id="logo" ><img src="<%=path %>/images/logoxiaowhite.jpg" /></div>
	&nbsp;<div style=" font-weight:bold; float:left;">Float Book，一指触动，让知识流动...</div>
	
	<div id="regist">Or免费<a href="<%=path %>/regist/regist.do">注册</a></div>
	<div id="login">已经有账户了？<a href="<%=path %>/login/login.do">登录</a></div>
	
	<hr  style="height:5px; background:#0085cc; border:0; text-align:center;"/>
	
	<div id="container">
	<div style="float:left; color:#0085cc; font-size:19px;font-weight:bold; margin:10px;">准备加入Float Book大家庭…^_^</div>
	<div id="pic">
	<table>
	<tr></tr>
	<tr></tr></table>
	
	<form id="register" method="post" name="register" action="<%=path %>/regist/doRegist.do">
		<center>
		<table class="tableborder" align="center" cellpadding="4" cellspacing="1" width="97%">
		<tbody>
		<tr>
			<td colspan="2" class="header" align="left">大胆留下你的名号</td>
		</tr>
		<tr>
			<td class="altbg1" width="21%" align="right">我的名字:</td>
			<td class="altbg2" align="left">
				<input id="username" name="username" size="25" maxlength="25" type="text" > 
				<span id="usermsg"></span>
			</td>
		</tr>
		<tr>
			<td class="altbg1" align="right">我的邮箱:</td>
			<td class="altbg2" align="left">
				<input name="email" type="text" id="email" size="25" >
				<span id="emailLabel" >填写企业邮箱～</span>
			</td>
		</tr>
		<tr>
			<td class="altbg1" align="right">我的手机:</td>
			<td class="altbg2" align="left">
				<input id="telephone" name="telephone" size="25" type="text"><!-- onFocus="checkEmail() " -->
				<span id="phoneLabel" >11位手机号码</span></td>
		</tr>
		<tr>
			<td class="altbg1" align="right">设置密码:</td>
			<td class="altbg2" align="left">
				<input id="password" name="password" size="25" type="password"><!-- onFocus="checkEmail() " -->
				<span id="pwdLabel" >最少6位</span></td>
		</tr>
		<tr>
			<td class="altbg1" align="right">确认密码:</td>
			<td class="altbg2" align="left">
				<input id="checkpwd" name="checkpwd" size="25" type="password"><!-- onFocus="checkEmail() " -->
				<span id="checkpwdLabel" ></span></td>
		</tr>
		<tr>
			<td></td>
			<td align="left">
				<input type="button" id="regsubmit" value="确   认" /><!-- onclick="submitForm()" -->
				<br/>
				<span id="tips"></span>
			</td>
		</tr>
		</tbody></table>
		<br>
		</center>
	</form>
<!-- 	<span id="welcome" >欢迎来到Float Books 大家庭</span> -->
	</div>
	
	</div>
</body>
</html>