<html>
<head>
</head>
<body bgcolor="#FFFFCC">
<H3 align="center">Bill Details</H3>
<%@ page import = "java.sql.*, chandu.dbConn3" %>

<%! 
    ResultSet rs ;
    dbConn3 db ;
    String sConn;
    public void jspInit() {
        db = new dbConn3();
        sConn = db.DBConnect();
        rs = null; 
    }
%>
<pre>


<a href="bill.jsp">Back</a>                 								          <a href="login.jsp">Home</a>
                                      <a href="paybill.jsp">Pay Bill</a>
</pre>
         <br><br><br>
<%
    String sID = request.getParameter("ID");
        String pno = request.getParameter("pno");
		String uname = request.getParameter("uname");
         //out.println(pno);
		 rs = db.getData();
		
%>


        <table border="1" align="center">
        <tr>
            <th> Customer name</th>
            <th> phone no</th>
			<th> bill no</th>
			<th>Bill amount</th>
			<th> pay by date</th>
			<th> paid date</th>
			 <th> Status</th>   
		</tr>

<%       int z=0; 
        while(rs.next()){
%>      
        <%
		String x=rs.getString(1);
   String y=rs.getString(2);
	  //out.println(x);

	  if(y.equals(pno)&&x.equals(uname))
		{ z=1;
		%>
		<tr>
          
		    <td>  <%=rs.getString(3)%></td>
            <td>  <%=y%></td>
			<td>	<%=rs.getString(4)%></td>
			<td>  <%=rs.getInt(5)%></td>
			<td>  <%=rs.getString(6)%></td>
			
			<% 
			String s;	
			String t=rs.getString(7);
			if((t==null))
						{
s="NOT PAID";
			}
else
			{
	s="PAID";
			}
	%>
			<td>  <%=t%></td>
			<td>  <%=s%></td>
			
			
            
        </tr>
<%        
			}

		
		}
  if(z==0)
	  {%>
<jsp:forward page="vwbill1.jsp"/>
<%
} %>

        </table>


</body>
</html>

