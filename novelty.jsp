<%@ page language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<!--<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />-->
<title>celebrate all occasions with us!!!</title>
<link href="style.css" rel="stylesheet" type="text/css"/>
</head>

<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
$(document).ready(function()
{$("#p1").hover(function(){
$("#show").css("background-image","url(novelty/n1.jpg)");
$("#head").html("Bundt Cakes");
$("#code").html("Cake code: &nbsp&nbsp&nbsp CN1<br/><br/>");
$("#price").html("Price: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp	Rs. 500 (per kg)");
$("#desc").html("In this cake,sometimes the flour is added to the whole egg or yolk only foam,<br/> to create a batter, and then, the egg white foam is folded in. ");
  });
$("#p2").hover(function(){
$("#show").css("background-image","url(novelty/n2.jpg)");
$("#head").html("Biscuit Teacup Roulades");
$("#code").html("Cake code: &nbsp&nbsp&nbsp CN2<br/><br/>");
$("#price").html("Price: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp	Rs. 550 (per kg)");
$("#desc").html("It is an unbaked flourless cakes, such as unbaked cheesecakes and mousse cakes,<br/> are typically molded in a dessert ring or springform pan then simply chilled before unmolding.");
  });
$("#p3").hover(function(){
$("#show").css("background-image","url(novelty/n3.jpg)");
$("#head").html("Fruitcake");
$("#code").html("Cake code: &nbsp&nbsp&nbsp CN3<br/><br/>");
$("#price").html("Price: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp	Rs. 600 (per kg)");
$("#desc").html("A small amount of flour is sifted over the foam before folding it in,<br/> resulting in a snowy-white, airy, and delicate cake that marries beautifully with fruit. ");
  });
$("#p4").hover(function(){
$("#show").css("background-image","url(novelty/n4.jpg)");
$("#head").html("Mackennas Gold");
$("#code").html("Cake code: &nbsp&nbsp&nbsp CN4<br/><br/>");
$("#price").html("Price: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp	Rs. 800 (per kg)");
$("#desc").html("A royal Dutch traditional cake. It is a traditional cake with a more <br/>traditional look to it.  ");
  });
$("#p5").hover(function(){
$("#show").css("background-image","url(novelty/n5.jpg)");
$("#head").html("Choco Cream Bonanza");
$("#code").html("Cake code: &nbsp&nbsp&nbsp CN5<br/><br/>");
$("#price").html("Price: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp	Rs. 700 (per kg)");
$("#desc").html('Another one of our fancy traditional cakes. In the words of our <br/> customers "Tastes like heaven"!');
  });
$("#p6").hover(function(){
$("#show").css("background-image","url(novelty/n6.jpg)");
$("#head").html("Chocolate Gift");
$("#code").html("Cake code: &nbsp&nbsp&nbsp CN6<br/><br/>");
$("#price").html("Price: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp	Rs. 850 (per kg)");
$("#desc").html("Looks like a cream cake but has a filling of melted traditional within <br/> it. Its a special cake that you might not find anywhere else.");
  });
$("#p7").hover(function(){
$("#show").css("background-image","url(novelty/n7.jpg)");
$("#head").html("Novelty Cake");
$("#code").html("Cake code: &nbsp&nbsp&nbsp CN7<br/><br/>");
$("#price").html("Price: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp	Rs. 800 (per kg)");
$("#desc").html("A pure traditional cream cake. This is the most popular cake in this <br/> category and a value for money.");
  });
});
</script>

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
		Welcome <%= session.getAttribute("name")%> | <a href="cart.jsp">My Cart</a> | <a href="logout.jsp">logout</a>
		</div>
		<% } %>
	<div id="header">
		<div id="logo">
			<h1><a href="#">celebrate all occasions with us!!!</a></h1>
		</div>
	</div>
	
	<div id="panel">
	<div id="row">
	<div>
	<a href="#" id="p1"> 
	<img src="novelty/n1.jpg" class="pic1"/>
	</a>
	</div>
	
    <div>
	<img src="novelty/n2.jpg" class="pic" id="p2"/>
	</div>
	
	<div>
	<img src="novelty/n3.jpg" class="pic" id="p3"/>
	</div>
	
	<div>
	<img src="novelty/n4.jpg"  class="pic" id="p4"/>
	</div>
	
	<div>
	<img src="novelty/n5.jpg"  class="pic" id="p5"/>
	</div>
	
	<div>
	<img src="novelty/n6.jpg"  class="pic" id="p6"/>
	</div>
	
	<div>
	<img src="novelty/n7.jpg"  class="pic" id="p7"/>
	</div>
	
	</div>
	
	<div id="show"style="background-image:url(novelty/n1.jpg)">

	</div>

	<div id="cartopt">
	<form onclick="anni.jsp">
	<select name="cartlist">
	  <option value="cn1">Bundt Cakes</option>
	  <option value="cn2">Biscuit Teacup Roulades</option>
	  <option value="cn3">Fruitcake</option>
	  <option value="cn4">Mackennas Gold</option>
	  <option value="cn5">Choco Cream Bonanza</option>
	  <option value="cn6">Chocolate Gift</option>
	  <option value="cn7">Novelty Cake</option>
	</select>
		<select name="qty">
	  <option value="1">1 kg</option>
	  <option value="2">2 kgs</option>
	  <option value="3">3 kgs</option>
	  <option value="4">4 kgs</option>
	  <option value="5">5 kgs</option>
	  <option value="6">6 kgs</option>
	  <option value="7">7 kgs</option>
	  <option value="8">8 kgs</option>
	  <option value="9">9 kgs</option>
	  <option value="10">10 kgs</option>
	</select>
	<input type="submit" id="addtocart" name="addtocart" value="Add to cart"/>	
	</form>
	<form action="cart.jsp">
	<%
	if (session.getAttribute("item1")==null){
	session.setAttribute( "item1",request.getParameter("cartlist"));
	/*request.setParameter("cartlist",null);*/
	session.setAttribute( "item1_qty",request.getParameter("qty"));
	if(session.getAttribute("item1")!=null){
	session.setAttribute("count","1");
	}
	}
	else if (session.getAttribute("item2")==null){
	session.setAttribute( "item2",request.getParameter("cartlist"));
	session.setAttribute( "item2_qty",request.getParameter("qty"));
	if(session.getAttribute("item2")!=null){
	session.setAttribute("count","2");
	}
	}
	else if (session.getAttribute("item3")==null){
	session.setAttribute( "item3",request.getParameter("cartlist"));
	session.setAttribute( "item3_qty",request.getParameter("qty"));
	if(session.getAttribute("item3")!=null){
	session.setAttribute("count","3");
	}
	}
	else if (session.getAttribute("item4")==null){
	session.setAttribute( "item4",request.getParameter("cartlist"));
	session.setAttribute( "item4_qty",request.getParameter("qty"));
	if(session.getAttribute("item4")!=null){
	session.setAttribute("count","4");
	}
	}
	else if (session.getAttribute("item5")==null){
	session.setAttribute( "item5",request.getParameter("cartlist"));
	session.setAttribute( "item5_qty",request.getParameter("qty"));
	if(session.getAttribute("item5")!=null){
	session.setAttribute("count","5");
	}
	}
	else if (session.getAttribute("item6")==null){
	session.setAttribute( "item6",request.getParameter("cartlist"));
	session.setAttribute( "item6_qty",request.getParameter("qty"));
	if(session.getAttribute("item6")!=null){
	session.setAttribute("count","6");
	}
	}
	else if (session.getAttribute("item7")==null){
	session.setAttribute( "item7",request.getParameter("cartlist"));
	session.setAttribute( "item7_qty",request.getParameter("qty"));
	if(session.getAttribute("item7")!=null){
	session.setAttribute("count","7");
	}
	}
	%>
	<% if(session.getAttribute("item1")!=null){ %>No. of cakes added to cart is <%=session.getAttribute("count")%>
	<% }%>
	
	<input type="submit" id="viewcart" name="viewcart" value="View cart"/>
	</form>
	</div>
	
    <div id="info">
    <p id="head">
	Bundt Cakes
	</p>
	<p id="price">
	Price: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp	Rs. 500 (per kg)	</p>
	<p id="code">
	Cake code: &nbsp&nbsp&nbsp Ch1<br/><br/>

	</p>

	<p id="desc">
	 This a very fancy cake with rich dark chocolate ribbon toppings. A <br/> favorite of many of our customers.
	</p>
    </div>	
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
