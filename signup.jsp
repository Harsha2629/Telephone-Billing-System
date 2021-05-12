<html>

<script>
function check(){
	if(document.Signup.uname.value.length==0)
	{ alert("User name is Mandatory");
	return false;
	}
	if((document.Signup.password.value.length<6))
	{ alert("password is minimum 6 charecters");
	
	return false;}
if((document.Signup.password.value.length>9))
	{ alert("password is maximum 9 charecters");
	
	return false;}

	if(!(document.Signup.password.value==document.Signup.confpassword.value))
	{
		alert("Enter password correctly");
		return false;
	}
if(document.Signup.fname.value.length==0)
	{ alert("First name is Mandatory");
return false;
	}
if(document.Signup.email.value.length==0)
	{ alert("Email is Mandatory");
return false;
	}
if(!(document.Signup.email.value.length==0))
	{
for(var i=0;i<document.Signup.email.value.length;i++)
if(document.Signup.email.value.charAt(i)=='@') 
return true
alert("Email id invalid");
return false
	}
if(document.Signup.pno.value.length==0)
	{ alert("Phone no is Mandatory");
return false;
	}
	if(isNaN(document.Signup.pno.value))
	{alert("Phone no should contain numerics only");
	return false;
	}
if(document.Signup.address.value.length==0)
	{ alert("Address is Mandatory");
return false;
	}
if(document.Signup.pin.value.length==0)
	{ alert("Pin no is Mandatory");
return false;
	}
if(document.Signup.cno.value.length==0)
	{ alert("Bank Card No is Mandatory");
return false;
	}
document.Signup.ID.value="INSERT";
//  document.Signup.submit();
return true;
}
</script>

<body align="center" bgcolor="pink">
<h2 align="center">NEW USER REGISTRATION</h2>
<form name="Signup" action="exp.jsp" method="get"  onsubmit="return check()">
<input type="hidden" name="ID" value="INSERT">
<p align="center">
<pre>
		User Name 		 <input type="text" name="uname" >

		Password  		 <input type="password" name="password" >

		Confirm Password	 <input type="password" name="confpassword">

		First Name 		 <input type="text" name="fname" >

		Last Name		 <input type="text" name="lname" >

		Email Id		 <input type="text" name="email" >

		Phone no		 <input type="text" name="pno" >

		Address		 <input type="text" name="address" >

		State		       <input type="text" name="state" >

		Pin			 <input type="text" name="pin" >

           Card No	       <input type="text" name="cno" >
					
					   <input type="submit" name="submit" value="INSERT">
													<a href="login.jsp"><b>Home</b></a>		
</pre>
																				
																				  	

                                                                                  

</p>
</form>
</body>
</html>
