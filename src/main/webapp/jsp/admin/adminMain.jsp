<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<% 
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<title>Float Books</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<link href="<%=path %>/css/styleadmin.css" rel="stylesheet" type="text/css" media="all"/>
	<link href="<%=path %>/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
	<script type="text/javascript" src="<%=path %>/js/jquery-2.1.1.min.js"></script> 
	<script src="<%=path %>/js/jquery.cookie.js"></script>
	<script type="text/javascript" src="<%=path %>/js/move-top.js"></script>
	<script type="text/javascript" src="<%=path %>/js/easing.js"></script>
	<script type="text/javascript" src="<%=path %>/js/jquery.nivo.slider.js"></script>
	<script type="text/javascript" src="<%=path %>/js/manage/manage.js"></script>
	<script type="text/javascript" src="<%=path %>/js/template.js"></script>
</head>
<style>
.right{float:right}
</style>
<body>
	<div class="header">
		 <div class="headertop_desc">
			<div class="wrap">
				<div class="nav_list">
					<ul>
						<li> <a id="welcome" href="#">
								
							</a>
						</li>
						<li><a href="<%=path %>/admin/ShowBooks">查看 Books</a></li>
						<li><a href="<%=path %>/common/isUserLogin">添加 Books</a></li>
					</ul>
				</div>
					<div class="account_desc">
						<ul>
							<li><a href="<%=path %>/login/loginout.do">芝麻关门</a></li><!-- 退出系统，清除session -->
						</ul>
					</div>
				<div class="clear"></div>
			</div>
	  	</div>
  	  		<div class="wrap">
				<div class="header_top">
					<div class="logo">
						<a href="＃"><img src="<%=path %>/images/logoxiaowhite.jpg" alt="" /></a>
					</div>
						<div class="header_top_right">
						
							<div class="search_box">
					     		<form action="<%=path %>/search/toSearchPage.do" method="post" name="mainSearchForm" id="mainSearchForm">
					     			<input type="text" id="categorySearch" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
					     			<input type="submit" value="">
					     		</form>
					     	</div>
						 <div class="clear"></div>
					</div>
			 <div class="clear"></div>
  		</div>     
				<div class="header_bottom">
					<div class="header_bottom_left">				
						<div class="categories">
						   <ul>
						  	   <h3>Books 类别</h3>
							      <li><a href="<%=path %>/admin/ShowBooksByCategory?category=all">所有 books</a></li>
							      <!-- 获取图书类别列表，并在下方显示 -->
							      <li><a href="<%=path %>/admin/ShowBooksByCategory?category=Java家族">Java家族</a></li>
							      <li><a href="<%=path %>/admin/ShowBooksByCategory?category=C/C++">C/C++</a></li>
							      <li><a href="<%=path %>/admin/ShowBooksByCategory?category=安卓/IOS">安卓/IOS</a></li>
							      <li><a href="<%=path %>/admin/ShowBooksByCategory?category=关于Code">关于Code</a></li>
							       <li><a href="<%=path %>/admin/ShowBooksByCategory?category=服务器/通信">服务器/通信</a></li>
							       <li><a href="<%=path %>/admin/ShowBooksByCategory?category=数据库技术">数据库技术</a></li>
							       <li><a href="<%=path %>/admin/ShowBooksByCategory?category=数据处理">数据处理</a></li>
							       <li><a href="<%=path %>/admin/ShowBooksByCategory?category=用户/产品">用户/产品</a></li>
						  	 </ul>
						</div>					
		  	         </div>
						    <div class="header_bottom_right">					 
						 	    <!------ Slider 大图展示部分 ------------>
								  <div class="slider">
							      	<div class="slider-wrapper theme-default">
							            <div id="slider" class="nivoSlider">
							                <%-- <img src="<%=path %>/images/zhui_feng_zheng_de_ren.jpg" data-thumb="<%=path %>/images/zhui_feng_zheng_de_ren.jpg" alt="" />
							                 --%><img src="<%=path %>/images/2.jpg" data-thumb="<%=path %>/images/2.jpg" alt="" />
							                <%-- <img src="<%=path %>/images/zhui_feng_zheng_de_ren.jpg" data-thumb="<%=path %>/images/zhui_feng_zheng_de_ren.jpg" alt="" />
							                 --%><img src="<%=path %>/images/4.jpg" data-thumb="<%=path %>/images/4.jpg" alt="" />
							                 <img src="<%=path %>/images/5.jpg" data-thumb="<%=path %>/images/5.jpg" alt="" />
							            </div>
							        </div>
						   		</div>
						<!------End Slider ------------>
			         </div>
			     <div class="clear"></div>
			</div>
   		</div>
   </div>
   <!------------End Header ------------>
  <div class="main">
  	<div class="wrap">
      <div class="content">
    	<div class="content_top">
    		<div class="heading">
    		<h3>可领养的书籍 <div class="right"><a href="<%=path %>/admin/ShowBooksByCategory?category=all">更多</a></div></h3>
    		</div>
    	</div>
	    <div id="topBorrowBook" class="section group"></div>
			
		<div class="content_bottom">
    		<div class="heading">
    		<h3>已阅过的书籍<div class="right"><a href="<%=path %>/admin/ShowBooksByCategory?category=all">更多</a></div></h3>
    		</div>
    	</div>
		<div id="topBorrowedOutBook" class="section group"></div>
	  </div>
  	</div>
  </div>
   <div class="footer">
   	  <div class="wrap">	
	     <div class="section group">
				<div class="col_1_of_4 span_1_of_4">
						<h4>Information</h4>
						<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Customer Service</a></li>
						<li><a href="#">Advanced Search</a></li>
						<li><a href="#">Orders and Returns</a></li>
						<li><a href="contact.html">Contact Us</a></li>
						</ul>
					</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Why buy from us</h4>
						<ul>
						<li><a href="#">About Us</a></li>
						<li><a href="#">Customer Service</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="contact.html">Site Map</a></li>
						<li><a href="#">Search Terms</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>My account</h4>
						<ul>
							<li><a href="contact.html">Sign In</a></li>
							<li><a href="index.html">View Cart</a></li>
							<li><a href="#">My Wishlist</a></li>
							<li><a href="#">Track My Order</a></li>
							<li><a href="contact.html">Help</a></li>
						</ul>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<h4>Contact</h4>
						<ul>
							<li><span>+91-123-456789</span></li>
							<li><span>+00-123-000000</span></li>
						</ul>
						<div class="social-icons">
							<h4>Follow Us</h4>
					   		  <ul>
							      <li><a href="#" target="_blank"><img src="<%=path %>/images/facebook.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"><img src="<%=path %>/images/twitter.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"><img src="<%=path %>/images/skype.png" alt="" /> </a></li>
							      <li><a href="#" target="_blank"><img src="<%=path %>/images/linkedin.png" alt="" /></a></li>
							      <div class="clear"></div>
						     </ul>
   	 					</div>
				</div>
			</div>
			 <div class="copy_right">
				<p>Company Name Â© All rights Reseverd | Design by  <a href="http://w3layouts.com">W3Layouts</a> </p>
		   </div>			
        </div>
    </div>
    <script type="text/javascript">
		$(document).ready(function() {			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
    <a href="#" id="toTop"><span id="toTopHover"> </span></a>
    
    
    <script id="htmlTemp" type="text/html">
		<div id="grid" class="grid_1_of_5 images_1_of_5">
			<a href="<%=path %>/admin/previewBook?isbn={{iSBN}}">
				<div class="box"><img src="{{bookImag}}"></img></div>
			</a>
			<h2><div style="width:155px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;">
				<a href="#" title="{{bookName}}">{{bookName}}</a>
				</div>
			</h2>
			<div class="price-details">
				<div class="price-number">
					<p><span class="rupees">{{bookCategory}}</span></p>
				</div>
				<div class="add-cart">								
					<h4><a href="<%=path %>/admin/previewBook?isbn={{iSBN}}">查看</a></h4>
				</div>
				<div class="clear"></div>
			</div>
		</div>					 
	</script>
	
</body>
</html>

