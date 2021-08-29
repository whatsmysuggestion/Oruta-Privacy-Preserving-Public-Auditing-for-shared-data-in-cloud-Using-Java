<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page import="java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  %>
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
String userid1=(String)session.getAttribute("userid");

String name1=(String)session.getAttribute("name");








%>
<table width="1000"  height="600" >


<tr>
						
						<td width="200">
						
						
						
						
						
						<li><a href=""><font color="#FFFF00" face="Times New Roman, Times, serif" size="+1"><strong>USERDETAILS</strong></font></a></li>
						<br>
						<br>
						<li><a href="index1.jsp"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>HOME</strong></font></a></li>
						<br>
						<br>
						<li><a href="javascript:history.go(-1)"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>BACK</strong></font></a></li>
						<br>
						<br>
						<li><a href="filedetails2.jsp"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>FILEDETAILS</strong></font></a></li>
						<br>
						<br>
						<li><a href="logout.jsp"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>LOGOUT</strong></font></a></li>
						
						
						
						
						
						</td>
						
						
						
						<td>
						
						
						<form name="form" method="post" action="" >
						
						
						<table align="left"  width="800" >
						<th colspan="8" align="center"><font color="#FFFFFF" face="Times New Roman, Times, serif" ><strong>WELCOME:</strong></font><font color="#FFFF00" face="Times New Roman, Times, serif" size="+1"><strong><%=name1%></strong></font></th>
						<tr>
						<TH><div align="center"><font color="#FFFFCC"  size="-1" style="times new roman">USERID</font> 
              </div></TH>
            <TH><div align="center"><font color="#FFFFCC"  size="-1" style="times new roman">NAME</font> 
              </div></TH>
            <TH><div align="center"><font color="#FFFFCC"  size="-1" style="times new roman">AGE</font> 
              </div></TH>
            <TH><div align="center"><font color="#FFFFCC"  size="-1" style="times new roman">GENDER</font> 
              </div></TH>
            <TH><div align="center"><font color="#FFFFCC"  size="-1" style="times new roman">EMAIL</font> 
              </div></TH>
            <TH><div align="center"><font color="#FFFFCC"  size="-1" style="times new roman">PASSWORD</font> 
              </div></TH>
			   <TH><div align="center"><font color="#FFFFCC"  size="-1" style="times new roman">MOBILE</font> 
              </div></TH>
			  
			  </tr>
			  <%	
ResultSet rs=null;
PreparedStatement ps=null;

			String userid=null;
			String name=null;
			String age=null;
			String gender=null;
			String email=null;
			String password=null;
			String mobile=null;
			
			
			try
			{
			Connection con=databasecon.getconnection();
			ps=con.prepareStatement("select * from user where userid='"+userid1+"' and name='"+name1+"'");
rs=ps.executeQuery();
while (rs.next())
{
userid=rs.getString("userid"); 
name=rs.getString("name");
age=rs.getString("age");
gender=rs.getString("gender");
email=rs.getString("email");
password=rs.getString("password");
mobile=rs.getString("mobile");


%>
			<tr> 
                   <td><div align="center"><font color="#0000FF"   size="+1" face="Times New Roman, Times, serif" > 
                <%=userid%> </font></div></td>
            <td><div align="center"><font color="#0000FF"   size="+1" face="Times New Roman, Times, serif" > 
                <%=name%> </font></div></td>
            <td><div align="center"><font  color="#0000FF"  size="+1" face="Times New Roman, Times, serif" > 
                <%=age%> </font></div></td>
            <td><div align="center"><font color="#0000FF"   size="+1" face="Times New Roman, Times, serif" > 
                <%=gender%> </font></div></td>
            <td><div align="center"><font  color="#0000FF"  size="+1" face="Times New Roman, Times, serif" > 
                <%=email%> </font></div></td>
				 <td><div align="center"><font  color="#0000FF"  size="+1" face="Times New Roman, Times, serif" > 
                <%=password%> </font></div></td>
				 <td><div align="center"><font  color="#0000FF"  size="+1" face="Times New Roman, Times, serif" > 
                <%=mobile%> </font></div></td>
				
				 
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
						
						</tr>


	
</table>

<!-- Start Page Footer -->
<!-- Do not remove read http://www.freewebsitetemplates.com/termsofuse/ -->
<div id="page_footer">
<%@ include file="footer.jsp"%>
</div>

<!-- //End Page Footer -->


</body>
</html>