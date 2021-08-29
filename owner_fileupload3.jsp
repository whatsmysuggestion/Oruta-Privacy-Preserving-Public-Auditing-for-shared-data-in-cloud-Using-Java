<%@ page import="java.util.text.DateFormat.*"%>
<%@page import="java.sql.*,java.lang.*,java.io.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 
<%@ page import="java.sql.*,databaseconnection.*"%>
<%@page import=" java.security.*"%>
<%@page import="javax.crypto.*"%>


<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">

</script>
</head>

<body>

<%
	   String saveFile="";
//String contentType=request.getAttribute("file");
String contentType = request.getContentType();
if((contentType != null)&&(contentType.indexOf("multipart/form-data") >= 0)){
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while(totalBytesRead < formDataLength){
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File ff = new File(saveFile);
String file_name=ff.getName();
session.setAttribute("file_name",filename);
FileOutputStream fileOut = new FileOutputStream(ff);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();

	    
%>




<%


String f=request.getParameter("file");
//session.setAttribute("f",f);

String a=request.getRealPath("/")+"\\file\\";
String fname1=a+f;




File ff = new File(saveFile);
String file_name1=ff.getName();
String date2=(String)session.getAttribute("date");
out.print(date2);
String fkey2=(String)session.getAttribute("fkey");
out.println(fkey2);
String id2=(String)session.getAttribute("id");
out.println(id2);
//String fname2=(String)session.getAttribute("fname");
//out.println(fname2);
String clientname1=(String)session.getAttribute("clientname");
out.println(clientname1);
String clientname2=(String)session.getAttribute("clientname");
out.println(clientname2);

String clientname3=(String)session.getAttribute("clientname");
out.println(clientname3);
String fkey11=(String)session.getAttribute("fkey1");
String fkey12=(String)session.getAttribute("fkey1");
String fkey13=(String)session.getAttribute("fkey1");




FileInputStream fis=null;
		  FileOutputStream fout=null,fout1=null,fout2=null;
          File file = new File(saveFile);
		 
		 
		  double bytes=file.length();
		  double kb=bytes/1024;
		  String kbs=Double.toString(kb);
		  session.setAttribute("kbs",kbs);
		  
		  byte[] bFile = new byte[(int) file.length()];
 
            //convert file into array of bytes
	     fis = new FileInputStream(file);
		  fout = new FileOutputStream(request.getRealPath("/")+"\\temp\\file1.txt");
		 fout1 = new FileOutputStream(request.getRealPath("/")+"\\temp\\file2.txt");
		 fout2 = new FileOutputStream(request.getRealPath("/")+"\\temp\\file3.txt");
		
		int z=fis.available();
		int z1=z/3;
		int z2=z1+z1;
		
	    fis.read(bFile);
	    fis.close();
     
	     for (int i = 0; i <z1; i++) 
	        {
				  fout.write(bFile[i]);
				 

        
			}
			try{
Class.forName("com.mysql.jdbc.Driver");	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud1","root", "root");

String l = request.getRealPath("/")+"\\temp\\file1.txt";
String sql=null;
File image=new File(l);

PreparedStatement psmt1=con.prepareStatement("insert into d1(id,fname,date,b1,fsize1,fkey,clientname1,fkey11) values(?,?,?,?,?,?,?,?)");

psmt1.setString(1,id2);
psmt1.setString(2,file_name1);
psmt1.setString(3,date2);
fis=new FileInputStream(image);
psmt1.setBinaryStream(4, (InputStream)fis, (int)(image.length()));
double bytes1 = image.length();
		
		String fsize1=Double.toString(bytes1);
		psmt1.setString(5,fsize1);
		System.out.println(fsize1);
		psmt1.setString(6,fkey2);
		psmt1.setString(7,clientname1);
		psmt1.setString(8,fkey11);
psmt1.executeUpdate();

}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}

			
			for (int i = z1; i <z2; i++) 
	        {
	            fout1.write(bFile[i]);
	         
            }
		  			
	
	
	try{
Class.forName("com.mysql.jdbc.Driver");	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud2","root", "root");

String l = request.getRealPath("/")+"\\temp\\file2.txt";
String sql=null;
File image=new File(l);

PreparedStatement psmt1=con.prepareStatement("insert into d2(id,fname,date,b2,fsize2,fkey,clientname2,fkey12) values(?,?,?,?,?,?,?,?)");

psmt1.setString(1,id2);
psmt1.setString(2,file_name1);
psmt1.setString(3,date2);
fis=new FileInputStream(image);
psmt1.setBinaryStream(4, (InputStream)fis, (int)(image.length()));
double bytes2 = image.length();
		
		String fsize2=Double.toString(bytes2);
		psmt1.setString(5,fsize2);
		System.out.println(fsize2);
		psmt1.setString(6,fkey2);
		psmt1.setString(7,clientname2);
		psmt1.setString(8,fkey12);
psmt1.executeUpdate();

}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}

	
      
			 for (int i = z2; i <z; i++) 
			{
	        fout2.write(bFile[i]);
            }

try{
Class.forName("com.mysql.jdbc.Driver");	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloud3","root", "root");

String l = request.getRealPath("/")+"\\temp\\file3.txt";
String sql=null;
File image=new File(l);

PreparedStatement psmt1=con.prepareStatement("insert into d3(id,fname,date,b3,fsize3,fkey,clientname3,fkey13) values(?,?,?,?,?,?,?,?)");

psmt1.setString(1,id2);
psmt1.setString(2,file_name1);
psmt1.setString(3,date2);
fis=new FileInputStream(image);
psmt1.setBinaryStream(4, (InputStream)fis, (int)(image.length()));
double bytes3 = image.length();
		
		String fsize3=Double.toString(bytes3);
		psmt1.setString(5,fsize3);
		System.out.println(fsize3);
		psmt1.setString(6,fkey2);
		psmt1.setString(7,clientname3);
		psmt1.setString(8,fkey13);
psmt1.executeUpdate();

}
catch(Exception ex)
{

out.println("Error in connection : "+ex);

}


response.sendRedirect("owner_fileupload.jsp?message=success");







%>



</body>
</html>