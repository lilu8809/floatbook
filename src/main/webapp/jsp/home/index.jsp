<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>float book</title>
	<link rel="stylesheet" href="css/lrtk.css" type="text/css" media="screen" />
    
	<script src="js/jquery-2.1.1.min.js"></script>
	<script src="js/jquery.flexslider-min.js"></script>

	<script type="text/javascript">
		$(window).load(function() {
			$('.flexslider').flexslider();
		});
	</script>
    <style>
	body{ margin:auto;}
body,td,th {
	font-size: 14px;
	color: #777;
	font-family: 微软雅黑;
}
a:link {
	color: #00a0da;
	text-decoration: underline;
}
a:visited {
	color: #00a0da;
	text-decoration: underline;
}
a:hover {
	text-decoration: none;
	color: #e60012;
}
a:active {
	text-decoration: underline;
}
a {
	font-family: 宋体;
	font-size: 12px;
}
#regist{float:right; margin-right:10px; font-size:12px; font-family:"宋体"; }

#login{float:right;margin-right:10px;font-size:12px;font-family:"宋体";}
#logo{margin-top:5%;}
</style>
</head>

<body style="text-align:center">


<div id="container">
		<div id="logo" ><img src="images/logocolor.jpg" /></div>
&nbsp;<div style=" font-weight:700; text-align:center; font-family: '微软雅黑'; font-size:15px; color:#777; float:left;">Float Book，一指触动，让知识流动...</div>

<div id="login">已经有账户了？<a href="login/login.do">登录</a></div>
<div id="regist">Or请您<a href="<%=request.getContextPath()%>/common/register#">注册</a></div>
<hr  style="height:5px; background:#00a0da; border:0; text-align:center;"/>
	<div class="flexslider">
	    <ul class="slides">
	    	<li>
	    		<a href="login/login.do" target="_blank"><img src="images/inacup_jiaru.jpg" /></a>
	    		<p class="flex-caption"></p>
	    	</li>
	    	<li>
	    		<a href="login/login.do" target="_blank"><img src="images/inacup_2.jpg" /></a>
	    		<p class="flex-caption"></p>
	    	</li>
	    	<li>
	    		<a href="login/login.do" target="_blank"><img src="images/inacup_3.jpg" /></a>
	    	</li>
	    	<li>
	    		<a href="login/login.do" target="_blank"><img src="images/inacup_4.jpg" /></a>
	    	</li>
            <li>
	    		<a href="login/login.do" target="_blank"><img src="images/inacup_5.jpg" /></a>
	    	</li>
	    </ul>
  </div>
</div>


<div style="clear:both"></div>


</body>
</html>