
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ page import ="java.sql.*" %>
<title>patient Information</title>
<script type="text/javascript">
 function openPage(pageURL)
 {
 //window.location.href = pageURL;
 }
 </script>
</head>
<body>

<form name="reg1" method="post" action="four.jsp">
Enter name:<input type="text" placeholder="Enter keyword" name="uname">
<input type="button" value="search patient" name="button1"  onclick="openPage('four.jsp')"/>
        <%@ page language="java" %>
        <%@ page import="java.sql.*" %>
         <%@ page import="javax.sql.*" %>
         
         
          
       
<%
String uname = request.getParameter("uname");
out.println(uname);
String lname= request.getParameter("lname");
String age=request.getParameter("f_age");
String f_dob= request.getParameter("f_dob");
String f_sex=request.getParameter("f_sex");
String phn=request.getParameter("phn");
String text_area=request.getParameter("text_area");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patient", "root", "");
System.out.println("connection done");

String query="select * from info";
String str="<table><tr><th>patient name</th><th>last name</th><th>age</th><th>Dateof birth</th><th>Gender</th><th>phone num</th><th>basic info</th></tr>";
PreparedStatement stm=con.prepareStatement(query);

ResultSet rs = stm.executeQuery();
while(rs.next())
{
	str+= "<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td></tr>";
}
str+="</table>";
out.println(str);

%>




</body>
</html>