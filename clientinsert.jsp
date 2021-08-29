<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>

<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">

</script>
</head>

<body>



 
<%


PreparedStatement psmt1=null;


String clientid=request.getParameter("clientid");

 String clientname=request.getParameter("clientname");
 
 
 
 
 
 
 String clientemail=request.getParameter("clientemail");
 
 
 String clientlocation=request.getParameter("clientlocation");
 
 String password=request.getParameter("password");
 
 
 String date=request.getParameter("date");
 

 
try
{



Connection con=databasecon.getconnection();
psmt1=con.prepareStatement("insert into client   values(?,?,?,?,?,?)");


psmt1.setString(1,clientid);
session.setAttribute("clientid",clientid);
psmt1.setString(2,clientname);
session.setAttribute("clientname",clientname);
psmt1.setString(3,clientemail);
session.setAttribute("clientemail",clientemail);
psmt1.setString(4,clientlocation);
session.setAttribute("clientlocation",clientlocation);
psmt1.setString(5,date);
session.setAttribute("date",date);
psmt1.setString(6,password);



psmt1.executeUpdate();






response.sendRedirect("client_registration.jsp?message=success");


}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}









%>



</body>
</html>