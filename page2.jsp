<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<%@page import="RSA.*"%>
<%@page import="java.math.BigInteger.*"%>
<%@page import="java.util.Random.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>

<%

String target=request.getParameter("a");

RSA rsa = new RSA();  

//out.println("Plain text"+target);

byte[] encrypted = rsa.encrypt(target.getBytes());  



//out.println("Encrypting String: " + target);  
//out.println("String in Bytes: " +bytesToString(byte[] encrypted));  


out.println(encrypted);




byte[] decrypted = rsa.decrypt(encrypted);


//out.println("Decrypted String in Bytes: " +  bytesToString(decrypted)); 

out.println( new String(decrypted));





 

//out.println("Encrypted String in Bytes: " + bytesToString(encrypted));                  
 


%>




</body>
</html>
