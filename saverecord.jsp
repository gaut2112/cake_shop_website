<%@ page language="java" import="java.sql.*" errorPage="" %>
<%
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake_shop","root", "");
PreparedStatement psInsertRecord=null;
String sqlInsertRecord=null;
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("txtemail");
String pass=request.getParameter("pass");
String birthdate=request.getParameter("dd")+"/"+request.getParameter("mm")+"/"+request.getParameter("yyyy");
//Date bday=new Date();
//// if this come blank and alpha number it will throw parse int
//NumberFormatException exception, only number
try
{
sqlInsertRecord="insert into user_details (first_name, last_name, email, password,birthdate) values(?,?,?,?,?)";
psInsertRecord=conn.prepareStatement(sqlInsertRecord);
psInsertRecord.setString(1,fname);
psInsertRecord.setString(2,lname);
psInsertRecord.setString(3,email);
psInsertRecord.setString(4,pass);
psInsertRecord.setString(5,birthdate);
psInsertRecord.executeUpdate();
}
catch(Exception e)
{
out.println(e);
e.printStackTrace();
//response.sendRedirect("signup.jsp");//// On error it will send back to addRecord.jsp page
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
                Congratulations <%=  fname%> you are now a registered user at this site.
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
</div>
</body>
</html>