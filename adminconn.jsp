<html>
<head>
</head>
<body>
<H3>Employee Details</H3>
<%@ page import = "java.sql.*, chandu.dbConn5" %>

<%! 
    ResultSet rs ;
    dbConn5 db ;
    String sConn;
    public void jspInit() {
        db = new dbConn5();
        sConn = db.DBConnect();
        rs = null; 
    }
%>
<a href="login.jsp">Home</a>
<%
    String sID = request.getParameter("ID");
    if(sID.equals("SUBMIT")) {
      String pno = request.getParameter("pno");
       int bamt = (new Integer(request.getParameter("bamt"))).intValue();
	   String pdd = request.getParameter("pdd");
	   

String y="Data updation successfully";
		
		
		
		String sInsState =null;
        if(sConn.equals("")) {
            sInsState = db.setData1(pno, bamt, pdd);
        }
%>
<%String x=sInsState;%>
 <%
    if(x.equals(y))
		{

%>
<jsp:forward page="admin2.jsp"/>
<%}
	else
		{%>
<jsp:forward page="admin1.jsp"/>
		<%
		}	
	}%>
</body>
</html>

