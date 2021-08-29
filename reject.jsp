<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  %>
<%@page import=" java.security.MessageDigest"%>
<%@page import="java.util.Random"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>
Oruta: Privacy-Preserving Public Auditing for
Shared Data in the Cloud
</title>


</head>

<body>


<%

String userid=request.getQueryString();
String status="rejected";

try
{

Connection con=databasecon.getconnection();
PreparedStatement ps=con.prepareStatement("update user set status='"+status+"' where userid='"+userid+"' ");


ps.executeUpdate();
response.sendRedirect("userdetails1.jsp");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>						
			
				


</body>
</html>