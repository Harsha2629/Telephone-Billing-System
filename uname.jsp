<html>
<script>
function func(){
	if(document.unam.user.value==0)
	{alert("Enter User Name");
	return false;
	}
	return true;
}

</script>


<body align="center" bgcolor="pink">
<pre>    <h2 align="center">WELCOME</h2>
                     Enter User Name to View Alloted Phone No</pre>
<form name="unam" method="get" action="newno.jsp" onsubmit="return func()">
<input type="hidden" name="ID" value="SUBMIT">
<p align="center">
<pre>
					

					
                       User Name <input type="text" name="user"><br>

					       <input type="submit" name="submit" value="SUBMIT" >
                             
		
</pre>
																				
																				  	

                                                                                  

</p>
</form>
</body>
</html>
