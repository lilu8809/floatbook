<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import= "colorlife.user.*"%>

<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
String malltag = request.getParameter("tag");
String mtag = request.getParameter("mtag");
String action = request.getParameter("action");
int tag = 0;
if(action != null && action.equals("login")) {
   if(mtag != null && mtag.equals("1")){
     tag = Integer.valueOf(mtag);}
	String usernum = request.getParameter("usernum");
	String password = request.getParameter("userpwd");
	User u = null;
	try {
		u = User.check(usernum, password);
		//System.out.println(u.getmajor());
	} catch (UserNotFoundException e) {
		out.println(e.getMessage());
		return;
	} catch (PasswordNotCorrectException e) {
		out.println(e.getMessage());
		return;
	}

	session.setAttribute("user", u);//���û���¼��Ϣ����session�б���.
	if(tag == 1){
	  response.sendRedirect("./CompanyUser/mall.jsp");
	}
	else{
	  response.sendRedirect("./PersonalUser/PersonHomepage.jsp");
	}
}
%>
<%
String action1 = request.getParameter("action1");
String signed_request = null;
session.setAttribute("_REQUEST",signed_request);//signed_request = ${_REQUEST.'signed_request'};
if(action1 != null && action1.trim().equals("clearsession")){ 
 session.removeAttribute("user");
 session.invalidate();
 //���Ի�ȡSESSION
  
}
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>LoginUser</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">  
	<link rel="stylesheet" href="./2011guanke/css/style.css" /> 
	<script src="http://tjs.sjs.sinajs.cn/t35/apps/opent/js/frames/client.js" language="JavaScript"  charset="utf-8"></script>
	
	<style>
	body {
	margin:0 auto;
	background-color: #FFF;
	width:780px;
}	
	
	body,td,th {
	font-size: 14px;
	color: #777;
	font-family: ΢���ź�;
}

#container{ width:780px;text-align:center; margin:0 auto;}
#regist{float:right; margin-right:10px; font-size:12px; font-family:"����"; }
#login{float:right;margin-right:10px;font-size:12px;font-family:"����";}
#logo{margin-top:10px;}

#pic{
	text-align:center; margin-top:-10px; border:1px solid #47bde7;
	height:380px;
	}
.altbg1			{ background: #F3F6FA }
.altbg2			{ background: #FFFFFF }
</style>

</head>
<body>   <div id="logo" ><img src="./images/logoxiaowhite.jpg" /></div>
&nbsp;<div style=" font-weight:bold; float:left;">��ȫ�µĹ��������������ǵ��罻Ȧ</div>
${sessionScope._REQUEST }
<div id="regist">Or���<a href="Register.jsp">ע��</a></div>
<div id="login">�Ѿ����˻��ˣ�<a href="LoginUser.jsp">��¼</a></div>
<!--  <a href="https://api.weibo.com/2/friendships/friends.json?source=appkey&uid=$_SESSION['user_id']&access_token=$_SESSION['oauth_token']">��ȡ�����б�(id��name)</a>
<input type="button" value="����" onclick="showoauth2()" />-->
<hr  style="height:5px; background:#0085cc; border:0; text-align:center;"/>

<div id="container">
<div style="float:left; color:#0085cc; font-size:19px;font-weight:bold; margin:10px;">��¼ҳ��</div>
<div id="pic">
<form action="LoginUser.jsp" method="post">
	<input type="hidden" name="action" value="login"/>
	
	<% if(malltag != null && malltag.equals("1")){ %>
	<input type="hidden" name="mtag" value="1"/>
	<% }  %>"
<table border="1" align="center">
	<tr>&nbsp;&nbsp;</tr>
	<tr>&nbsp;&nbsp;</tr>
	<tr>
		<td class="altbg1">ע������:</td>
		<td><input type="text" size="25" name="usernum" /></td>
	</tr>
	<tr>
		<td class="altbg2">��¼����:</td>
		<td><input type="password" size="25" name="userpwd"/></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="submit" value="��¼"/><input type="reset" value="����"/></td>
	</tr>
</table>
</form>
</div>
</div>
</body>
</html>
