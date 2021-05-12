<html>


<script>
function checkForm()
{

if((document.Login.uname.value.length==0))
{
alert("Please enter User name ");
return false;
}
if((document.Login.password.value.length==0))
{
alert("Please enter  password");
return false;
}
/*if(!((document.Login.uname.value=="wipro")&&(document.Login.password.value=="wipro")))
	{
	alert("enter correct  user id and password");
	return false;
	}
	else
	{
return true;
	}*/
}
</script>
<body align="center" bgcolor="#CCFFCC#CC9900#9999FF#9900CC#339966#000000#CC9900#CC99FF" >
<h1 align="center"><font color="">TELEPHONE BILLING SYSTEM</font></h1>
<form name="Login"  action="login_conn.jsp" method="get" onSubmit=" return checkForm()">
<input type="hidden" name="ID" value="SUBMIT">
<p align="center">
<pre>
<marquee><img src="1.bmp">	</marquee>
				User Name <input type="text" name="uname"><br><br>				  
				Password  <input type="password" name="password">				
					   
						<input type="submit" name="submit" value="SUBMIT"  >
						
					    <a href="adminlog.jsp">Admin Login</a>
										      <b>New user</b>
											<a href="signup.jsp">Sign up</a>

										  <b> New Connection</b>
										    <a href="New_connection.jsp">Register Here</a>

</pre>
																				
																				  	

                                                                                 

</p>
</form>
</body>
</html>
