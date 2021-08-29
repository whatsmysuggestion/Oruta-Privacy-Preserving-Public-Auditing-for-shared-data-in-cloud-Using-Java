<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%

Statement st = null;
ResultSet rs = null;
String username = request.getParameter("username");

String password = request.getParameter("password");

String a="tpa1";
String b="tpa2";
String c="tpa3";

try{
	 Connection con = databasecon.getconnection();
	st = con.createStatement();
	String qry =" select  * from tpa where username='"+username+"' and password='"+password+"' "; 
	rs = st.executeQuery(qry);
	if(!rs.next()){
	out.println("Enter correct email, password");
	
	}
	
	
	else{
	    username=rs.getString("username");
		session.setAttribute("username",username);
		if(a.equals(username))
		{
		response.sendRedirect("fileblock1.jsp");
		}
		else if(b.equals(username))
		{
		response.sendRedirect("fileblock2.jsp");
		}
		else
		{
		response.sendRedirect("fileblock3.jsp");
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


