<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@ taglib prefix="s" uri="/struts-tags"%> --%>
<!DOCTYPE HTML>
<head>
<title>Float Books</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="../css/styleadmin.css" rel="stylesheet" type="text/css" media="all"/>
<link href="../css/slider.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="../js/jquery-2.1.1.min.js"></script> 
<script type="text/javascript" src="../js/move-top.js"></script>
<script type="text/javascript" src="../js/easing.js"></script>
<script type="text/javascript" src="../js/jquery.nivo.slider.js"></script>


<script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
    
    //request.getAttribute("username")
    
    </script>
</head>
<body>
	<div class="header">
		 <div class="headertop_desc">
			<div class="wrap">
				<div class="nav_list">
					<ul>
						<li>
							<a href="#">
								<script>
								</script>
								<c:if test='<%=(session.getAttribute("user")!=null) %>'>
				       			欢迎 <%=(session.getAttribute("username") ) %>
								</c:if>	
								<c:if test='<%=(session.getAttribute("user")==null) %>'>
								 	<a href="<%=request.getContextPath()%>/common/login.jsp">要不要先登录再来啊-_-#</a>
								</c:if>
							</a>
						</li>
						<li><a href="../admin/ShowBooks">查看 Books</a></li>
						<li><a href="../common/isUserLogin">添加 Books</a></li>
					</ul>
				</div>
					<div class="account_desc">
						<ul>
