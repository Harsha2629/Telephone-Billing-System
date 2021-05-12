<html>
<script>
function f()
{
if(document.newconn.uname.value.length==0)
	{ alert("User Name is Mandatory");
     return false;
	}
if(document.newconn.cname.value.length==0)
	{ alert("Name is Mandatory");
     return false;
	}
if(document.newconn.occupation.value.length==0)
	{ alert("Occupation is Mandatory");
return false;
	}
if(isNaN(document.newconn.income.value))
	{alert("Income should contain numerics only");
return false;
	}
if(document.newconn.income.value.length==0)
	{ alert("Income is Mandatory");
return false;
	}
if(document.newconn.dob.value.length==0)
	{ alert("Date Of Birth is Mandatory");
return false;
	}
if(document.newconn.dob.value.length!=10||document.newconn.dob.value.charAt(2)!='/'||document.newconn.dob.value.charAt(5)!='/')
{
  alert("date should be in dd/mm/yyyy format");
   return false;
}
var x=(document.newconn.dob.value.substring(0,2));
var y=(document.newconn.dob.value.substring(3,5));
var z=(document.newconn.dob.value.substring(6,document.newconn.dob.value.length));
if(x<0||x>31||y<0||y>12||z<1890)
{
alert("enter valid date");
 return false;
}
switch(y)
{
 case "04": 
case "06":
 case "09": 
case "11":  
if(x==31)
{ 
alert("enter valid day");
 return false;
}
break;
case "02":
if((z%400!=0)&&(z%4!=0||z%100!=0)&&(x>28))
{
 
alert("its not a leap year ");
 return false;

}
else
{
if(x>29)
{ 
alert("enter valid day");
 return false;
}
}
}


if(document.newconn.address.value.length==0)
	{ alert("Address is Mandatory");
return false;
	}

if(document.newconn.pin.value.length==0)
	{ alert("Pin no is Mandatory");
return false;
	}
document.newconn.ID.value="INSERT";
return true;
}
</script>



<body align="center" bgcolor="pink">
<h2 align="center">NEW CONNECTION REGISTRATION</h2>
<form name="newconn" action="newconnexp.jsp "method="get" onsubmit="return f()">
<input type="hidden" name="ID" value="INSERT">
<p align="center">
<pre>												<a href="Logout.jsp"><b>LOGOUT</b></a>

		User Name 		 <input type="text" name="uname" >

		Name 		       <input type="text" name="cname" >

		Occupation 		 <input type="text" name="occupation" >

            Gender		 <input type="radio" name="m" value="Male" checked="true"/> Male  <input type="radio" name="m" value="Female"/>Female

		Purpose		 <select name="purpose"><option value="individual"> Individual </option>
		<option value="organisation">Organisation</option> <option value="others">Others</option>

		</select>
		
		Annual Income	 <input type="text" name="income" >

		Date Of Birth	 <input type="text" name="dob" > dd/mm/yyyy

		Address		 <input type="text" name="address" >

		State		       <input type="text" name="state" >

		Pin			 <input type="text" name="pin" >

					
					   <input type="submit" name="submit" value="INSERT">
													<a href="login.jsp"><b>Home</b></a>					

	
</pre>
																				
																				  	

                                                                                  

</p>
</form>
</body>
</html>
