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

<table width="1000"  height="600" >


<tr>
						
						<td width="250">
						
						
						
						
						<li><a href="" style="text-decoration:none"><font color="#FFFF00" face="Times New Roman, Times, serif" size="+1"><strong>REGISTRATION</strong></font></a></li>
						<br>
						<br>
						<li><a href="index1.jsp" style="text-decoration:none"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>HOME</strong></font></a></li>
						<br>
						<br>
						<li><a href="javascript:history.go(-1)" style="text-decoration:none"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>BACK</strong></font></a></li>
						
						
						
						
						
						</td>
						
						
						
						<td>
						
						
						<form name="form" method="post" action="userinsert.jsp" onsubmit="return validation()">
						<%
			int n=0,s=0;
			Connection con=null;
			ResultSet rs=null;
			Statement st=null;
			String sql="select max(userid) from user";
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
			session.setAttribute("userid",n);
			}
			%>
						
						<table align="left"  width="400" height="400">
			<tr> 
                  <td colspan="2" align="center"><font size="2"><b> 
                    <%
                                                       String message=request.getParameter("message");
                                                       if(message!=null && message.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='#00FF66'><blink>Registered Successfully !</blink></font>");
                                                       }
                                               %>
                    </b></font></td>
                </tr>
			
			<tr> 
                  <td ><font color="#FFFFFF" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>Id:</strong></font></td>
                  <td><input type="text" name="userid" value="<%=n%>"   ></td>
                </tr>
                <tr> 
                  <td ><font color="#FFFFFF" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>Name:</strong></font></td>
                  <td><input type="text" name="name"></td>
                </tr>
                <tr> 
                  <td ><font color="#FFFFFF" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>Age:</strong></font></td>
                  <td><input type="text" name="age"></td>
                </tr>
                <tr> 
                  <td><font color="#FFFFFF" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>Gender:</strong></font></td>
                  <td><input type="radio"  name="gender" value="male"> <font color="#FFFFFF"><strong>Male</strong></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <input type="radio" name="gender" value="female"> <font color="#FFFFFF"><strong>Female</strong></font></td>
                </tr>
                <tr> 
                  <td ><font color="#FFFFFF" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>Email:</strong></font></td>
                  <td><input type="text" name="email" ></td>
                </tr>
                <tr> 
                  <td ><font color="#FFFFFF" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>Password:</strong></font></td>
                  <td><input type="password" name="password"></td>
                </tr>
				 <tr> 
                  <td ><font color="#FFFFFF" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>Mobile:</strong></font></td>
                  <td><input type="text" name="mobile"></td>
                </tr>
				 <tr> 
                  <td ><font color="#FFFFFF" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>OwnerName:</strong></font></td>
                  <td><input type="text" name="ownername"></td>
                </tr>
				
				
			<tr><td><input type="submit" value="Submit" class="sub6"></td><td><input type="reset" value="Reset" class="sub3"></td></tr>
			
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
			<img src="IMAGE/user.png" height="250" width="250" align="right">
			
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