<%@ page language="java" import="java.util.*" pageEncoding="gb2312" import="colorlife.company.*" %>
<%@ page import="colorlife.category.*" import="colorlife.pubuse.*" import="colorlife.product.*"%>
<%
request.setCharacterEncoding("GBK");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Firm firm = (Firm)session.getAttribute("firm");//��¼ʱ��¼�̼ҵ�ID
Product product = new Product();//����һ�������ӿ� 
Category category = new Category();
 int tag = 0;
 int detailtag = 0;//��ʾ�������ı��  
 int singletag = 0;//��ʾĳ����ʽ����
List<Product> products = new ArrayList();

//�鿴���в�Ʒ
String firmid = request.getParameter("compid");
if (firmid != null ){
   int fid = firm.getcompanyid();
   products = product.getproducts(fid);//������в�Ʒ
   tag = 1;
} 
String detag = request.getParameter("detailtag");//���ѡ�������Ӳ�Ʒ���
if(detag != null && detag.trim().equals("1")){
   detailtag = 1;
   tag=0;
}

String tag1 = request.getParameter("tag1");//�����˲鿴��Ʒ
String productno= null;
if(tag1 != null && tag1.trim().equals("1")){  
   productno = request.getParameter("prodno");  
   singletag = 1;
   
}

//����������Ʒ
String add = request.getParameter("addprodt");
if(add != null && add.trim().equals("newprodt")){
  String proname = request.getParameter("name");
  String price = request.getParameter("price");
  String quility = request.getParameter("quility");
  String factory = request.getParameter("factory");
  productno = request.getParameter("style").trim()+request.getParameter("super").trim()+request.getParameter("sub").trim();
  int compid = firm.getcompanyid();
  int index = product.count(compid);
/*��Ʒ��ţ��ɿ�ʽ���+�����+С���+001���*/

  if(index<9){ productno = productno+"00"+String.valueOf(index+1);}
  else if(index<99){productno = productno+"0"+String.valueOf(index+1);}
  else if(index<999){productno = productno+String.valueOf(index+1);}
  else {System.out.println("��Ʒ��������");return;}
  
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
<title>��ҵ��̨����</title>

<link href="../2011guanke/css/transdmin.css" rel="stylesheet" type="text/css" media="screen" />

<script type="text/javascript" src="../2011guanke/js/jquery.js"></script>
<script type="text/javascript" src="../2011guanke/js/jNice.js"></script>
</head>

<body>
	<div id="wrapper">
    	<h3>&quot;��ҵ��̨����</h3>        
        <ul id="mainNav">
        	<li><a href="../CompanyUser/mall.jsp" class="active">������ҳ</a></li> 
        	<li><a href="../CompanyUser/FirmManage.jsp" class="active">��Ʒ��ʽ</a></li>
        	<li><a href="../CompanyUser/productmanage.jsp?compid=<%=firm.getcompanyid() %>">��Ʒ����</a></li>
        	<li><a href="../CompanyUser/productjpg.jsp" class="active">��ʽͼƬ</a></li>
        	<li><a href="../CompanyUser/productmanage.jsp" class="active">��Ϣ����</a></li>
        	<li class="logout"><a href="../LoginFirm.jsp">�˳���¼</a></li>
        </ul>    
        <div id="containerHolder">
			<div id="container">
        		<div id="sidebar">
                	<ul class="sideNav">
                    	<li><a href="../CompanyUser/productmanage.jsp?compid=<%=firm.getcompanyid()%>&detailtag=<%=1 %>" class="active">���Ӳ�Ʒ</a></li>
                    	<li><a href="../CompanyUser/productmanage.jsp">�����</a></li>                    
                    </ul>
                </div>

                <h2>��Ʒ &raquo; <a href="../CompanyUser/productmanage.jsp?compid=<%=firm.getcompanyid() %>" class="active">�鿴���в�Ʒ</a></h2>               
                <div id="main">                						
					<% if(tag == 1){ %>
					<h3>�鿴���в�Ʒ</h3>
                    	<table cellpadding="0" cellspacing="0">   
                    	 <tr class="odd" align="center">
                    	   <td>��Ʒ����</td>
                    	   <td>��Ʒ�۸�</td>
                    	   <td>��Ʒ���</td>
                    	   <td>��������</td>
                    	   <td>ѡ�����</td>
                    	   </tr>
                    	<%for(int i=0;i<products.size();i++){ 
                    	//��ò�Ʒ���ݼ� 
                    	   Product prodt = products.get(i); 
                    	   
                    	   %>                                      
							<tr class="odd" align="center">
                                <td><%=prodt.getproductname() %></td>
                                <td><%=prodt.getproductprice() %></td>
                                <td><%=prodt.getproductquility() %></td>
                                <td><%=prodt.getfactory() %></td>
                                <td class="action"><a href="../CompanyUser/productmanage.jsp?prodno=<%=prodt.getproductno() %>&tag1=<%=1 %>" class="view">�鿴</a>
                                <a href="../CompanyUser/category.jsp?styleno=<%=prodt.getproductno() %>&tag1=<%=2 %>" class="delete">�¼�</a></td>
                            </tr> 
                            <% }  //����󣬴���һ����������ҳ��ͨ���������ж��������ʾ%>                                           
                        </table>                        
                          <%  }  %> 
                        <%if(singletag == 1){ //�����鿴��Ʒϸ��  %>                         
                        <jsp:include page="../CompanyUser/productshow.jsp"> 
                             <jsp:param   name= "productno"   value= "<%=productno %>" />                                                                   
                        </jsp:include>
                        <% }  %>
                        <% if(detailtag == 1){ %>        
                <form action="../CompanyUser/productmanage.jsp"  method="post">
                  <input type="hidden" value="newprodt" name="addprodt"/>
					<h3>��Ӳ�Ʒ</h3>
                    	<fieldset>
                        	<p><label>��Ʒ����:</label>
                            <select name="super">
                            	<option value="01">��װ</option>
                            	<option value="02">������Ʒ</option>
                            </select>
                            </p>
                            <p><label>��ƷС��:</label>
                            <select name="sub">
                            	<option value="01">����</option>
                            	<option value="02">����</option>
                            	<option value="03">ñ��</option>
                            	<option value="04">Ь</option>
                            	<option value="11">����</option>
                            	<option value="12">������</option>
                            	<option value="13">������</option>
                            	<option value="14">����������</option>
                            </select>
                            </p>
                            <p><label>��Ʒ���ƣ�</label><input type="text" name="name" class="text-long" /></p>
                            <p><label>������ʽ��</label>
                            <select name="style">
                            <% List<Category> categorys = new ArrayList();
                               categorys =category.getstyles(firm.getcompanyid()); 
                              for(int i=0;i<categorys.size();i++){
                              Category c = categorys.get(i);                                                                                
			                  %>
			                    <option value="<%=c.getproductstyleno()%>"><%=c.getstyle()%></option>
			               <%  }  %>                                                                                      
                            </select></p>
                            <p><label>��Ʒ���(�ߴ�/��ɫ)��</label><input type="text" name="quility" class="text-long" /></p>
                            <p><label>��Ʒ�ۼۣ�</label><input type="text" name="price" class="text-long" /></p>
                            <p><label>��������:</label><input type="text" name="factory" class="text-long" /></p>                        
                        	
                            <input type="submit" value="�� �� �� Ʒ �� ʽ" />
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
