<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">

</script>
</head>

<body>

<%


 
ResultSet rs=null;
PreparedStatement ps=null;

//String id1=(String)session.getAttribute("id");

int count=0;

int a=3;


try
{
Connection con = databasecon.getconnection();
ps=con.prepareStatement(" select count(*) from tpa ");
rs=ps.executeQuery();
while (rs.next())
{
count=rs.getInt("count(*)"); 


if(count==a)


{

out.println("Registration closed");


}

else


{



//int n;
//session.getAttribute("userid", n );
String id=request.getParameter("id");
String username=request.getParameter("username");
String password=request.getParameter("password");


PreparedStatement psmt1=null;
try{

con = databasecon.getconnection();
psmt1=con.prepareStatement("insert into tpa  values(?,?,?)");
psmt1.setString(1,id);
psmt1.setString(2,username);
psmt1.setString(3,password);



psmt1.executeUpdate();
response.sendRedirect("tpa.jsp?message=success");

con.close();
psmt1.close();

}catch(Exception ex){

out.println("Error in connection : "+ex);

}

}

}


	con.close();
		ps.close();



}




catch(Exception ex)
{

out.println("Error in connection : "+ex);

}



%>



</body>
</html>