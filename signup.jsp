<%@ page language="java" import="java.sql.*" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Celebrate all occasions with US!!!</title>
<link href="style.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
function email()
{
 var emailID=document.signup_form.txtemail
 var image=document.signup_form.tick1
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
	function pwd()
{
  var password=document.signup_form.pass
  var conf_pass=document.signup_form.cpass
  var image1=document.signup_form.tick2
  var image2=document.signup_form.tick3
  if(pcheck(password.value)==false)
  {
   document.getElementById('ch2').innerHTML='Enter a password of minimun length 6 characters';
   password.style.background='#ffa448';
   conf_pass.style.background='#ffa448';
   image1.style.visibility="hidden";
   image2.style.visibility="hidden";
  }
  else
  {
   password.style.background='';
   document.getElementById('ch2').innerHTML='';
   image1.style.visibility="visible";    
  if(password.value!=conf_pass.value)
  {
   document.getElementById('ch3').innerHTML='Both the passwords should match';
   conf_pass.style.background='#ffa448';
   image2.style.visibility="hidden";
  }
  else
  {
   conf_pass.style.background='';
   document.getElementById('ch3').innerHTML='';
   image2.style.visibility="visible";
  }
  }
}	
function pcheck(str2)
	{
	var pl=str2.length
	if(pl<=5)
	  {return false}
	 }
function checkfname()
{
var con1=document.signup_form.fname
var image=document.signup_form.tick4
if(con1.value==null || con1.value=="")
{
document.getElementById('ch4').innerHTML='Please fill the First Name field';
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
function ValidateForm()
{
var emailID=document.signup_form.txtemail
var con1=document.signup_form.fname
var password=document.signup_form.pass
var conf_pass=document.signup_form.cpass 
if(con1.value==null || con1.value=="")
{
document.getElementById('ch').innerHTML='Necessary fields missing or not filled in correctly!';
con1.focus();
return false;
}
if (echeck(emailID.value)==false){
document.getElementById('ch').innerHTML='Necessary fields missing or not filled in correctly!';
 emailID.focus();
 return false;
 }
  if(pcheck(password.value)==false)
  {
   document.getElementById('ch').innerHTML='Necessary fields missing or not filled in correctly!';
   password.focus();
   return false;
  }
  else
  {    
  if(password.value!=conf_pass.value)
  {
  document.getElementById('ch').innerHTML='Necessary fields missing or not filled in correctly!';
   conf_pass.focus();
   return false;
  }
  }
}	
function pcheck(str2)
	{
	var pl=str2.length
	if(pl<=5)
	  {return false}
	 }
function checkfname()
{
var con1=document.signup_form.fname
var image=document.signup_form.tick4
if(con1.value==null || con1.value=="")
{
document.getElementById('ch4').innerHTML='Please fill the First Name field';
con1.style.background='#ffa448';
image.style.visibility="hidden";
}
else
{
document.getElementById('ch4').innerHTML='';
con1.style.background='';
image.style.visibility="visible";
}
return true;
}
</script>
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
								<li><a href="traditional.html">Traditional</a></li>
								<li><a href="contemporary.html">Contemporary</a></li>
								<li><a href="chocolate.html">Chocolate</a></li>
								<li><a href="novelty.html">Novelty</a></li>
							</ul>
						</li>
						<li>
							<h2>Celebration Cakes</h2>
							<ul>
								<li><a href="men.html">Cakes for men</a></li>
								<li><a href="women.html">Cakes for women</a></li>
								<li><a href="anni.html">Anniversary</a></li>
								<li><a href="graduation.html">Graduation</a></li>
								<li><a href="children.html">Childrens birthday</a></li>
							</ul>
						</li>
					</ul>
				</div>
				</td>
				<td>
				<div id="regform">
	<form name="signup_form" action="saverecord.jsp" method="post" onsubmit="return ValidateForm()">
	Register
	<br/><br/>
	<font color="red"><span id="ch"></span></font><br/><br/>
	<table>
	<tr>
	
	<td>
	*First Name
	</td>
	
	<td>
	<input type="text" name="fname" onFocus="checkfname()" onBlur="checkfname()"/>
	</td>
	
	<td><font color="red" size="2"><img name="tick4" id="tick4" src="tick.png" /><br/><span id="ch4"></span></font></td>
	
	</tr>
	
	<tr>
	
	<td>&nbsp
	Last Name
	</td>
	
	<td>
	<input type="text" name="lname" />
	</td>
	
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
	
	<tr>
	
	<td>
	*Password
	</td>
	
	<td>
	<input type="password" name="pass" onFocus="pwd()" onBlur="pwd()"/>
	</td>
	
	<td><font color="red" size="2"><img name="tick2" id="tick2" src="tick.png" /><br/><span id="ch2"></span></font></td>
	
	</tr>
	
	<tr>
	
	<td>
	*Retype Password
	</td>
	
	<td>
	<input type="password" name="cpass" onFocus="pwd()" onBlur="pwd()"/>
	</td>
	
	<td><font color="red" size="2"><img name="tick3" id="tick3" src="tick.png" /><br/><span id="ch3"></span></font></td>
	
	</tr>
	<tr>
	<td>
	Birthday
	</td>
	
	
	<td><select  name="dd">
		<option value="none">DD</option>
		<option value="01">01</option>
		<option value="02">02</option>
		<option value="03">03</option>
		<option value="04">04</option>
		<option value="05">05</option>
		<option value="06">06</option>
		<option value="07">07</option>
		<option value="08">08</option>
		<option value="09">09</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>
		<option value="13">13</option>
		<option value="14">14</option>
		<option value="15">15</option>
		<option value="16">16</option>
		<option value="17">17</option>
		<option value="18">18</option>
		<option value="19">19</option>
		<option value="20">20</option>
		<option value="21">21</option>
		<option value="22">22</option>
		<option value="23">23</option>
		<option value="24">24</option>
		<option value="25">25</option>
		<option value="26">26</option>
		<option value="27">27</option>
		<option value="28">28</option>
		<option value="29">29</option>
		<option value="30">30</option>
		<option value="30">31</option>
	</select>
	
	<select  name="mm">
		<option value="none">MM</option>
		<option value="01">01</option>
		<option value="02">02</option>
		<option value="03">03</option>
		<option value="04">04</option>
		<option value="05">05</option>
		<option value="06">06</option>
		<option value="07">07</option>
		<option value="08">08</option>
		<option value="09">09</option>
		<option value="10">10</option>
		<option value="11">11</option>
		<option value="12">12</option>
	</select>
	
	<select  name="yyyy">
		<option value="none">YYYY</option>
		<option value="1921">1921</option>
		<option value="1922">1922</option>
		<option value="1923">1923</option>
		<option value="1924">1924</option>
		<option value="1925">1925</option>
		<option value="1926">1926</option>
		<option value="1927">1927</option>
		<option value="1928">1928</option>
		<option value="1929">1929</option>
		<option value="1930">1930</option>
		<option value="1931">1931</option>
		<option value="1932">1932</option>
		<option value="1933">1933</option>
		<option value="1934">1934</option>
		<option value="1935">1935</option>
		<option value="1936">1936</option>
		<option value="1937">1937</option>
		<option value="1938">1938</option>
		<option value="1939">1939</option>
		<option value="1940">1940</option>
		<option value="1941">1941</option>
		<option value="1942">1942</option>
		<option value="1943">1943</option>
		<option value="1944">1944</option>
		<option value="1945">1945</option>
		<option value="1946">1946</option>
		<option value="1947">1947</option>
		<option value="1948">1948</option>
		<option value="1949">1949</option>
		<option value="1950">1950</option>
		<option value="1950">1951</option>
		<option value="1962">1962</option>
		<option value="1963">1963</option>
		<option value="1964">1964</option>
		<option value="1965">1965</option>
		<option value="1966">1966</option>
		<option value="1967">1967</option>
		<option value="1968">1968</option>
		<option value="1969">1969</option>
		<option value="1970">1970</option>
		<option value="1971">1971</option>
		<option value="1972">1972</option>
		<option value="1973">1973</option>
		<option value="1974">1974</option>
		<option value="1975">1975</option>
		<option value="1976">1976</option>
		<option value="1977">1977</option>
		<option value="1978">1978</option>
		<option value="1979">1979</option>
		<option value="1980">1980</option>
		<option value="1981">1981</option>
		<option value="1982">1982</option>
		<option value="1983">1983</option>
		<option value="1984">1984</option>
		<option value="1985">1985</option>
		<option value="1986">1986</option>
		<option value="1987">1987</option>
		<option value="1988">1988</option>
		<option value="1989">1989</option>
		<option value="1990">1990</option>
		<option value="1991">1991</option>
		<option value="1992">1992</option>
		<option value="1993">1993</option>
		<option value="1994">1994</option>
		<option value="1995">1995</option>
		<option value="1996">1996</option>
		<option value="1997">1997</option>
		<option value="1998">1998</option>
		<option value="1999">1999</option>
		<option value="2000">2000</option>
	</td>
	
	</tr>
	
	<tr>
	<td>
	</td>
	<td>
	<input type="submit" name="register" value="Register"/>
	</td>
	</tr>
	</table>
	</form>
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
