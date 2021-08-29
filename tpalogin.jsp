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

<table width="1000"  height="575" >


<tr>
	
	<td >
						
						
						
						
						<li><a href="" style="text-decoration:none"><font color="#000099" face="Times New Roman, Times, serif" size="+1"><strong>REGISTER</strong></font></a></li>
						<br>
						<br>
						<li><a href="index1.jsp" style="text-decoration:none"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>HOME</strong></font></a></li>
						<br>
						<br>
						<li><a href="javascript:history.go(-1)" style="text-decoration:none"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>BACK</strong></font></a></li>
						
						
						
						
						
						</td>
						
	
						
	<td>
	
	 <form name="form" method="post" action="tpacheck.jsp" onsubmit="return validation()">
		   
		   <table width="300" height="300" align="right"  >
		   
		   
		
		
		<tr> 
                  <td colspan="2"><strong><font color="#FFFF00" > 
                    TPA LOGIN</font></strong></td>
                </tr>
		
		
		
		
		
		   
				
				
				
<tr> 
                  <td><font color="#660066" face="Times New Roman, Times, serif" size="+1">Username:</font></td>
                  <td><input  type="text" name="username" ></td>
                </tr>
				<tr> 
                  <td><font color="#660066" face="Times New Roman, Times, serif" size="+1">Password:</font></td>
                  <td><input  type="password" name="password" ></td>
                </tr>  
            				
				
				
     
	 
	 <tr> 
                  <td><input type="submit" value="SUBMIT" class="sub6" ></td>
                  <td><input type="reset" value="RESET" class="sub6" ></td>
                </tr>

		
		</table>
		   
		   

		   </form>
	
	
	
	</td>
	
	
					
				<td><img src="IMAGE/cloud.png" height="300" width="300"></td>		
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