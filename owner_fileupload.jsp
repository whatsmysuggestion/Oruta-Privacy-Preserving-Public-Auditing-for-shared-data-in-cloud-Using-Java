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

String ownername=(String)session.getAttribute("ownername");

%>

<table width="1000"  height="600" >

<th colspan="4" align="center"><font color="#FF0000" face="Times New Roman, Times, serif" ><strong>WELCOME:</strong></font><font color="#99CC33" face="Times New Roman, Times, serif" size="+1"><strong><%=ownername%></strong></font></th>

<tr>
						
						<td width="350">
						
						
						
						
						<li><a href="" style="text-decoration:none"><font color="#FFFF00" face="Times New Roman, Times, serif" size="+1"><strong>FILEUPLOAD</strong></font></a></li>
						<br>
						<br>
						<li><a href="index1.jsp" style="text-decoration:none"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>HOME</strong></font></a></li>
						<br>
						<br>
						<li><a href="javascript:history.go(-1)" style="text-decoration:none"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>BACK</strong></font></a></li>
						<br>
						<br>
						<li><a href="userdetails1.jsp" style="text-decoration:none"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>PERMISSION</strong></font></a></li>
						<br>
						<br>
						<li><a href="logout.jsp" style="text-decoration:none"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>LOGOUT</strong></font></a></li>
				
						
						
						
						
						</td>
						
						<td>
			<form name="form" method="post" action="owner_fileupload1.jsp">
			<%
			
			
			
			
	 java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);


int x=(int)(Math.random()*10000);
String fkey=Integer.toString(x);


int y=(int)(Math.random()*100);
String fkey1=Integer.toString(y);
session.setAttribute("fkey1",fkey1);
			
			
			
			int n=0,s=0;
			Connection con=null;
			ResultSet rs=null;
			Statement st=null;
			String sql="select max(id) from file";
			try
			{
			con=databasecon.getconnection();
			st=con.createStatement();
			rs=st.executeQuery(sql);
			if(rs.next())
			{
			if(rs.getInt(1)==0)
			n=1;
			else
			n=rs.getInt(1)+1;
			session.setAttribute("id",n);
			}
			%>
			
			<table height="300" width="300">
			 <tr> 
                  <td colspan="2" align="center"><font size="2"><b> 
                    <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='#00FF66'><blink>Uploaded Successfully !</blink></font>");
                                                       }
                                               %>
                    </b></font></td>
                </tr>
			
			<tr> 
                  <td ><font color="#FFFFFF" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>Id:</strong></font></td>
                  <td><input type="text" name="id" value="<%=n%>" ></td>
                </tr>
               
                <tr> 
                  <td ><font color="#FFFFFF" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>Date:</strong></font></td>
                  <td><input type="text" name="date" value="<%=strDateNew1%>"></td>
                </tr>
                
                <tr> 
                  <td ><font color="#FFFFFF" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>Fkey:</strong></font></td>
                  <td><input type="text" name="fkey" value="<%=fkey%>" ></td>
                </tr>
				
				
                <tr> 
                  <td><input type="submit" value="Upload" class="sub6"></td>
                  <td><input type="reset" value="Clear" class="sub4"></td>
                </tr>
			
			
			</table>
			
			  <%
}
catch(Exception e)
	{
		System.out.println(e);
	}
	  finally
	{
		con.close();
		st.close();
	}
 
%>
			
			</form>
			
			
			
			</td>
						
						
						<td>
			<img src="IMAGE/file.png" height="200" width="200" align="right">
			
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