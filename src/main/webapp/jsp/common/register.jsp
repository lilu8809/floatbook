<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>加入float books，畅享流动</title>
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen"/>
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
        	var ue = false;
		    var etype = false;
			var xmlHttp;
			
			function checkEmail(emailstr) {
				
				if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
					xmlHttp = new XMLHttpRequest();
					if(xmlHttp.overrideMimeType){
						xmlHttp.overrideMimeType("text/xml");
					  }
				} else {// code for IE6, IE5
					xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
				}
				if(!xmlHttp){
				 	 alert("不能创建XMLHttpRequest对象实例!");
				 	 return false;
				 	}
				//进入Action中的checkemail方法
				var url ="<%=request.getContextPath()%>/common/registerSubmit?method=checkemail"
						+ "&" + "email=" + emailstr;
				//alert("欢迎进入first step--1");
				//ajax函数，后面直接加javascript函数
				xmlHttp.onreadystatechange = function() {//当使用 .open("GET",url,true)=true 时，请规定在响应  处于onreadystatechange 事件中的就绪状态时执行的函数：
					if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
					//	alert("欢迎进入third step--3,email="+emailstr+";and responseText="+xmlHttp.responseText.toString());
						if (xmlHttp.responseText.toString() == "s1") {
							//alert("欢迎进入third step--4");
							document.getElementById("emailLabel").innerHTML = "该邮箱已被注册";
							ue = false;
						} else if (xmlHttp.responseText.toString() == "s2") {
							//alert("欢迎进入third step--5");
							document.getElementById("emailLabel").innerHTML = "该邮箱可以注册";
							//document.getElementById("emailLabel").  
							ue = true;
						}
					}
				};
				xmlHttp.open("GET", url, true);
				xmlHttp.send();
			}
		//判断邮箱是否为空
			function beforeSubmit() {
				//alert(document.getElementById("email").value.toString());
				if(document.getElementById("email").value.toString().indexOf("chinamobile.com")>=0){
					etype = true;
					//检查该邮箱是否被使用
					checkEmail(document.getElementById("email").value);//str = user's email address
				}else{
					document.getElementById("emailLabel").innerHTML = "哎呀，没有用公司邮箱噢～";
					etype = false;
				}
			}
				
			function submitForm(){
				if (ue && etype ) { //&& pass
					alert("欢迎小伙伴来到 Float Books");
					//var content = '<div id="messageBox"><div class="bg"></div><div class="popupbox"><div class="titleh1">&nbsp;&nbsp;&nbsp;&nbsp;欢迎登录</div><p class="failedContent">欢迎您使用TRACE。</p><div align="center"><input type="button" id="messageConfirmButton" value="确定" class="btnOK" /></div></div></div>';
					//var content = '<div align="center">欢迎登录</div><p>欢迎您使用TRACE。</p><div align="center"><input type="button" id="messageConfirmButton" value="确定" />';
					//showMessageBox(content);
					//document.getElementById("register").submit();
					document.register.submit();
				}else{
					alert("不听劝，都说了不能有错误信息了 T-T");
				}
			}
        </script>

</head>
<body>   <div id="logo" ><img src="<%=request.getContextPath()%>/images/logoxiaowhite.jpg" /></div>
&nbsp;<div style=" font-weight:bold; float:left;">Float Book，一指触动，让知识流动...</div>

<div id="regist">Or免费<a href="<%=request.getContextPath()%>/common/register#">注册</a></div>
<div id="login">已经有账户了？<a href="<%=request.getContextPath()%>/common/login#">登录</a></div>

<hr  style="height:5px; background:#0085cc; border:0; text-align:center;"/>

<div id="container">
<div style="float:left; color:#0085cc; font-size:19px;font-weight:bold; margin:10px;">准备加入Float Book大家庭…^_^</div>
<div id="pic">
<table>
<tr></tr>
<tr></tr></table>

<form id="register" method="post" name="register" action="<%=request.getContextPath()%>/common/registerSubmit?method=register">
<center>
<table class="tableborder" align="center" cellpadding="4" cellspacing="1" width="97%">
<tbody>
<tr>
	<td colspan="2" class="header" align="left">大胆留下你的名号</td>
</tr>
<tr>
	<td class="altbg1" width="21%" align="right">我的名字:</td>
	<td class="altbg2" align="left">
		<input id="username" name="username" size="25" maxlength="25" type="text" onblur="validate()"> 
		<span id="usermsg"></span>
	</td>
</tr>
<tr>
	<td class="altbg1" align="right">我的邮箱:</td>
	<td class="altbg2" align="left"><input name="email" type="text" id="email" size="25" >
	<a id="emailLabel" >填写企业邮箱～</a>
	</td>
</tr>
<tr>
	<td class="altbg1" align="right">我的手机:</td>
	<td class="altbg2" align="left"><input name="telephone" size="25" type="text" onFocus="beforeSubmit() "></td>
</tr>

<tr>
	<td></td>
	<td align="left">
<input type="button" name="regsubmit" value="确   认" onclick="submitForm()"></td>
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