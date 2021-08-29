<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import="RSA.*"%>
<%@page import="java.math.BigInteger.*"%>
<%@page import="java.util.Random.*"%>
<%@page import="ende.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1" />
<meta http-equiv="Content-Style-Type" content="text/css" />

<title>
Oruta: Privacy-Preserving Public Auditing for
Shared Data in the Cloud
</title>

<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
<style type="text/css">
		content_main2.C1{background-color:#CCCCCC;}
		form.f1{background-color:#CCCCCC;}
		form1.f5{background-color:#CCCCCC;}
		input.sub{background-color:#009900;}
		input.sub1{background-color:#990000;}
		input.sub2{background-color:#009900;}
		input.sub3{background-color:#CC3366;}
		input.sub4{background-color:#FF6666;}
		input.sub5{background-color:#99FFFF;}
		input.sub6{background-color:#FFFFFF;}
		input.sub7{background-color:#000000;}
		content_maina1.a{background-color:#CCCCCC;}
		td.d{color:#FF9900;}
		tr.r{color:#FF9900;}
		tr.r1{color:#000000;}
		</style>
</head>

<body>
<div id="page_header">
	<%@ include file="header.jsp"%>
	
		</div>
		<%
		
		
		String username=(String)session.getAttribute("username");
		String enctext=null;
		%>

<table width="1000"  height="600" >


<tr>
						
						<td width="250">
						
						
						
						
						<li><a href="" style="text-decoration:none"><font color="#FFFF00" face="Times New Roman, Times, serif" size="+1"><strong>FILEDOWNLOAD</strong></font></a></li>
						<br>
						<br>
						<li><a href="index1.jsp" style="text-decoration:none"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>HOME</strong></font></a></li>
						<br>
						<br>
						<li><a href="javascript:history.go(-1)" style="text-decoration:none"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>BACK</strong></font></a></li>
						<br>
						<br>
						<li><a href="logout.jsp" style="text-decoration:none"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>LOGOUT</strong></font></a></li>
						
						
						
						
						
						</td>
						 <%	

RSA rsa = new RSA();
			String id=request.getQueryString();
session.setAttribute("id",id);
String fname=null;

try
{
EBCDIC a=new EBCDIC();
String t=null;
String t1=null;

			Class.forName("com.mysql.jdbc.Driver");	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud3","root", "root");
			PreparedStatement ps=con.prepareStatement("select * from d3 where id='"+id+"'");
ResultSet rs = ps.executeQuery();
while(rs.next())
{
fname = rs.getString("fname");
session.setAttribute("fname",fname);
Blob b3 = rs.getBlob("b3");
byte [] b= b3.getBytes(1,(int)b3.length());
t=new String(b);
session.setAttribute("t",t);

//byte[] encrypted = rsa.encrypt(t.getBytes());
//t1=new String(t1);
//byte[] decrypted = rsa.decrypt(encrypted);

%>
						<td>
						
						<form name="form" action="key3.jsp" method="post" onsubmit="return validation()">
						<table align="left">
						<th colspan="4" align="center"><font color="#000000" face="Times New Roman, Times, serif" ><strong>WELCOME:</strong></font><font color="#99CC33" face="Times New Roman, Times, serif" size="+1"><strong><%=username%></strong></font></th>
				
						<tr><td> <textarea    name="b" cols="50"  rows="5" ><%=a.encrypt(t)%></textarea></td>
   
                
              
             <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="DECRYPT" class="sub2"> </td>
			 
						
						
			 
				   <%

}


	con.close();
		ps.close();



}




catch(Exception ex)
{

out.println("Error in connection : "+ex);

}
 
%>						
			
				</table>			
						</form>
						
						
						
						</td>
						
						
						
						
			
	
</table>


<!-- Start Page Footer -->
<!-- Do not remove read http://www.freewebsitetemplates.com/termsofuse/ -->
<div id="page_footer">
<%@ include file="footer.jsp"%>
</div>

<!-- //End Page Footer -->


</body>
</html>