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
						
						<td width="200">
						
						
						
						
						
						<li><a href="" style="text-decoration:none"><font color="#FFFF00" face="Times New Roman, Times, serif" size="+1"><strong>LOGIN</strong></font></a></li>
						<br>
						<br>
						<li><a href="index1.jsp" style="text-decoration:none"><font color="#FFFFFF" face="Times New Roman, Times, serif" size="+1"><strong>HOME</strong></font></a></li>
						
						
						
						
						
						
						</td>
						
						
						
						<td>
			<form name="form1" action="usercheck.jsp" method="post">
			<table  width="300" height="300">
			
			<tr><td><font color="#FFFF00" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>user_Email</strong></font></td><td><input type="text" name="email"></td></tr>
			
			<tr><td><font color="#FFFF00" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>user_Password</strong></font></td><td><input type="password" name="password"></td></tr>
			
			<tr><td><input type="submit" value="Signin" class="sub6"></td><td><a href="user_registration.jsp" style="text-decoration:none"><font color="#00FF33" face="Geneva, Arial, Helvetica, sans-serif"><strong>NewUser?</strong></font></a></td></tr>
			
			</table>
			</form>
			</td>
			
			
			
			</td><td width="200">
			
			
						
						<a href="tpa.jsp" style="text-decoration:none"><font color="#00FF33" face="Times New Roman, Times, serif" size="+1"><strong>THIRDPARTYAUDITOR</strong></font></a>
						
						
			
			</td>
			
			</td><td width="200">
			
			
						
						<a href="tpalogin.jsp" style="text-decoration:none"><font color="#00FF33" face="Times New Roman, Times, serif" size="+1"><strong>TPA_LOGIN</strong></font></a>
						
						
			
			</td>
			
			<td>
			
			<form name="form" action="ownercheck.jsp" method="post">
			<table align="right" width="300" height="300">
			
			<tr><td><font color="#FFFF00" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>dataOwner_Email</strong></font></td><td><input type="text" name="owneremail"></td></tr>
			
			<tr><td><font color="#FFFF00" face="Geneva, Arial, Helvetica, sans-serif" size="-1"><strong>dataOwner_Password</strong></font></td><td><input type="password" name="password"></td></tr>
			
			<tr><td><input type="submit" value="Signin" class="sub6"></td><td><a href="dataOwner_registration.jsp" style="text-decoration:none"><font color="#00FF33" face="Geneva, Arial, Helvetica, sans-serif"><strong>DataOwner_Registration?</strong></font></a></td></tr>
			
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