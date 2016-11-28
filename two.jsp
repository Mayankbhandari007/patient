<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>patient Information</title>
</head>
<body>

 <%@ page language="java" %>
        <%@ page import= "java.sql.*" %>
         <%@ page import="java.sql.DriverManager" %>
         <%@ page import="java.sql.Statement" %>         
         <%@ page import ="java.sql.Connection" %>       
<%

String uname = request.getParameter("uname");
String lname= request.getParameter("lname");
String age=request.getParameter("f_age");
String f_dob= request.getParameter("f_dob");
String f_sex=request.getParameter("f_sex");
String phn=request.getParameter("phn");
String text_area=request.getParameter("text_area");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patient", "root", "");
System.out.println("connection done");
Statement st =null;
st=con.createStatement();
ResultSet rs;
int i=st.executeUpdate("insert into info values ('" + uname + "','" + lname + "','" + age + "','" + f_dob + "','" + f_sex + "','" + phn + "','" + text_area + "')");

out.print("Registration Successfull");



%>
<form action>
Get patient details <a href="three.jsp">Click Here</a>">


</form>
</body>
</html>