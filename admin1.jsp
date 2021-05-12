<html>
<script>
function f1(){

	if(isNaN(document.admin.pno.value))
	{alert("Phone no should contain numerics only");
	return false;
	}
if(document.admin.bamt.value==0)
	{ alert("Amount is Mandatory");
		return false;}
if(isNaN(document.admin.bamt.value))
	{alert("Amount should contain numerics only");
	return false;
	}
if(document.admin.pdd.value==0)
	{ alert("Pay Due Date is Mandatory");
	return false;
	}
if(document.admin.pdd.value.length!=10||document.admin.pdd.value.charAt(2)!='/'||document.admin.pdd.value.charAt(5)!='/')
{
  alert("date should be in dd/mm/yyyy format");
   return false;
}
var x=(document.admin.pdd.value.substring(0,2));
var y=(document.admin.pdd.value.substring(3,5));
var z=(document.admin.pdd.value.substring(6,document.admin.pdd.value.length));
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

return true;
}
</script>



<body align="center" bgcolor="pink">
<pre>    <h2 align="center">WELCOME TO ADMINISTRATOR</h2></pre>
	<pre>											<a href="Logout.jsp">LOGOUT</a></pre>
<form name="admin"  action="adminconn.jsp" method="get" onsubmit="return f1()">
<input type="hidden" name="ID" value="SUBMIT">
<p align="center">
<pre>

		                <b align="center"> <font color="red">Invalid Phone No</font></b>

                     Phone Number  <input type="text" name="pno">

                     Bill Amount   <input type="text" name="bamt">        

                     Pay Due Date  <input type="text" name="pdd" > dd/mm/yyyy
					 
					<input type="submit" name="submit" value="SUBMIT">
					
	</pre>
																				
																				  	

                                                                                  

</p>
</form>
</body>
</html>
				
		
		
		