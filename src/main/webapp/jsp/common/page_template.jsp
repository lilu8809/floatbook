<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>加入float books，畅享流动</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" type="text/css" media="screen"/>
	<style>
	body {
	margin:0 auto;
	background-color: #FFF;
	width:780px;
}	
	
	body,td,th {
	font-size: 14px;
	color: #777;
	font-family: 微软雅黑;
}

#container{ width:780px;text-align:center; margin:0 auto;}
#regist{float:right; margin-right:10px; font-size:12px; font-family:"宋体"; }
#login{float:right;margin-right:10px;font-size:12px;font-family:"宋体";}
#logo{margin-top:10px;}

#pic{
	text-align:center; margin-top:-10px; border:1px solid #0085cc;
	height:380px;
	}
.altbg1			{ background: #F3F6FA }
.altbg2			{ background: #FFFFFF }
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/lhgcore.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/lhgcalendar.js"></script>	

<script type="text/javascript">

</script>

</head>
<body>   <div id="logo" ><img src="<%=request.getContextPath()%>/images/logoxiaowhite.jpg" /></div>
&nbsp;<div style=" font-weight:bold; float:left;">Float Book，一指触动，让知识流动...</div>

<div id="regist">Or免费<a href="<%=request.getContextPath()%>/common/register#">注册</a></div>
<div id="login">已经有账户了？<a href="<%=request.getContextPath()%>/common/login#">登录</a></div>

<hr  style="height:5px; background:#0085cc; border:0; text-align:center;"/>

<div id="container">
<div style="float:left; color:#0085cc; font-size:19px;font-weight:bold; margin:10px;">Float Books，快开门</div>
<div id="pic">
<table>
<tr></tr>
<tr></tr></table>
<form  action="authorization" method="post" name="LoginForm" id="LoginForm">
<center>
<table class="tableborder" align="center" cellpadding="4" cellspacing="1" width="97%">
<tbody>
<tr>
	
</tr>
<tr>
	<td class="altbg1" width="21%" align="right">我的大名:</td>
	<td class="altbg2" align="left">
		<input id="username" name="username" size="25" maxlength="25" type="text" onblur="validate()"> 
		<span id="usermsg"></span>
	</td>
</tr>
<tr>
	<td class="altbg1" align="right">我的号码:</td>
	<td class="altbg2" align="left"><input name="telephone" type="text" id="telephone" size="25" >
	
	</td>
</tr>
<tr>
	<td></td>
	<td align="left">
		<input type="button"  value="快快开门" onclick="login()"/>
		<input type="reset" value="艾玛重填"/>
</tr>
<!--
<tr>
<td class="altbg1">注册时间:</td>
<td class="altbg2"><input name="registrationDate" type="text" id="registrationDate" size="25">
<img align="absmiddle" src="./images/date.gif" onclick="J.calendar.get({id:'registrationDate'});"/></td>
</tr>
 -->
</tbody></table>
<br>
</center>
</form>

</div>

</div>
</body>
</html>