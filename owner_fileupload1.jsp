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
//String fname=request.getParameter("fname");
//session.setAttribute("fname",fname);
String id=request.getParameter("id");
session.setAttribute("id",id);
String date=request.getParameter("date");
session.setAttribute("date",date);
String fkey=request.getParameter("fkey");
session.setAttribute("fkey",fkey);


%>

<table width="1000"  height="600" >

<th colspan="4" align="center"><font color="#000000" face="Times New Roman, Times, serif" ><strong>WELCOME:</strong></font><font color="#99CC33" face="Times New Roman, Times, serif" size="+1"><strong><%=ownername%></strong></font></th>

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
						<li><a href="logout.jsp" style="text-decoration:none"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>LOGOUT</strong></font></a></li>
				
						
						
						
						
						</td>
						
						<td>
			<form name="form" method="post" action="owner_fileupload2.jsp" enctype="multipart/form-data">
			
			
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
                  <td><input type="text" name="id" value="<%=id%>" ></td>
                </tr>
               
                <tr> 
                  <td ><font color="#FFFFFF" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>Date:</strong></font></td>
                  <td><input type="text" name="date" value="<%=date%>"></td>
                </tr>
                
                <tr> 
                  <td ><font color="#FFFFFF" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>Fkey:</strong></font></td>
                  <td><input type="text" name="fkey" value="<%=fkey%>" ></td>
                </tr>
				<tr> 
                  <td ><font color="#FFFFFF" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>File:</strong></font></td>
                  <td><input type="file" name="file" ></td>
                </tr>
				
				
                <tr> 
                  <td><input type="submit" value="Upload" class="sub6"></td>
                  <td><input type="reset" value="Clear" class="sub4"></td>
                </tr>
			
			
			</table>
			
			 
			
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