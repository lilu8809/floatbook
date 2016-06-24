<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<head>
<title>Float Books 细节</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="<%=request.getContextPath()%>/css/styleadmin.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.0.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/js/move-top.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easing.js"></script>
</head>
<body>
	<div class="header">
		 <div class="headertop_desc">
			<div class="wrap">
				<div class="nav_list">
					<ul>
						<li>
								<c:if test='<%=(session.getAttribute("user")!=null) %>'>
				       			<a href="#">欢迎 ${user.username }</a>
								</c:if>	
								<c:if test='<%=(session.getAttribute("user")==null) %>'>
								<a href="<%=request.getContextPath()%>/common/register.jsp">要不要先注册再来啊-_-#</a>
								</c:if>
						</li>
						<li><a href="<%=request.getContextPath()%>/admin/ShowBooks">查看 Books</a></li>
						<li><a href="<%=request.getContextPath()%>/common/isUserLogin">添加 Books</a></li>
					</ul>
				</div>
					<div class="account_desc">
						<ul>
							<li><a href="contact.html"> </a></li>
							<li><a href="contact.html"> </a></li>
							<li><a href="previewBook.jsp"> </a></li>
							<li><a href="#"> </a></li>
							<li><a href="<%=request.getContextPath()%>/admin/logout">芝麻关门</a></li><!-- 退出系统，清除session -->
						</ul>
					</div>
				<div class="clear"></div>
			</div>
	  	</div>
  	  		<div class="wrap">
				<div class="header_top">
					<div class="logo">
						<a href="adminMain.jsp"><img src="<%=request.getContextPath()%>/images/logoxiaowhite.jpg" alt="" /></a>
					</div>
						<div class="header_top_right">
							  <div class="search_box">
					     		<form>
					     			<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
					     		</form>
					     	</div>
						 <div class="clear"></div>
					</div>
						  <script type="text/javascript">
								function DropDown(el) {
									this.dd = el;
									this.initEvents();
								}
								DropDown.prototype = {
									initEvents : function() {
										var obj = this;
					
										obj.dd.on('click', function(event){
											$(this).toggleClass('active');
											event.stopPropagation();
										});	
									}
								}
					
								$(function() {
					
									var dd = new DropDown( $('#dd') );
					
									$(document).click(function() {
										// all dropdowns
										$('.wrapper-dropdown-2').removeClass('active');
									});
					
								});
					    </script>
			   <div class="clear"></div>
  		    </div>     				
   		</div>
   </div>
   <div class="main">
   	 <div class="wrap">
   	 <!--  
   	 	<div class="content_top">
    		<div class="back-links">
    		<p><a href="<%=request.getContextPath()%>/admin/ShowBooks">Home</a> &gt;&gt;&gt;&gt; <a href="#" class="active">English</a></p>
    	    </div>
    		<div class="clear"></div>
    	</div>
    	-->
   	 	<div class="section group">
				<div class="cont-desc span_1_of_2">
				  <div class="product-details">				
					<div class="grid images_3_of_2">
						<img src="<%=request.getContextPath()%>/images/<s:property value='#request.book.bookImag'/>" alt="" />
				  </div>
				<div class="desc span_3_of_2">
					<h2><s:property value='#request.book.bookName'/></h2>
					<p><s:property value='#request.book.author'/>／<s:property value='#request.book.bookOwner'/>／<s:property value='#request.book.dateString'/>
					</p>					
					<div class="price">
						<p>类别: <span><s:property value='#request.book.bookCategory'/></span></p>
					</div>
					<div class="available">
						<ul>
						  <li><span>还能借 </span> &nbsp; <s:property value='#request.book.bookUseful'/><span>&nbsp; 本</span></li>
						  <li><span>书在 </span>&nbsp; <s:property value='#request.book.storePlace'/><span>&nbsp; 那里</span></li>
						  <li><span>书是 </span>&nbsp; <s:property value='#request.book.bookOwner'/><span>&nbsp; 的</span></li>
					    </ul>
					</div>
				<div class="share-desc"><!--  
					<div class="share">
						<p>Number of units :</p><input class="text_box" type="text">				
					</div>-->
					<div class="button"><span><a href="<%=request.getContextPath()%>/admin/editBook?isbn=<s:property value='#request.book.ISBN'/>">编辑书目信息</a></span></div>					
					<div class="clear"></div>
				</div>
				 <div class="wish-list">
				 	<ul>
				 		<li class="wish"><a href="#">预留功能</a></li>
				 	    <li class="compare"><a href="#">预留功能</a></li>
				 	</ul>
				 </div>
			</div>
			<div class="clear"></div>
		  </div>
		<div class="product_desc">	
			 <h2>书目概要 :</h2>
			 <p><s:property value='#request.book.bookintroduce'/></p>
	   </div>
   </div>
   			<!-- 页面右边，显示与本书类别相同的其他书目 -->
				<div class="rightsidebar span_3_of_1 sidebar">
					<h2>相同类别的书目</h2>
					<s:iterator id="sameCategoryBook" status="st" value="#request.sameCategoryBooks">
					 	<div class="special_movies">
					 	   <div class="movie_poster">
					 		  <a href="#"><img src="<%=request.getContextPath()%>/images/<s:property value='#request.sameCategoryBook.bookImag'/>" alt="" /></a>
					 		 </div>
					 		   <div class="movie_desc">
							    <h3><s:property value='#request.sameCategoryBook.bookName'/></h3>
								   
								     <span><a href="<%=request.getContextPath()%>/admin/previewBook?isbn=<s:property value='#sameCategoryBook.ISBN'/>">待我细看</a></span>
								 </div>
								<div class="clear"></div>
					 		</div>	
					</s:iterator>
					 		
 					   </div>
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
							      <li><a href="#" target="_blank"><img src="<%=request.getContextPath()%>/images/facebook.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"><img src="<%=request.getContextPath()%>/images/twitter.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"><img src="<%=request.getContextPath()%>/images/skype.png" alt="" /> </a></li>
							      <li><a href="#" target="_blank"> <img src="<%=request.getContextPath()%>/images/linkedin.png" alt="" /></a></li>
							      <div class="clear"></div>
						     </ul>
   	 					</div>
				</div>
			</div>
			 <div class="copy_right">
				<p>CMCC © All rights Reseverd | Design by  <a href="http://w3layouts.com">liluhz@chinamobile.com</a> </p>
		   </div>			
        </div>
    </div>
   <script type="text/javascript">
		$(document).ready(function() {			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
    <a href="#" id="toTop"><span id="toTopHover"> </span></a>
</body>
</html>

