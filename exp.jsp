<html>
<head>
</head>
<body>
<H3>Employee Details</H3>
<%@ page import = "java.sql.*, chandu.dbConn" %>

<%! 
    ResultSet rs ;
    dbConn db ;
    String sConn;
    public void jspInit() {
        db = new dbConn();
        sConn = db.DBConnect();
        rs = null; 
    }
%>
<a href="signup.jsp">Home</a>
<%
    String sID = request.getParameter("ID");
    if(sID.equals("INSERT")) {
       String sName = request.getParameter("uname");
       String pwd = request.getParameter("password");
       String confPwd = request.getParameter("confpassword");
	   String fname = request.getParameter("fname");
	   String lname = request.getParameter("lname");
	   String email = request.getParameter("email");
	  String pno = request.getParameter("pno");
	   String address = request.getParameter("address");
	   String state = request.getParameter("state");
	   int pin = (new Integer(request.getParameter("pin"))).intValue();
        String cno = request.getParameter("cno");
		
		String y="Data inserted successfully";
		int z=0;
		String sInsState = null;
       rs= db.getData();
while(rs.next()){
	if(rs.getString(1).equals(pno))
	{
		z=1;
		
        }

	}
	if(z!=1)
		{
		%>
<jsp:forward page="signup1.jsp"/>
<%
		}
		else
		{
			if(sConn.equals("")) {
            sInsState = db.setData(sName, pwd, fname, lname, email, pno, address, state, pin, cno);
		%>
<%String x=sInsState;%>
 <%
    if(x.equals(y))
		{

%>
<jsp:forward page="success.jsp"/>
<%}
    else
		{
%>
<jsp:forward page="signup1.jsp"/>
<%}
	
			}
	}
	}%>
</body>
</html>

