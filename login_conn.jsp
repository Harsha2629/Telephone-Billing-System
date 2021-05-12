<html>
<head>
</head>
<body>
<H3>Employee Details</H3>
<%@ page import = "java.sql.*, chandu.dbConn4" %>

<%! 
    ResultSet rs ;
    dbConn4 db ;
    String sConn;
    public void jspInit() {
        db = new dbConn4();
        sConn = db.DBConnect();
        rs = null; 
    }
%>

<%
    String sID = request.getParameter("ID");
        String uname =request.getParameter("uname");
		String pwd =request.getParameter("password");
        //String user=null; 
		 int t=0;
		
		
		 rs = db.getData();
		
%>


       
<%        
        while(rs.next()){
%>      
        <%
		String x=rs.getString(1);
		String y=rs.getString(2);

      if(x.equals(uname)&&y.equals(pwd))
		{%>
		<jsp:forward page="bill.jsp"/>
		<%
		  }
	  else{ t=1;
       
	  }
}
%>
<%if(t==1)	{	%>
<jsp:forward page="login1.jsp"/>
<%}%>

</body>
</html>