<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<% String name=request.getParameter("name");

String usn=request.getParameter("usn");
String branch=request.getParameter("branch");
String year=request.getParameter("year");
String phone=request.getParameter("phone");
String lname=request.getParameter("lname");

String gender=request.getParameter("gender");
String dob=request.getParameter("dob");

	String query = "insert into student(name,usn,branch,year,phone,lname,gender,dob) values('"+name+"','"+usn+"','"+branch+"',"+year+","+phone+",'"+lname+"','"+gender+"','"+dob+"');";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/atme", "root", "root");
	System.out.println("Connection Established successfully");
	PreparedStatement st = con.prepareStatement(query);
	st.executeUpdate(query);
    st.close();
    con.close();
%>


<center>
<div class="form" style="width:23%;">

<h1 style="color:red;text-align:center;"> DETAILS STORED SUCCESSFULLY</h1>
</div>
</br>
<a href = "form.html">
<button class="button"> ADD DETAILS</button></a>
<a href= "view.jsp">
<button class="button"> VIEW DETAILS</button></a>
<a href= "index.html">
<button class="button"> HOME</button></a>
</center>
</body>

</html>