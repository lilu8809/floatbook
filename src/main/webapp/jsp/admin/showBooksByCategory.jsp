<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Float Books</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="<%=request.getContextPath()%>/css/styleadmin.css" rel="stylesheet" type="text/css" media="all"/>
<link href="<%=request.getContextPath()%>/css/slider.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.0.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/js/move-top.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easing.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.nivo.slider.js"></script>
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
								<c:if test='<%=(session.getAttribute("user")!=null) %>'>
				       			欢迎 ${user.username }
								</c:if>	
								<c:if test='<%=(session.getAttribute("user")==null) %>'>
								 	<a href="<%=request.getContextPath()%>/common/login.jsp">要不要先登录再来啊-_-#</a>
								</c:if>
							</a>
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
							<li><a href="<%=request.getContextPath()%>/admin/adminMain.jsp">芝麻关门</a></li><!-- 退出系统，清除session -->
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
    		
    		<h3>当前类别：${book_category}
    		</h3>
    		</div>
    	</div>
	      <div class="section group">
	      <!-- 显示可借的图书的图片、简介、涉及的内容 -->
	  <s:if test="#request.booksList.size()>0">
	      <s:iterator id="book" status="st" value="#request.booksList">
	      	
				<div class="grid_1_of_5 images_1_of_5">
				<!-- href="path /app/showDetails?appid=<s:property value='#pro.app_id' />"  -->
				<s:if test="#book.bookImag.length()>0">
					<a href="<%=request.getContextPath()%>/admin/previewBook?isbn=<s:property value='#book.ISBN'/>">
						<img src="<%=request.getContextPath()%>/images/<s:property value='#book.bookImag'/>" alt="" />
					</a>
				</s:if>
				<s:else>
					<a href="<%=request.getContextPath()%>/admin/previewBook?isbn=<s:property value='#book.ISBN'/>">
						<img src="<%=request.getContextPath()%>/images/beauty_and_the_beast.jpg" alt="" />
					</a>
				</s:else>
					<h2><a href="#"><s:property value="#book.bookName" /></a></h2>
					<div class="price-details">
				       <div class="price-number">
							<p><span class="rupees"><s:property value="#book.bookCategory" /></span></p>
					    </div>
					       		<div class="add-cart">								
									<h4><a href="<%=request.getContextPath()%>/admin/previewBook?isbn=<s:property value='#book.ISBN'/>">查看</a></h4>
							     </div>
							 <div class="clear"></div>
					</div>					 
				</div>
				</s:iterator>
		</s:if>
		<s:else>
			<h2>艾玛，还没有存入这个类型的书嘞，改天来找呗 ……(*^o^*)</h2>
		</s:else>
				<!--  
				-->
			</div>
			<!--  
			<div class="content_bottom">
    		<div class="heading">
    		<h3>已被领走的 Float Books</h3>
    		</div>
    	  </div>
    	  
			<div class="section group">
			<%for(int i=0; i<10; i++){  %>
				<div class="grid_1_of_5 images_1_of_5">
					 <a href="previewBook.jsp"><img src="<%=request.getContextPath()%>/images/beauty_and_the_beast.jpg" alt="" /></a>
					 <h2><a href="previewBook.jsp">Beauty and the beast</a></h2>
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
				<%} %>
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
				
			</div>
			-->
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
				<p>Company Name 李禄-Float All rights Reseverd | Design by  李禄 </p>
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

