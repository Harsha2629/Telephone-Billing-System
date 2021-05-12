<html>
<script>
function func(){
	if(isNaN(document.vbill.pno.value))
	{alert("Phone no should contain numerics only");
	return false;
	}
}

</script>


<body align="center" bgcolor="pink">
<pre>    <h2 align="center">WELCOME</h2>
                     Enter Telephone Number to View Bill</pre> <pre>
 <a href="bill.jsp"><b>Back</b></a>	                              <a href="login.jsp"><b>Home</b></a>                               <a href="Logout.jsp"><b>LOGOUT</b></a>
 </pre>  
<form name="vbill" method="get" action="viewbill.jsp" onsubmit="return func()">
<input type="hidden" name="ID" value="SUBMIT">
<p align="center">
<pre>
					

				<!--  User Name    <input type="text" name="uname"><br>-->
                                User name    <input type="text" name="uname"><br>
					   Telephone No <input type="text" name="pno"><br>

					              <input type="submit" name="submit" value="SUBMIT" >
                             
		
</pre>
																				
																				  	

                                                                                  

</p>
</form>
</body>
</html>
