
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat"%>	 
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


String userid=request.getParameter("userid");

 String name=request.getParameter("name");
 
 
 String status="revoked";
 
 String age=request.getParameter("age");
 
 String email=request.getParameter("email");
 
 
 String password=request.getParameter("password");
 
 
 String mobile=request.getParameter("mobile");
 
 String gender=request.getParameter("gender");
 
 
 

String ownername=request.getParameter("ownername");




try
{



Connection con=databasecon.getconnection();
psmt1=con.prepareStatement("insert into user   values(?,?,?,?,?,?,?,?,?)");


psmt1.setString(1,userid);
session.setAttribute("userid",userid);
psmt1.setString(2,name);
session.setAttribute("name",name);
psmt1.setString(3,age);
session.setAttribute("age",age);
psmt1.setString(4,gender);
session.setAttribute("gender",gender);
psmt1.setString(5,email);
session.setAttribute("email",email);
psmt1.setString(6,password);
session.setAttribute("password",password);
psmt1.setString(7,mobile);
session.setAttribute("mobile",mobile);
psmt1.setString(8,ownername);
session.setAttribute("ownername",ownername);
psmt1.setString(9,status);
session.setAttribute("status",status);





psmt1.executeUpdate();






response.sendRedirect("user_registration.jsp?message=success");


}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}





%>



</body>
</html>