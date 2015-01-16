<%@ page language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Celebrate all occasions with US!!!</title>
<link href="style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="wrapper">
	<div id="menu">
		<ul>
			<li><a href="index.jsp">Home</a></li>
			<li><a href="Delivery.html">Delivery</a></li>
			<li><a href="About.html">About</a></li>
			<li><a href="Links.html">Links</a></li>
			<li><a href="Contact.html">Contact</a></li>
		</ul>
		
	</div>
	<div id="header">
		<div id="logo">
			<h1><a href="#">Celebrate all occasions with US!!!</a></h1>
		</div>
	</div>
	
	<!-- end #header -->
				<table>
				<tr>
				<td width="300">
				<div id="sidebar">
					<ul>
						<li>
							<h2>Wedding Cakes</h2>
							<ul>
								<li><a href="traditional.jsp">Traditional</a></li>
								<li><a href="contemporary.jsp">Contemporary</a></li>
								<li><a href="chocolate.jsp">Chocolate</a></li>
								<li><a href="novelty.jsp">Novelty</a></li>
							</ul>
						</li>
						<li>
							<h2>Celebration Cakes</h2>
							<ul>
								<li><a href="men.jsp">Cakes for men</a></li>
								<li><a href="women.jsp">Cakes for women</a></li>
								<li><a href="anni.jsp">Anniversary</a></li>
								<li><a href="graduation.jsp">Graduation</a></li>
								<li><a href="children.jsp">Childrens birthday</a></li>
							</ul>
						</li>
					</ul>
				</div>
				</td>
				<td>
				<div id="regform">
<%
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake_shop","root", "");
PreparedStatement psInsertRecord=null;
String con_name=null;
String email_id=null;
String reg=null;
try{
String sqlInsertRecord=null;
if(session.getAttribute("name")==null){
con_name=request.getParameter("con_name");
email_id=request.getParameter("txtemail");
reg=new String("reg");
}
else{
con_name=session.getAttribute("name").toString();
email_id=session.getAttribute("email").toString();
reg=new String("unreg");
}
String con_no=request.getParameter("con_no");
String add=request.getParameter("add");
String c1_name=null;
String c2_name=null;
String c3_name=null;
String c4_name=null;
String c5_name=null;
String c6_name=null;
String c7_name=null;
String c1_qty=null;
String c2_qty=null;
String c3_qty=null;
String c4_qty=null;
String c5_qty=null;
String c6_qty=null;
String c7_qty=null;
if(session.getAttribute("item1")!=null){
c1_name=session.getAttribute("item1_name").toString();
c1_qty=session.getAttribute("item1_qty").toString();
}
if(session.getAttribute("item2")!=null){
c2_name=session.getAttribute("item2_name").toString();
c2_qty=session.getAttribute("item2_qty").toString();
}
if(session.getAttribute("item3")!=null){
c3_name=session.getAttribute("item3_name").toString();
c3_qty=session.getAttribute("item3_qty").toString();
}
if(session.getAttribute("item4")!=null){
c4_name=session.getAttribute("item4_name").toString();
c4_qty=session.getAttribute("item4_qty").toString();
}
if(session.getAttribute("item5")!=null){
c5_name=session.getAttribute("item5_name").toString();
c5_qty=session.getAttribute("item5_qty").toString();
}
if(session.getAttribute("item6")!=null){
c6_name=session.getAttribute("item6_name").toString();
c6_qty=session.getAttribute("item6_qty").toString();
}
if(session.getAttribute("item7")!=null){
c7_name=session.getAttribute("item7_name").toString();
c7_qty=session.getAttribute("item7_qty").toString();
}
String total=session.getAttribute("total").toString();
sqlInsertRecord="insert into bill_details (reg,email_id,name,contact_num,address,c1_name,c1_qty,c2_name,c2_qty,c3_name,c3_qty,c4_name,c4_qty,c5_name,c5_qty,c6_name,c6_qty,c7_name,c7_qty,total) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
psInsertRecord=conn.prepareStatement(sqlInsertRecord);
//psInsertRecord.setString(1,billno);
psInsertRecord.setString(1,reg);
psInsertRecord.setString(2,email_id);
psInsertRecord.setString(3,con_name);
psInsertRecord.setString(4,con_no);
psInsertRecord.setString(5,add);
psInsertRecord.setString(6,c1_name);
psInsertRecord.setString(7,c1_qty);
psInsertRecord.setString(8,c2_name);
psInsertRecord.setString(9,c2_qty);
psInsertRecord.setString(10,c3_name);
psInsertRecord.setString(11,c3_qty);
psInsertRecord.setString(12,c4_name);
psInsertRecord.setString(13,c4_qty);
psInsertRecord.setString(14,c5_name);
psInsertRecord.setString(15,c5_qty);
psInsertRecord.setString(16,c6_name);
psInsertRecord.setString(17,c6_qty);
psInsertRecord.setString(18,c7_name);
psInsertRecord.setString(19,c7_qty);
psInsertRecord.setString(20,total);
psInsertRecord.executeUpdate();
}
catch(Exception e)
{
out.println(e);
e.printStackTrace();
//response.sendRedirect("order.jsp");//// On error it will send back to addRecord.jsp page
}
try{if(psInsertRecord!=null)
{
psInsertRecord.close();
}
if(conn!=null)
{
conn.close();
}
}
catch(Exception e)
{
e.printStackTrace();
}
%>
                Congratulations <%=  con_name%>,you have submitted the form succesfully.
                </div>
				</td></tr>
			</table>
				<!-- end #sidebar -->
				<div style="clear: both;">&nbsp;</div>
			</div>
		</div>
	</div>
	<!-- end #page -->
</div>

	<div id="footer">
		<p>Copyright (c) 2011 thecakeshop.com. All rights reserved.</p>
	</div>
	<!-- end #footer -->
	<%
	session.setAttribute("item1",null);
	session.setAttribute("item1_qty",null);
	session.setAttribute("item1_code",null);
	session.setAttribute("item1_name",null);
    session.setAttribute("item2",null);
	session.setAttribute("item2_qty",null);
	session.setAttribute("item2_code",null);
	session.setAttribute("item2_name",null);
	session.setAttribute("item3",null);
	session.setAttribute("item3_qty",null);
	session.setAttribute("item3_code",null);
	session.setAttribute("item3_name",null);
	session.setAttribute("item4",null);
	session.setAttribute("item4_qty",null);
	session.setAttribute("item4_code",null);
	session.setAttribute("item4_name",null);
	session.setAttribute("item5",null);
	session.setAttribute("item5_qty",null);
	session.setAttribute("item5_code",null);
	session.setAttribute("item5_name",null);
	session.setAttribute("item6",null);
	session.setAttribute("item6_qty",null);
	session.setAttribute("item6_code",null);
	session.setAttribute("item6_name",null);
	session.setAttribute("item7",null);
	session.setAttribute("item7_qty",null);
	session.setAttribute("item7_code",null);
	session.setAttribute("item7_name",null);
	session.setAttribute("total","0");
	session.setAttribute("count","0");
	%>
</div>
</body>
</html>