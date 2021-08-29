<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  %>
<%@page import=" java.security.MessageDigest"%>
<%@page import="java.util.Random"%>
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
						
						<td>
						
						
						<form name="form" method="post" action="" >
						
						
						<table align="left"  width="800" >
						<th colspan="4" align="center"><font color="#000000" face="Times New Roman, Times, serif" ><strong>WELCOME:</strong></font><font color="#99CC33" face="Times New Roman, Times, serif" size="+1"><strong><%=username%></strong></font></th>
						<tr>
						<TH><div align="center"><font color="#FFFFFF"  size="-1" style="times new roman">ID</font> 
              </div></TH>
            <TH><div align="center"><font color="#FFFFFF"  size="-1" style="times new roman">CLIENTNAME</font> 
              </div></TH>
			  
              <TH><div align="center"><font color="#FFFFFF"  size="-1" style="times new roman">FILENAME</font> 
              </div></TH>
            <TH><div align="center"><font color="#FFFFFF"  size="-1" style="times new roman">PUBLICKEY</font> 
              </div></TH>
			  
			  
			  </tr>
			  <%	
ResultSet rs=null;
PreparedStatement ps=null;

			String id=null;
			String clientname3=null;
			String fkey=null;
			String fname=null;
			String fkey13=null;
			
			try
			{
			Class.forName("com.mysql.jdbc.Driver");	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud3","root", "root");
	ps=con.prepareStatement("select * from d3");
rs=ps.executeQuery();
while (rs.next())
{
id=rs.getString("id"); 
clientname3=rs.getString("clientname3");
fkey=rs.getString("fkey");
fkey13=rs.getString("fkey13");
session.setAttribute("fkey13",fkey13);
fname=rs.getString("fname");

%>
			<tr> 
                   <td><div align="center"><font color="#0066CC"   size="+1" face="Times New Roman, Times, serif" > 
                <%=id%> </font></div></td>
            <td><div align="center"><font color="#0066CC"   size="+1" face="Times New Roman, Times, serif" > 
                <%=clientname3%> </font></div></td>
				<td><div align="center"><font  color="#0066CC"  size="+1" face="Times New Roman, Times, serif" > 
                <%=fname%> </font></div></td>
				<td><div align="center"><font  color="#0066CC"  size="+1" face="Times New Roman, Times, serif" > 
                <%=fkey%> </font></div></td>
				<td><div align="center"><a href="filedownload3.jsp?<%=id%>" style="text-decoration:none"><font  color="#0066CC"  size="+1" face="Times New Roman, Times, serif" > 
                DOWNLOAD</a> </font></div></td>
				 </tr>
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