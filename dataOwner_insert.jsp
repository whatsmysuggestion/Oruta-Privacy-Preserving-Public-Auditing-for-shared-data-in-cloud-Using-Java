<%@ page import="java.text.ParseException.*"%>
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
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


String ownerid=request.getParameter("ownerid");

 String ownername=request.getParameter("ownername");
 
 
 
 
 
 
 String owneremail=request.getParameter("owneremail");
 
 
 String location=request.getParameter("location");
 
 String password=request.getParameter("password");
 
 
 String date=request.getParameter("date");
 

 
try
{



Connection con=databasecon.getconnection();
psmt1=con.prepareStatement("insert into owner   values(?,?,?,?,?,?)");


psmt1.setString(1,ownerid);
session.setAttribute("ownerid",ownerid);
psmt1.setString(2,ownername);
session.setAttribute("ownername",ownername);
psmt1.setString(3,owneremail);
session.setAttribute("owneremail",owneremail);
psmt1.setString(4,location);
session.setAttribute("location",location);
psmt1.setString(5,date);
session.setAttribute("date",date);
psmt1.setString(6,password);



psmt1.executeUpdate();






response.sendRedirect("dataOwner_registration.jsp?message=success");


}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}









%>



</body>
</html>