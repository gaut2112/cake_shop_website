<%@ page language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>celebrate all occasions with us!!!</title>
<link href="style.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="jquery.js"></script>
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

		<% if (session.getAttribute("name")==null){%>
		<div id="form">
		<form action="index1.jsp">
		<div id="box1">
		Email<br/>
		<input type="text" name="email" />
		</div>
		<div id="box2">
		Password<br/>
		<input type="password" name="password" />
		</div>
		<div id="box3">
		<br/>
		<input type="submit" name="login" value="Login"/>
		</div>
		</form>
		</div>
	</div>
        <div  id="reg">
		New User? <a href="signup.jsp">Click here to register!</a>
		</div>
		<%} else { %>
		</div>
		<div  id="reg">
		Welcome <%= session.getAttribute("name")%> | <a href="logout.jsp">logout</a>
		</div>
		<% } %>
	<div id="header">
		<div id="logo">
			<h1><a href="#">celebrate all occasions with us!!!</a></h1>
		</div>
	</div>
	<div id="panel1">
    <table>
	<tr id="panelh">
	<th width="150" align="left"> Cake Name</th>
	<th width="100"> Cake Code</th>
	<th width="100"> Cake Qty</th>
	<th width="100"> Cake Rate</th>
	<th width="100"> Price    </th>
	</tr>
	<%
    if(session.getAttribute("item2")!=null)
    {
	Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake_shop","root", "");
	String sqlSelectRecord=null;
	PreparedStatement psSelectRecord=null;
    ResultSet rsSelectRecord=null;
	sqlSelectRecord ="SELECT  *FROM cake_details WHERE cake_code=?";
	psSelectRecord=conn.prepareStatement(sqlSelectRecord);
    psSelectRecord.setString(1,session.getAttribute("item2").toString());
    rsSelectRecord=psSelectRecord.executeQuery();
	rsSelectRecord.next();
	session.setAttribute("item2_rate",rsSelectRecord.getString("cake_rate"));
	session.setAttribute("item2_name",rsSelectRecord.getString("cake_name"));
	session.setAttribute("item2_price",Integer.parseInt(session.getAttribute("item2_rate").toString())*Integer.parseInt(session.getAttribute("item2_qty").toString()));
	%>
	<tr><form>
	<td align="left"><%= session.getAttribute("item2_name")%></td>
	<td align="center"><%= session.getAttribute("item2")%></td>
	<td align="center"><%= session.getAttribute("item2_qty")%></td>
	<td align="center"><%= session.getAttribute("item2_rate")%></td>
	<td align="center"><%= session.getAttribute("item2_price")%></td>
	<td><input type="submit" name="Remove2" value="Remove"/></td>
	</form>
	</tr>
	<% } %>
	<%
    if(session.getAttribute("item3")!=null)
    {
	Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake_shop","root", "");
	String sqlSelectRecord=null;
	PreparedStatement psSelectRecord=null;
    ResultSet rsSelectRecord=null;
	sqlSelectRecord ="SELECT  *FROM cake_details WHERE cake_code=?";
	psSelectRecord=conn.prepareStatement(sqlSelectRecord);
    psSelectRecord.setString(1,session.getAttribute("item3").toString());
    rsSelectRecord=psSelectRecord.executeQuery();
	rsSelectRecord.next();
	session.setAttribute("item3_rate",rsSelectRecord.getString("cake_rate"));
	session.setAttribute("item3_name",rsSelectRecord.getString("cake_name"));	
	session.setAttribute("item3_price",Integer.parseInt(session.getAttribute("item3_rate").toString())*Integer.parseInt(session.getAttribute("item3_qty").toString()));
	%>
	<tr>
	<form>
	<td align="left"><%= session.getAttribute("item3_name")%></td>
	<td align="center"><%= session.getAttribute("item3")%></td>
	<td align="center"><%= session.getAttribute("item3_qty")%></td>
	<td align="center"><%= session.getAttribute("item3_rate")%></td>
	<td align="center"><%= session.getAttribute("item3_price")%></td>
	<td><input type="submit" name="Remove3" value="Remove"/></td>
	</form>
	</tr>
	<% } %>
	<%
    if(session.getAttribute("item4")!=null)
    {
	Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake_shop","root", "");
	String sqlSelectRecord=null;
	PreparedStatement psSelectRecord=null;
    ResultSet rsSelectRecord=null;
	sqlSelectRecord ="SELECT  *FROM cake_details WHERE cake_code=?";
	psSelectRecord=conn.prepareStatement(sqlSelectRecord);
    psSelectRecord.setString(1,session.getAttribute("item4").toString());
    rsSelectRecord=psSelectRecord.executeQuery();
	rsSelectRecord.next();
	session.setAttribute("item4_rate",rsSelectRecord.getString("cake_rate"));
	session.setAttribute("item4_name",rsSelectRecord.getString("cake_name"));	
	session.setAttribute("item4_price",Integer.parseInt(session.getAttribute("item4_rate").toString())*Integer.parseInt(session.getAttribute("item4_qty").toString()));
	%>
	<tr>
	<form>
	<td align="left"><%= session.getAttribute("item4_name")%></td>
	<td align="center"><%= session.getAttribute("item4")%></td>
	<td align="center"><%= session.getAttribute("item4_qty")%></td>
	<td align="center"><%= session.getAttribute("item4_rate")%></td>
	<td align="center"><%= session.getAttribute("item4_price")%></td>
	<td><input type="submit" name="Remove4" value="Remove"/></td>
	</form>
	</tr>
	<% } %>
	<%
    if(session.getAttribute("item5")!=null)
    {
	Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake_shop","root", "");
	String sqlSelectRecord=null;
	PreparedStatement psSelectRecord=null;
    ResultSet rsSelectRecord=null;
	sqlSelectRecord ="SELECT  *FROM cake_details WHERE cake_code=?";
	psSelectRecord=conn.prepareStatement(sqlSelectRecord);
    psSelectRecord.setString(1,session.getAttribute("item5").toString());
    rsSelectRecord=psSelectRecord.executeQuery();
	rsSelectRecord.next();
	session.setAttribute("item5_rate",rsSelectRecord.getString("cake_rate"));
	session.setAttribute("item5_name",rsSelectRecord.getString("cake_name"));	
	session.setAttribute("item5_price",Integer.parseInt(session.getAttribute("item5_rate").toString())*Integer.parseInt(session.getAttribute("item5_qty").toString()));
	%>
	<tr>
	<form>
	<td align="left"><%= session.getAttribute("item5_name")%></td>
	<td align="center"><%= session.getAttribute("item5")%></td>
	<td align="center"><%= session.getAttribute("item5_qty")%></td>
	<td align="center"><%= session.getAttribute("item5_rate")%></td>
	<td align="center"><%= session.getAttribute("item5_price")%></td>
	<td><input type="submit" name="Remove5" value="Remove"/></td>
	</form>
	</tr>
	<% } %>
	<%
    if(session.getAttribute("item6")!=null)
    {
	Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake_shop","root", "");
	String sqlSelectRecord=null;
	PreparedStatement psSelectRecord=null;
    ResultSet rsSelectRecord=null;
	sqlSelectRecord ="SELECT  *FROM cake_details WHERE cake_code=?";
	psSelectRecord=conn.prepareStatement(sqlSelectRecord);
    psSelectRecord.setString(1,session.getAttribute("item6").toString());
    rsSelectRecord=psSelectRecord.executeQuery();
	rsSelectRecord.next();
	session.setAttribute("item6_rate",rsSelectRecord.getString("cake_rate"));
	session.setAttribute("item6_name",rsSelectRecord.getString("cake_name"));	
	session.setAttribute("item6_price",Integer.parseInt(session.getAttribute("item6_rate").toString())*Integer.parseInt(session.getAttribute("item6_qty").toString()));
	%>
	<tr>
	<form>
	<td align="left"><%= session.getAttribute("item6_name")%></td>
	<td align="center"><%= session.getAttribute("item6")%></td>
	<td align="center"><%= session.getAttribute("item6_qty")%></td>
	<td align="center"><%= session.getAttribute("item6_rate")%></td>
	<td align="center"><%= session.getAttribute("item6_price")%></td>
	<td><input type="submit" name="Remove6" value="Remove"/></td>
	</form>
	</tr>
	<% } %>
	<%
    if(session.getAttribute("item7")!=null)
    {
	Connection conn = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cake_shop","root", "");
	String sqlSelectRecord=null;
	PreparedStatement psSelectRecord=null;
    ResultSet rsSelectRecord=null;
	sqlSelectRecord ="SELECT  *FROM cake_details WHERE cake_code=?";
	psSelectRecord=conn.prepareStatement(sqlSelectRecord);
    psSelectRecord.setString(1,session.getAttribute("item7").toString());
    rsSelectRecord=psSelectRecord.executeQuery();
	rsSelectRecord.next();
	session.setAttribute("item7_rate",rsSelectRecord.getString("cake_rate"));
	session.setAttribute("item7_name",rsSelectRecord.getString("cake_name"));	
	session.setAttribute("item7_price",Integer.parseInt(session.getAttribute("item7_rate").toString())*Integer.parseInt(session.getAttribute("item7_qty").toString()));
	%>
	<tr><form>
	<td align="left"><%= session.getAttribute("item7_name")%></td>
	<td align="center"><%= session.getAttribute("item7")%></td>
	<td align="center"><%= session.getAttribute("item7_qty")%></td>
	<td align="center"><%= session.getAttribute("item7_rate")%></td>
	<td align="center"><%= session.getAttribute("item7_price")%></td>
	<td><input type="submit" name="Remove7" value="Remove"/></td>
	</form>
	</tr>
	<% } %>
	<tr>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td></td>
	<td><form action="order.jsp"><input type="submit" name="order" value="Place Order"></form></td>
	</tr>
	</table>
    </div>
	<!-- end #header -->
	<div id="page">
		<div id="page-bgtop">
			<div id="page-bgbtm">
				<div id="content">
					<div class="post">
						<h2 class="title"><a href="#">Chocolate cake</a></h2>
						<div class="entry">
							<p><img src="cakes/images (1).jpg" width="143" height="143" alt="" class="alignleft border" /></p>
						</div>
						<p>A dark, extremely rich chocolate layer cake with dark chocolate icing. The strong chocolate flavor of this cake is amazing! A light brown layer cake with apricot filling!</p><p>This is one of our best chocolate cake recipes!</p>
					</div>
					<div class="post">
						<h2 class="title"><a href="#">Sponge cake</a></h2>
						<div class="entry">
							<p><img src="cakes/c1.jpg" width="143" height="143" alt="" class="alignleft border" />
						</div>
						<p>SPONGE CAKE is the smart and healthy choice. It is easy to prepare, and full of more air than calories. Several well beaten egg whites, will give this cake a delightful spongy affect when baked with flour, sugar, soda, and a dash of salt.</p><p>The strawberries as the decoration makes it even more healthy!</p>
					</div>
					<div class="post">
						<h2 class="title"><a href="#">Cheese Cake</a></h2>
						<div class="entry">
							<p><img src="cakes/images (11).jpg" width="143" height="143" alt="" class="alignleft border" /></p>
						</div>
						<p>If you are not worried about calories, then go for CHEESECAKE. It is wonderfully rich and tasty. Full of cream cheese, eggs, sugar, Borden?s condensed milk, and baked in a graham cracker crust. </p>
					</div>
					<!--<div style="clear: both;">&nbsp;</div>-->
				</div>
				<!-- end #content -->
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