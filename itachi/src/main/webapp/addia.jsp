<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="styles.css">
<title>Insert title here</title>
</head>
<body>
<% 
String usn=request.getParameter("usn");
String ia1=request.getParameter("ia1");
String ia2=request.getParameter("ia2");
String ia3=request.getParameter("ia3");

	String query = "insert into iamarks values('"+usn+"',"+ia1+","+ia2+","+ia3+");";
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

<h1 style="
color:red;
text-align:center;"> DETAILS STORED SUCCESSFULLY</h1>
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