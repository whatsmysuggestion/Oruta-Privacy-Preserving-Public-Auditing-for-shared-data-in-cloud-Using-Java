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
String owneremail = request.getParameter("owneremail");
out.println(owneremail);
String ownername=null;

//String a="connected";

String password = request.getParameter("password");

//System.out.println(clientemail);
//System.out.println(password);
//System.out.println(a);

try{
	 Connection con=databasecon.getconnection();
	st = con.createStatement();
	String qry =" select  * from owner where owneremail='"+owneremail+"' and password='"+password+"'  "; 
	rs = st.executeQuery(qry);
	if(!rs.next()){
	out.println("Enter correct emailId, password");
	
	}
	else{
	ownername=rs.getString("ownername");
	session.setAttribute("ownername",ownername);
		response.sendRedirect("owner_fileupload.jsp");	
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


