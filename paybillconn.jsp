<html>
<head>
</head>
<body   bgcolor="#CCFF99"><pre>


                           <b>     CARD NOT INVALID

					   Enter Valid No</b>

</pre>
<%@ page import = "java.sql.*, chandu.dbConn5" %>

<%! 
    ResultSet rs ;
   
	dbConn5 db ;
    String sConn;
    public void jspInit() {
        db = new dbConn5();
        sConn = db.DBConnect();
        rs = null; 
 //  String us=(String)session.getAttribute("user");
	}
%>
<a href="login.jsp">Home</a>

<%
    

	String sID = request.getParameter("ID");
    if(sID.equals("SUBMIT")) {
      String bno = request.getParameter("bnum");
       int amt = (new Integer(request.getParameter("amt"))).intValue();
	   String bank = request.getParameter("bank");
       String cardno = request.getParameter("cardno");
	   

String y="Data updation successfully";
		int s=0;
		int z=0;
		
		String sInsState =null;
        



		 rs= db.getData1();
while(rs.next()){
	if(rs.getString(1).equals(bno)&&(rs.getInt(2)==amt))
	 {
		z=1;
        }
	if(z==1)
	{
	if((rs.getString(3)==null))
	{
		s=1;
	}
	}
	}
if((s!=1))
		{
	%>
	<jsp:forward page="paybill2.jsp"/> 
	<%
		}
	if(z!=1)
		{
		%>
<jsp:forward page="paybill1.jsp"/>
<%
		}
		else
		{
		if(sConn.equals("")) {
            sInsState = db.setData(bno, amt, bank, cardno);
        }%>
<%String x=sInsState;%>
 <%
    if(x.equals(y))
		{%>
<jsp:forward page="success1.jsp"/>
<%}
	
	
		}	
	}
	%>

</body>
</html>

