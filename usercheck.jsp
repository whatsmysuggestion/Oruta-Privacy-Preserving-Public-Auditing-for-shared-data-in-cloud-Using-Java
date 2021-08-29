<%@page import="java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%

Statement st = null;
ResultSet rs = null;
String email = request.getParameter("email");

session.setAttribute("email",email);
String b = request.getParameter("password");
String name=null;
String userid=null;
String ownername=null;
String a="granted";
//String b="rejected";
String status=null;

try{
	 Connection con = databasecon.getconnection();
	st = con.createStatement();
	String qry =" select  * from user where email='"+email+"' and password='"+b+"' "; 
	rs = st.executeQuery(qry);
	if(!rs.next()){
	out.println("Enter correct emailId, password");
	
	}
	else{
	name=rs.getString("name");
	session.setAttribute("name",name);
	userid=rs.getString("userid");
	session.setAttribute("userid",userid);
	ownername=rs.getString("ownername");
	session.setAttribute("ownername",ownername);
	status=rs.getString("status");
	
	if(status.equals(a))
	{
		response.sendRedirect("userdetails.jsp");
		}
		else
		{
		out.println("you are not accepted by owner");
		}	
	}
	con.close();
	st.close();
}
catch(Exception ex){
	out.println(ex);
}
%>
</body>
</html>


