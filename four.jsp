
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page import ="java.sql.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


</head>
<body>

        <%@ page import="java.sql.*" %>
         <%@ page import="javax.sql.*" %>
         <%@page import="java.sql.ResultSet"%>      
<%@ include file="three.jsp" %>
         <% 
         
         String uname1=request.getParameter("uname");
        // out.print(uname1);


//String strn="<table><tr><th>patient name</th><th>last name</th><th>age</th><th>Dateof birth</th><th>Gender</th><th>phone num</th><th>basic info</th></tr>";
//String query1= "select * from info where first_name=?";
Statement statement = con.createStatement();
//out.println(con);

ResultSet rsn =statement.executeQuery("select * from info where first_name = '" + uname1 + "'") ; 


if(!rsn.next()) {
    out.println("Sorry");
} else {
%>

<TABLE BORDER="1">
<TR>
   <TH>patient name</TH>
   <TH>last name</TH>
   <TH>age</TH>
   <TH>Date of birth</TH>
   <TH>phone num</TH>
   <TH>Gender</TH>
      <TH>basic info</TH>
</TR>
<TR>
   <TD> <%= rsn.getString(1) %> </TD>
   <TD> <%= rsn.getString(2) %> </TD>
   <TD> <%= rsn.getString(3) %> </TD>
   <TD> <%= rsn.getString(4) %> </TD>
   <TD> <%= rsn.getString(5) %> </TD>
     <TD> <%= rsn.getString(6) %> </TD>
       <TD> <%= rsn.getString(7) %> </TD>
</TR>
</TABLE>
<BR>
<% 
} 
%>
%>
</body>
</html>