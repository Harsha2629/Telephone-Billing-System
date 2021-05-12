<html>
<head>
</head>
<body>
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
<a href="login.jsp">Home</a>
<%
    String sID = request.getParameter("ID");
    if(sID.equals("INSERT")) {
       String uname = request.getParameter("uname");
	   String cname = request.getParameter("cname");
       String occupation = request.getParameter("occupation");
       String purpose = request.getParameter("purpose");
	   String gender = request.getParameter("m");
	   int income = (new Integer(request.getParameter("income"))).intValue();
	   String dob = request.getParameter("dob");
	   String address = request.getParameter("address");
	   String state = request.getParameter("state");
	   int pin = (new Integer(request.getParameter("pin"))).intValue();

String y="Data inserted successfully";
		
		
		
		String sInsState =null;
        if(sConn.equals("")) {
            sInsState = db.setData(uname, cname, occupation, purpose, gender, income, dob, address, state, pin);
        }
%>
<%String x=sInsState;%>
 <%
    if(x.equals(y))
		{

%>
<jsp:forward page="uname.jsp"/>
<%}
	else
		{
		%>
<jsp:forward page="new_connection1.jsp"/>
<%
		}
	}%>
</body>
</html>

