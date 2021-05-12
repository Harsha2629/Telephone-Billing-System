<html>
<head>
</head>
<body bgcolor="#808080">
<H3>Phone Details</H3>
<%@ page import = "java.sql.*, chandu.dbConn1" %>

<%! 
    ResultSet rs ;
    dbConn1 db ;
    String sConn;
    public void jspInit() {
        db = new dbConn1();
        sConn = db.DBConnect();
        rs = null; 
    }
%>

<%
    String sID = request.getParameter("ID");
        String user =request.getParameter("user");
		 rs = db.getData();
		
%>

 <table align="center" border="1">
        <tr>
            <th>Name</th>
            <th>Purpose</th>
			<th>Phone No Alloted</th>   
		</tr>
       
<%        
        while(rs.next()){
%>      
        <%
		String x=rs.getString(1);
		String y=rs.getString(2);
		String z=rs.getString(3);
		int a=rs.getInt(4);

      if(x.equals(user))
		{%>
<tr>
          
		    <td align="center">  <%=y%></td>
            <td align="center">	<%=z%></td>
			  <td align="center">	<%=a%></td>
			
			            
        </tr>
		
		<%
		  }
	  }
%>
		

<pre>
											<a href="login.jsp">HOME</a>





</pre>
</body>
</html>