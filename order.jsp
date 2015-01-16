<%@ page language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>celebrate all occasions with us!!!</title>
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
	
	<link href="style.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript">
	
function checkname()
{
var con1=document.register.con_name
var image=document.register.tick4
if(con1.value==null || con1.value=="")
{
document.getElementById('ch4').innerHTML='Please fill the Name field';
con1.style.background='#ffa448';
image.style.visibility="hidden";
}
else
{
document.getElementById('ch4').innerHTML='';
con1.style.background='';
image.style.visibility="visible";
}
}
function checkadd()
{
var con2=document.register.add
var image2=document.register.tick5
if(con2.value==null || con2.value=="")
{
document.getElementById('ch5').innerHTML='Please fill the Address field';
con2.style.background='#ffa448';
image2.style.visibility="hidden";
}
else
{
document.getElementById('ch5').innerHTML='';
con2.style.background='';
image2.style.visibility="visible";
}
}
function cont()
{
var con2=document.register.con_no
var image2=document.register.tick6
if(con2.value==null || con2.value=="")
{
document.getElementById('ch6').innerHTML='Please fill the contact number field correctly';
con2.style.background='#ffa448';
image2.style.visibility="hidden";
}
else
{
if(IsNumeric(con2.value)==true)
{
document.getElementById('ch6').innerHTML='';
con2.style.background='';
image2.style.visibility="visible";
}
else
{
document.getElementById('ch6').innerHTML='Please fill the contact number field correctly';
con2.style.background='#ffa448';
image2.style.visibility="hidden";
}
}}
function IsNumeric(sText)

{
   var ValidChars = "0123456789";
   var IsNumber=true;
   var Char;

 
   for (i = 0; i < sText.length && IsNumber == true; i++) 
      { 
      Char = sText.charAt(i); 
      if (ValidChars.indexOf(Char) == -1) 
         {
         IsNumber = false;
         }
      }
   return IsNumber;
   
   }
function email()
{
 var emailID=document.register.txtemail
 var image=document.register.tick1
 if (echeck(emailID.value)==false){
 document.getElementById('ch1').innerHTML='Enter a valid email address of the format xyz@site.abc';
 emailID.style.background = '#ffa448';
 image.style.visibility="hidden";
 }
 else
 {
 emailID.style.background = '';
 document.getElementById('ch1').innerHTML='';
 image.style.visibility="visible";
 }
}

function echeck(str) {

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		     return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		    return false
		 }

 		 return true					
	}	
function ValidateForm()
{
var emailID=document.register.txtemail
if (echeck(emailID.value)==false){
document.getElementById('ch').innerHTML='Necessary fields missing or not filled in correctly!';
 emailID.focus();
 return false;
 }
}	
</script>
</head>
	<form name="register" action="submitorder.jsp" method="post" onsubmit="return ValidateForm()">
    <table align="center" width="700">
	<%if(session.getAttribute("name")==null){%>
	<div id="re">
	<center>If you are a registered user then please login else you can even register from above.
	If you wish to continue as such fill the form below.<br/><br/>
	<font color="red"><b><span id="ch"></span></b></font>
	<br/><br/></center>
	</div>
	<tr>
	
	<td>*Name:</td>
	
	<td> <input type="text" name="con_name" onFocus="checkname()" onBlur="checkname()"/></td>
	
	<td><font color="red" size="2"><img name="tick4" id="tick4" src="tick.png" /><br/><span id="ch4"></span></font></td>
	
	</tr>
	<tr>
	<td>
	*Email Address
	</td>
	
	<td>
	<input type="text" name="txtemail" onFocus="email()" onBlur="email()"/>
	</td>

	<td><font color="red" size="2"><img name="tick1" id="tick1" src="tick.png" /><br/><span id="ch1"></span></font></td>
	</tr>
	<%} else{ %>
	<center>Please enter the following information correctly to submit your order.<br/></center>
	<%}%>
	<tr><td>*Contact number:</td><td>  <input type="text" name="con_no" onFocus="cont()" onBlur="cont()"/></td>

	<td><font color="red" size="2"><img name="tick6" id="tick6" src="tick.png" /><br/><span id="ch6"></span></font></td>

    </tr>
	
	<tr>
	
	<td>*Address:</td><td>  <input type="text" name="add" onFocus="checkadd()" onBlur="checkadd()" /></td>
	
	<td><font color="red" size="2"><img name="tick5" id="tick5" src="tick.png" /><br/><span id="ch5"></span></font></td>
	
	</tr>
	</table>
	<center><input type="submit" name="sub" value="Submit"/></center>
	</form>
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
						<p>If you are not worried about calories, then go for CHEESECAKE. It is wonderfully rich and tasty. Full of cream cheese, eggs, sugar, Borden�s condensed milk, and baked in a graham cracker crust. </p>
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
