<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>编辑Float Books</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="<%=request.getContextPath()%>/css/styleadmin.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.9.0.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/js/move-top.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easing.js"></script>

<script type="text/javascript">
function show_date_string(elementId){
	var date_string = document.getElementById(elementId).value.toString();
	if(date_string.length > 0){
		document.getElementById(elementId).value="";
	}else{
		document.getElementById(elementId).value="19710901";
	}
}

function check_date(elementId){
	var date_string = document.getElementById(elementId).value.toString();
	if(date_string.length == 0){
		document.getElementById(elementId).value="19710901";
	}
}
//去除空格
function trim(str) {
	  return str.replace(/(^\s+)|(\s+$)/g, "");
	}
//将select的值给 input	
function select2input(val){
	//alert(val);
	document.getElementById("category").value = val;
}

//判断是否输入信息完整,判断带*号的字段
function beforeSubmit(){
	var book_name =    trim(document.getElementByName(book_name).value.toString());
	var date_string =  trim(document.getElementByName(date_string).value.toString());
	var book_category= trim(document.getElementByName(book_category).value.toString());
	var book_count=    trim(document.getElementByName(book_count).value.toString());
	var useful=        trim(document.getElementByName(useful).value.toString());
	var store_place=   trim(document.getElementByName(store_place).value.toString());
	var introduce=     trim(document.getElementByName(introduce).value.toString());
	
	
	if(book_name.length<=0 || date_string.length<=0 || book_category.length<=0 || book_count.length<=0 ||
	   useful.length<=0 || store_place.length<=0 || introduce.length<=0	)
	{
		alert("带 * 号的内容不能为空");
		return null;
	}
	if((null == request.getSession().getAttribute("user") ) || (request.getSession().getAttribute("user").equals("null"))){
		alert("身份可疑，不让你进！");
		return null;
	}
	else{
		document.bookinfo.submit();//输入内容完整，可提交
	}
}

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
								要不要先注册再来啊-_-#
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
     <div class="content">
     	<div class="content_top">
    		<div class="back-links">
    		<p><a href="index.html">Home</a> &gt;&gt;&gt;&gt; <a href="#" class="active">添加书目</a></p>
    	    </div>
    		<div class="clear"></div>
    	</div>
    	<div class="section group">
				<div class="col span_2_of_3">
				  <div class="contact-form">
				  	<h2>编辑Float Book</h2>
					    <form  id="bookinfo" name="bookinfo" method="post" action="<%=request.getContextPath()%>/admin/savebook">
					    	<div>
						    	<span><label>书名 *</label></span>
						    	<span><input name="book_name" type="text" class="textbox" value="<s:property value='#request.book.bookName'/>"></span>
						    </div>
						    <div>
						    	<span><label>ISBN号</label></span>
						    	<span><input name="ISBN" type="text" class="textbox" value="<s:property value='#request.book.ISBN'/>"></span>
						    </div>
						    <div>
						     	<span><label>作者</label></span>
						    	<span><input name="author" type="text" class="textbox" onflur="checkISBN()" value="<s:property value='#request.book.author'/>"></span>
						    </div>
						    <div>
						    	<span><label>出版日期 *(YYYYMMDD)</label></span>
						    	<span><input id="date_string" name="date_string"  type="text" class="textbox" 
						    	 value="<s:property value='#request.book.dateString'/>" >
						    	</span>
						    
						    </div>
						    <div>
						    
						    	<span><label>所属类别 *</label></span>
						    	<span>
						    	 <select name="book_category" onchange="select2input(this[selectedIndex].value);">
						    	 
						    		<option id="Java" >Java家族</option>
						    		<option id="C" >C/C++</option>
						    		<option id="AI">安卓/IOS</option>
						    		<option id="code">关于Code</option>
						    		<option id="cs">服务器/通信</option>
						    		<option id="db">数据库技术</option>
						    		<option id="dp">数据处理</option>
						    		<option id="up">用户/产品</option>
						    		</select>
						    	<input id="category" name="book_new_category" type="text" class="textbox" value="<s:property value='#request.book.bookCategory'/>" /></span><!-- <s:property value='#request.book.bookCategory'/> -->
						    </div>
						    <div>
						     	<span><label>收藏数量 *</label></span>
						    	<span><input name="book_count" type="text" class="textbox" value="<s:property value='#request.book.bookCount'/>"></span>
						    </div>
						    <div>
						    	<span><label>还剩多少? *</label></span>
						    	<span><input name="useful" type="text" class="textbox" value="<s:property value='#request.book.bookUseful'/>"></span>
						    </div>
						    <div>
						    	<span><label>书在哪里? *</label></span>
						    	<span><input name="store_place" type="text" class="textbox" value="<s:property value='#request.book.storePlace'/>"></span>
						    </div>
						     <div>
						     	<span><label>哪天放进来的?(YYYYMMDD)</label></span>
						    	<span><input id="store_date" name="store_date"  type="text" class="textbox" 
						    	 value="<s:property value='#request.book.storeDate'/>">
						    	</span>
						    </div>
						    <div>
						    	<span><label>封面图片</label></span>
						    	<span><input name="book_imag" type="text" class="textbox" value="<s:property value='#request.book.bookImag'/>"></span>
						    </div>
						    <div>
						    	<span><label>摘要简介 *</label></span>
						    	<span><textarea name="introduce"><s:property value='#request.book.bookintroduce'/> </textarea></span>
						    </div>
						   <div>
						   		<span><input type="submit" value="保存Book"  class="mybutton" onclick="beforeSubmit()"></span>
						  </div>
					    </form>
				  </div>
  				</div>
				<div class="col span_1_of_3">
					<div class="contact_info">
    	 				<h2>Books封面</h2>
					    	  <div class="map">
							   	    <!--  <iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265&amp;output=embed"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#888;text-align:left;font-size:0.85em">View Larger Map</a></small>
							 --> </div>
      				</div>
      			<div class="company_address">
				     	<h2>添加Books时,注意噢:</h2>
						    	<p>输入项目后面加了 * 号的,是必填的;</p>
						   		<p>其他的信息，就看心情啦;</p>
						   		<p>但为了让小伙伴们好找；</p>
				   		<p>还是尽量保持信息丰富有内涵哈 ^_^</p>
				   		<!--  <p>Fax: (000) 000 00 00 0</p>
				 	 	<p>Email: <span><a href="#">info(at)mycompany.com</a></span></p>
				   		<p>Follow on: <span><a href="#">Facebook</a></span>, <span><a href="#">Twitter</a></span></p>
				  -->
				   </div>
				 </div>
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
							      <li><a href="#" target="_blank"><img src="./images/facebook.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"><img src="./images/twitter.png" alt="" /></a></li>
							      <li><a href="#" target="_blank"><img src="./images/skype.png" alt="" /> </a></li>
							      <li><a href="#" target="_blank"> <img src="./images/linkedin.png" alt="" /></a></li>
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

