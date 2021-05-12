<html>
<script>
function f1(){

	if(document.pay.bnum.value==0)
	{ alert("Bill No is Mandatory");
	return false;
	}
if(isNaN(document.pay.bnum.value))
	{alert("Bill no should contain numerics only");
	return false;
	}
if(document.pay.amt.value==0)
	{ alert("Amount is Mandatory");
		return false;}
if(isNaN(document.pay.amt.value))
	{alert("Amount should contain numerics only");
	return false;
	}
if(document.pay.bank.value==0)
	{ alert("Bank name is Mandatory");
	return false;
	}
if(document.pay.cardno.value==0)
	{ alert("Card no is Mandatory");
	return false;
	}
return true;
}
</script>



<body align="center" bgcolor="pink">
<pre>    <h2 align="center">BILL PAYMENT</h2>
<a href="login.jsp"><b>Home</b></a>	                                                                 <a href="Logout.jsp"><b>LOGOUT</b></a></pre>
<form name="pay"  action="paybillconn.jsp" method="get" onsubmit="return f1()">
<input type="hidden" name="ID" value="SUBMIT">
<p align="center">
<pre>


                         <b align="center"><font color="red">BILL ALREADY PAID OR INVALID DETAILS </font></b>

                     Bill Number  <input type="text" name="bnum">

                     Amount       <input type="text" name="amt">

                      Bank         <input type="text" name="bank">

                      Card no      <input type="text" name="cardno" >
					 
					<input type="submit" name="submit" value="SUBMIT">
					
					
		
</pre>
																				
																				  	

                                                                                  

</p>
</form>
</body>
</html>
