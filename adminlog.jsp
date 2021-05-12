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
if((document.Login.uname=='admin')&&(document.Login.password.value=='asdfg'))
{
return true;
}
}
</script>
<body align="center" bgcolor="wheat">
<h1 align="center">TELEPHONE BILLING SYSTEM</h1>
<a href="login.jsp"><b>Home</b></a>
<form name="Login"  action="admin.jsp" method="get" onSubmit=" return checkForm()">
<input type="hidden" name="ID" value="SUBMIT">
<p align="center">
<pre>
<marquee><img src="1.bmp">	</marquee>
				Admin Name <input type="text" name="uname"><br><br>				  
				Password   <input type="password" name="password">				
					   
						<input type="submit" name="submit" value="SUBMIT"  >
						
					    
</pre>
</form>
</body>
</html>