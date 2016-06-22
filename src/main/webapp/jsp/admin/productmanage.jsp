<%@ page language="java" import="java.util.*" pageEncoding="gb2312" import="colorlife.company.*" %>
<%@ page import="colorlife.category.*" import="colorlife.pubuse.*" import="colorlife.product.*"%>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Firm firm = (Firm)session.getAttribute("firm");//登录时记录商家的ID
Product product = new Product();//定义一个公共接口 
Category category = new Category();
 int tag = 0;
 int detailtag = 0;//显示类别详情的标记  
 int singletag = 0;//显示某个款式详情
List<Product> products = new ArrayList();

//查看所有产品
String firmid = request.getParameter("compid");
if (firmid != null ){
   int fid = firm.getcompanyid();
   products = product.getproducts(fid);//获得所有产品
   tag = 1;
} 
String detag = request.getParameter("detailtag");//如果选择了增加产品类别
if(detag != null && detag.trim().equals("1")){
   detailtag = 1;
   tag=0;
}

String tag1 = request.getParameter("tag1");//单击了查看产品
String productno= null;
if(tag1 != null && tag1.trim().equals("1")){  
   productno = request.getParameter("prodno");  
   singletag = 1;
   
}

//保存新增产品
String add = request.getParameter("addprodt");
if(add != null && add.trim().equals("newprodt")){
  String proname = request.getParameter("name");
  String price = request.getParameter("price");
  String quility = request.getParameter("quility");
  String factory = request.getParameter("factory");
  productno = request.getParameter("style").trim()+request.getParameter("super").trim()+request.getParameter("sub").trim();
  int compid = firm.getcompanyid();
  int index = product.count(compid);
/*产品编号，由款式编号+大类号+小类号+001组成*/

  if(index<9){ productno = productno+"00"+String.valueOf(index+1);}
  else if(index<99){productno = productno+"0"+String.valueOf(index+1);}
  else if(index<999){productno = productno+String.valueOf(index+1);}
  else {System.out.println("产品数量过多");return;}
  
  product.setproductno(productno);
  product.setproductname(proname);
  product.setproductprice(Float.valueOf(price));
  product.setproductquility(quility);
  product.setfactory(factory);
  product.save();
  
  String styleno = request.getParameter("style");
  product.savestyle(styleno);

  Timetrans timetrans = new Timetrans();
  //Date time =  java.sql.Date.valueOf(timetrans.tranDateTodd());
  response.sendRedirect("productmanage.jsp");
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>企业后台管理</title>

<link href="../2011guanke/css/transdmin.css" rel="stylesheet" type="text/css" media="screen" />

<script type="text/javascript" src="../2011guanke/js/jquery.js"></script>
<script type="text/javascript" src="../2011guanke/js/jNice.js"></script>
</head>

<body>
	<div id="wrapper">
    	<h3>&quot;企业后台管理</h3>        
        <ul id="mainNav">
        	<li><a href="../CompanyUser/mall.jsp" class="active">店铺首页</a></li> 
        	<li><a href="../CompanyUser/FirmManage.jsp" class="active">产品款式</a></li>
        	<li><a href="../CompanyUser/productmanage.jsp?compid=<%=firm.getcompanyid() %>">产品管理</a></li>
        	<li><a href="../CompanyUser/productjpg.jsp" class="active">款式图片</a></li>
        	<li><a href="../CompanyUser/productmanage.jsp" class="active">消息发布</a></li>
        	<li class="logout"><a href="../LoginFirm.jsp">退出登录</a></li>
        </ul>    
        <div id="containerHolder">
			<div id="container">
        		<div id="sidebar">
                	<ul class="sideNav">
                    	<li><a href="../CompanyUser/productmanage.jsp?compid=<%=firm.getcompanyid()%>&detailtag=<%=1 %>" class="active">增加产品</a></li>
                    	<li><a href="../CompanyUser/productmanage.jsp">发布活动</a></li>                    
                    </ul>
                </div>

                <h2>产品 &raquo; <a href="../CompanyUser/productmanage.jsp?compid=<%=firm.getcompanyid() %>" class="active">查看所有产品</a></h2>               
                <div id="main">                						
					<% if(tag == 1){ %>
					<h3>查看所有产品</h3>
                    	<table cellpadding="0" cellspacing="0">   
                    	 <tr class="odd" align="center">
                    	   <td>产品名称</td>
                    	   <td>产品价格</td>
                    	   <td>产品规格</td>
                    	   <td>生产厂家</td>
                    	   <td>选择操作</td>
                    	   </tr>
                    	<%for(int i=0;i<products.size();i++){ 
                    	//获得产品数据集 
                    	   Product prodt = products.get(i); 
                    	   
                    	   %>                                      
							<tr class="odd" align="center">
                                <td><%=prodt.getproductname() %></td>
                                <td><%=prodt.getproductprice() %></td>
                                <td><%=prodt.getproductquility() %></td>
                                <td><%=prodt.getfactory() %></td>
                                <td class="action"><a href="../CompanyUser/productmanage.jsp?prodno=<%=prodt.getproductno() %>&tag1=<%=1 %>" class="view">查看</a>
                                <a href="../CompanyUser/category.jsp?styleno=<%=prodt.getproductno() %>&tag1=<%=2 %>" class="delete">下架</a></td>
                            </tr> 
                            <% }  //点击后，传递一个参数到本页，通过参数来判断下面的显示%>                                           
                        </table>                        
                          <%  }  %> 
                        <%if(singletag == 1){ //单击查看产品细节  %>                         
                        <jsp:include page="../CompanyUser/productshow.jsp"> 
                             <jsp:param   name= "productno"   value= "<%=productno %>" />                                                                   
                        </jsp:include>
                        <% }  %>
                        <% if(detailtag == 1){ %>        
                <form action="../CompanyUser/productmanage.jsp"  method="post">
                  <input type="hidden" value="newprodt" name="addprodt"/>
					<h3>添加产品</h3>
                    	<fieldset>
                        	<p><label>产品大类:</label>
                            <select name="super">
                            	<option value="01">服装</option>
                            	<option value="02">体育用品</option>
                            </select>
                            </p>
                            <p><label>产品小类:</label>
                            <select name="sub">
                            	<option value="01">上衣</option>
                            	<option value="02">裤子</option>
                            	<option value="03">帽子</option>
                            	<option value="04">鞋</option>
                            	<option value="11">球类</option>
                            	<option value="12">球拍类</option>
                            	<option value="13">球桌类</option>
                            	<option value="14">健身器材类</option>
                            </select>
                            </p>
                            <p><label>产品名称：</label><input type="text" name="name" class="text-long" /></p>
                            <p><label>所属款式：</label>
                            <select name="style">
                            <% List<Category> categorys = new ArrayList();
                               categorys =category.getstyles(firm.getcompanyid()); 
                              for(int i=0;i<categorys.size();i++){
                              Category c = categorys.get(i);                                                                                
			                  %>
			                    <option value="<%=c.getproductstyleno()%>"><%=c.getstyle()%></option>
			               <%  }  %>                                                                                      
                            </select></p>
                            <p><label>产品规格(尺寸/颜色)：</label><input type="text" name="quility" class="text-long" /></p>
                            <p><label>产品售价：</label><input type="text" name="price" class="text-long" /></p>
                            <p><label>生产厂家:</label><input type="text" name="factory" class="text-long" /></p>                        
                        	
                            <input type="submit" value="提 交 产 品 款 式" />
                        </fieldset>
                    </form>
                    <%  }  %>
                </div>
                
                <div class="clear"></div>
            </div>
        </div>	      
         </div>
</body>
</html>
