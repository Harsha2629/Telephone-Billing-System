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
<body align="center" bgcolor="wheat">
<h1 align="center">TELEPHONE BILLING SYSTEM</h1>
<form name="Login"  action="login_conn.jsp" method="get" onSubmit=" return checkForm()">
<input type="hidden" name="ID" value="SUBMIT">
<p align="center">
<pre>
<marquee><img src="1.bmp">	</marquee>
				User Name <input type="text" name="uname"><br><br>				  
				Password  <input type="password" name="password">				
					   
						<input type="submit" name="submit" value="SUBMIT"  >					     
				
				<b>Invalid user id or password</b>
											  <b>New user</b>
											<a href="signup.jsp">Sign up</a>

										  <b> New Connection</b>
										    <a href="New_connection.jsp">Register Here</a>

</pre>
																				
			<h5> </h5>																	  	

                                                                                  

</p>
</form>
</body>
</html>