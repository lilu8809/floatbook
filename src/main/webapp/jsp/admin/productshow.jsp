<%@ page language="java" import="java.util.*" pageEncoding="gb2312" import="colorlife.company.*" %>
<%@ page import="colorlife.category.*" import="colorlife.pubuse.*" import="colorlife.product.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String productno = request.getParameter("productno");

detailproduct product= new detailproduct();//设置一个公共接口 
if(productno != null ){
      product = product.singleproduct(productno);//获得确定id的产品及其款式 详情
      
}

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">      
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="../2011guanke/css/transdmin.css" rel="stylesheet" type="text/css" media="screen" />
	
  </head>
   <body>
   <div id="main">
   <table cellpadding="0" cellspacing="0">   
       <tr class="odd" align="center">
           <td>产品名称</td>
           <td>产品价格</td>
           <td>产品规格</td>
           <td>生产厂家</td>
           <td>产品款式</td>
           <td>材料</td>
           <td>选择操作</td>
       </tr>
   <tr class="odd" align="center">
   <td><%=product.getproductname() %></td>
   <td><%=product.getproductprice() %></td>
   <td><%=product.getproductquility() %></td>
   <td><%=product.getfactory() %></td>
   <td><%=product.getstyle() %></td>
   <td><%=product.getmaterials() %></td>
    <td class="action"><a href="../CompanyUser/product.jsp?productno=<%=product.getproductno() %>&tag1=<%=2 %>" class="delete">下架</a></td>   
   </div>
  </body>
</html>
