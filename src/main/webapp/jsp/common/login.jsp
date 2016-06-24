<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>加入float books，畅享流动</title>
	<link rel="stylesheet" href="../css/style.css" type="text/css" media="screen"/>
	<link rel="stylesheet" href="../css/login.css" type="text/css" media="screen"/>
	<script src="../js/jquery-2.1.1.min.js"></script>
	<script src="../js/login/login.js"></script>
</head>
<body>   
	<div id="logo" ><img src="../images/logoxiaowhite.jpg" /></div>
	&nbsp;<div style=" font-weight:bold; float:left;"></div>
	<div id="regist">Or免费<a href="../regist/regist.do">注册</a></div>
	<div id="login">已经有账户了？<a href="../login/login.do">登录</a></div>
	<hr  style="height:5px; background:#0085cc; border:0; text-align:center;"/>
	<div id="container">
	<div style="float:left; color:#0085cc; font-size:19px;font-weight:bold; margin:10px;">Float Books，畅享知识流动</div>
	<div id="pic">
	<table>
	<tr></tr>
	<tr></tr></table>
	<form  action="common/authorization" method="post" name="LoginForm" id="LoginForm">
	<center>
	<table class="tableborder" align="center" cellpadding="4" cellspacing="1" width="97%">
	<tbody>
	<tr>
	</tr>
	<tr>
		<td class="altbg1" width="21%" align="right">我的大名:</td>
		<td class="altbg2" align="left">
			<input id="username" name="username" style="width:150px; height:20px" type="text" onblur="_checkname()"> 
			<a href="#" id="nameInfo" name="nameInfo"></a>
			<span id="usermsg"></span>
		</td>
	</tr>
	<tr>
		<td class="altbg1" align="right">我的号码:</td>
		<td class="altbg2" align="left">
			<input name="telephone" type="text" id="telephone" style="width:150px; height:20px" onblur="_checktelephone()">
			<a href="#" id="telephoneInfo" name="telephoneInfo" ></a>
		</td>
	</tr>
	<tr>
	
	</tr>
	<tr>
		<td></td>
		<td align="left">
			<input type="button"  value="快快开门" onclick="beforeLogin()"/>
			<input type="reset" value="艾玛重填"/>
			<label id="loginResult"></label>
			
	</tr>
	</tbody>  
	</table>
	<br>
	</center>
	</form>
	
	</div>
	
	</div>
</body>
</html>