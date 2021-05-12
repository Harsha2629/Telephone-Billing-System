<html>
<head>
</head>
<body>
<H3>Bill Details</H3>
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
<a href="login.jsp">Home</a>
<%
    String sID = request.getParameter("ID");
        String pno = request.getParameter("pno");
         //out.println(pno);
		 rs = db.getData();
		
%>


        <table border="1">
        <tr>
            <th>Name</th>
            <th>Age</th>
			    
		</tr>
<%        
        while(rs.next()){
%>      
        <%
		String x=rs.getString(1);
      if(x==pno)
		{
		%>
		<tr>
          
		    <td>  <%=rs.getString(2)%></td>
            <td>	<%=rs.getInt(3)%></td>
			
			
            
        </tr>
<%        
			}
		}
%>
        </table>


</body>
</html>