<!-- 							<li><a href="contact.html"> </a></li> -->
<!-- 							<li><a href="contact.html"> </a></li> -->
<!-- 							<li><a href="previewBook.jsp"> </a></li> -->
<!-- 							<li><a href="#"> </a></li> -->
							<li><a href="../jsp/home/index.jsp">芝麻关门</a></li><!-- 退出系统，清除session -->
						</ul>
					</div>
				<div class="clear"></div>
			</div>
	  	</div>
  	  		<div class="wrap">
				<div class="header_top">
					<div class="logo">
						<a href="＃"><img src="<%=request.getContextPath()%>/images/logoxiaowhite.jpg" alt="" /></a>
					</div>
						<div class="header_top_right">
						
							<div class="search_box">
					     		<form>
					     			<input type="text" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
					     			<input type="submit" value="">
					     		</form>
					     	</div>
						 	<!--   <div class="cart">
						  	   <p><span>进来捞书 ^_^ </span><div id="dd" class="wrapper-dropdown-2">
						  	   	<ul class="dropdown">
										<li>找Float Book 名字</li>
										<li>找Float Book 类别</li>
										<li>找Float Book 作者</li>
								</ul></div></p>
						  	</div>
						  	-->
							  
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
				<div class="header_bottom">
					<div class="header_bottom_left">				
						<div class="categories">
						   <ul>
						  	   <h3>Float Books 类别</h3>
							      <li><a href="<%=request.getContextPath()%>/admin/ShowBooksByCategory?category=all">所有Float books</a></li>
							      <!-- 获取图书类别列表，并在下方显示 -->
							      <li><a href="<%=request.getContextPath()%>/admin/ShowBooksByCategory?category=Java家族">Java家族</a></li>
							      <li><a href="<%=request.getContextPath()%>/admin/ShowBooksByCategory?category=C/C++">C/C++</a></li>
							      <li><a href="<%=request.getContextPath()%>/admin/ShowBooksByCategory?category=安卓/IOS">安卓/IOS</a></li>
							      <li><a href="<%=request.getContextPath()%>/admin/ShowBooksByCategory?category=关于Code">关于Code</a></li>
							       <li><a href="<%=request.getContextPath()%>/admin/ShowBooksByCategory?category=服务器/通信">服务器/通信</a></li>
							       <li><a href="<%=request.getContextPath()%>/admin/ShowBooksByCategory?category=数据库技术">数据库技术</a></li>
							       <li><a href="<%=request.getContextPath()%>/admin/ShowBooksByCategory?category=数据处理">数据处理</a></li>
							       <li><a href="<%=request.getContextPath()%>/admin/ShowBooksByCategory?category=用户/产品">用户/产品</a></li>
						  	 </ul>
						</div>					
		  	         </div>
						    <div class="header_bottom_right">					 
						 	    <!------ Slider 大图展示部分 ------------>
								  <div class="slider">
							      	<div class="slider-wrapper theme-default">
							            <div id="slider" class="nivoSlider">
							                <img src="<%=request.getContextPath()%>/images/zhui_feng_zheng_de_ren.jpg" data-thumb="<%=request.getContextPath()%>/images/zhui_feng_zheng_de_ren.jpg" alt="" />
							                <img src="<%=request.getContextPath()%>/images/2.jpg" data-thumb="<%=request.getContextPath()%>/images/2.jpg" alt="" />
							                <img src="<%=request.getContextPath()%>/images/zhui_feng_zheng_de_ren.jpg" data-thumb="<%=request.getContextPath()%>/images/zhui_feng_zheng_de_ren.jpg" alt="" />
							                <img src="<%=request.getContextPath()%>/images/4.jpg" data-thumb="<%=request.getContextPath()%>/images/4.jpg" alt="" />
							                 <img src="<%=request.getContextPath()%>/images/5.jpg" data-thumb="<%=request.getContextPath()%>/images/5.jpg" alt="" />
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
    		<h3>可领养的 Float Books   &nbsp  &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp  &nbsp &nbsp &nbsp  &nbsp &nbsp     <a href="<%=request.getContextPath()%>/admin/ShowBooksByCategory?category=all">更多</a></h3>
    		</div>
    	</div>
	      <div class="section group">
	      <!-- 显示可借的图书的图片、简介、涉及的内容 -->
	      <s:iterator id="topBorrowBook" status="st" value="#request.topBorrowBookList">
	      	
				<div class="grid_1_of_5 images_1_of_5">
				<!-- href="path /app/showDetails?appid=<s:property value='#pro.app_id' />"  -->
				<s:if test="#topBorrowBook.bookImag.length()>0">
					<a href="<%=request.getContextPath()%>/admin/previewBook?isbn=<s:property value='#topBorrowBook.ISBN'/>">
						<img src="<%=request.getContextPath()%>/images/<s:property value='#topBorrowBook.bookImag'/>" alt="" />
					</a>
				</s:if>
				<s:else>
					<a href="<%=request.getContextPath()%>/admin/previewBook?isbn=<s:property value='#topBorrowBook.ISBN'/>">
						<img src="<%=request.getContextPath()%>/images/beauty_and_the_beast.jpg" alt="" />
					</a>
				</s:else>
					<h2><a href="#"><s:property value="#topBorrowBook.bookName" /></a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees"><s:property value="#topBorrowBook.bookCategory" /></span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="<%=request.getContextPath()%>/admin/previewBook?isbn=<s:property value='#topBorrowBook.ISBN'/>">查看</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>					 
				</div>
				</s:iterator>
				<!--  
				-->
			</div>
			
			<div class="content_bottom">
    		<div class="heading">
    		<h3>已被领走的 Float Books</h3>
    		</div>
    	  </div>
			<div class="section group">
			<s:iterator id="topBorrowedOutBook" status="st" value="#request.topBorrowedOutBookList">
				<div class="grid_1_of_5 images_1_of_5">
					<s:if test="#topBorrowedOutBook.bookImag.length()>0">
						<a href="<%=request.getContextPath()%>/admin/previewBook?isbn=<s:property value='#topBorrowedOutBook.ISBN'/>">
							<img src="<%=request.getContextPath()%>/images/<s:property value='#topBorrowedOutBook.bookImag'/>" alt="" />
						</a>
					</s:if>
					<s:else>
					<a href="<%=request.getContextPath()%>/admin/previewBook?isbn=<s:property value='#topBorrowedOutBook.ISBN'/>">
						<img src="<%=request.getContextPath()%>/images/beauty_and_the_beast.jpg" alt="" />
					</a>
				</s:else>
				<h2><a href="#"><s:property value="#topBorrowedOutBook.bookName" /></a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees"><s:property value="#topBorrowedOutBook.bookCategory" /></span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="<%=request.getContextPath()%>/admin/previewBook?isbn=<s:property value='#topBorrowedOutBook.ISBN'/>">查看</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
					 
				</div>
				</s:iterator>
				<!--  
				<div class="grid_1_of_5 images_1_of_5">
					 <a href="previewBook.jsp"><img src="<%=request.getContextPath()%>/images/Eclipse.jpg" alt="" /></a>
					 <h2><a href="previewBook.jsp">Eclipse</a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">$620.87</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="previewBook.jsp">Add to Cart</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
					 
				</div>
				<div class="grid_1_of_5 images_1_of_5">
					<a href="previewBook.jsp"><img src="<%=request.getContextPath()%>/images/Coraline.jpg" alt="" /></a>
					 <h2><a href="previewBook.jsp">Coraline</a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">$899.75</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="previewBook.jsp">Add to Cart</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				    
				</div>
				 
				<div class="grid_1_of_5 images_1_of_5">
					<a href="previewBook.jsp"><img src="./images/Unstoppable.jpg" alt="" /></a>
					 <h2><a href="previewBook.jsp">Unstoppable</a></h2>
					 <div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">$599.00</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="previewBook.jsp">Add to Cart</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>
				</div>
				<div class="grid_1_of_5 images_1_of_5">
					<a href="previewBook.jsp"><img src="./images/Priest.jpg" alt="" /></a>
					 <h2><a href="previewBook.jsp">Priest 3D</a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees">$679.87</span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="previewBook.jsp">Add to Cart</a></h4>
							     </div>
							 <div class="clear"></div>
					 </div>				     
				</div>
				-->
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
							      <li><a href="#" target="_blank"><img src="<%=request.getContextPath()%>/images/linkedin.png" alt="" /></a></li>
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
</body>
</html>

