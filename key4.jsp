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
		
		
		String name=(String)session.getAttribute("name");
		String userid=(String)session.getAttribute("userid");
		String ownername=(String)session.getAttribute("ownername");
		String id=(String)session.getAttribute("id");
		
		%>

<table width="1000"  height="600" >


<tr>
						
						<td width="250">
						
						
						
						
						<li><a href="" style="text-decoration:none"><font color="#FFFF00" face="Times New Roman, Times, serif" size="+1"><strong>KEYDOWNLOAD</strong></font></a></li>
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

//RSA rsa = new RSA();
			//String id=(String)session.getAttribute("id");
//session.setAttribute("id",id);
String fkey1=null;
//String fname=null;

try
{
//String t=null;
//String t1=null;

			Connection con=databasecon.getconnection();
			PreparedStatement ps=con.prepareStatement("select * from file where id='"+id+"' and  clientname='"+ownername+"'");
ResultSet rs = ps.executeQuery();
while(rs.next())
{
//fname = rs.getString("fname");
//session.setAttribute("fname",fname);
//Blob b1 = rs.getBlob("b1");
//byte [] b= b1.getBytes(1,(int)b1.length());
//t=new String(b);
//session.setAttribute("t",t);

//byte[] encrypted = rsa.encrypt(t.getBytes());
//t1=new String(t1);
//byte[] decrypted = rsa.decrypt(encrypted);
fkey1=rs.getString("fkey1");
}


	con.close();
		ps.close();



}




catch(Exception ex)
{

out.println("Error in connection : "+ex);

}
 
%>
						<td>
						
						<form name="form" action="filedownload8.jsp" method="post" onsubmit="return validation()">
						 <table width="300" height="300" align="left"  >
		   <th colspan="4" align="center"><font color="#000000" face="Times New Roman, Times, serif" ><strong>WELCOME:</strong></font><font color="#99CC33" face="Times New Roman, Times, serif" size="+1"><strong><%=name%></strong></font></th>
					
		    <tr> 
                  <td colspan="2" align="center"><font size="2"><b> 
                   
                    </b></font></td>
                </tr>
		
		
		
		<tr> 
                  <td colspan="2"><strong><font color="#FFFF00" > 
                    KEY DOWNLOAD</font></strong></td>
                </tr>
		
		
		
		
				
				
				
		   
				
				
				
<tr> 
                  <td><font color="#660066" face="Times New Roman, Times, serif" size="+1">FileId:</font></td>
                  <td><input  type="text" name="id" value="<%=id%>" ></td>
                </tr>
				<tr> 
                  <td><font color="#660066" face="Times New Roman, Times, serif" size="+1">PrivateKey:</font></td>
                  <td><input  type="text" name="fkey1" value="<%=fkey1%>" ></td>
                </tr>  
            				
				
				
     
	 
	 <tr> 
                  <td><input type="submit" value="SUBMIT" class="sub6" ></td>
                  <td><input type="reset" value="RESET" class="sub6" ></td>
                </tr>

		
		
			 
				  
				</table>			
						</form>
						
						
						
						</td>
						
						
						
				<td><img src="IMAGE/key.png" height="200" width="200"></td>		
			
	
</table>




<!-- Start Page Footer -->
<!-- Do not remove read http://www.freewebsitetemplates.com/termsofuse/ -->
<div id="page_footer">
<%@ include file="footer.jsp"%>
</div>

<!-- //End Page Footer -->


</body>
</html>