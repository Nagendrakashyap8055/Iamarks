<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Hello, world!</title>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <meta name="description" content="" />
  <link rel="stylesheet" type="text/css" href="styles.css" />
  <link rel="icon" href="img/logo.png">
  <script src="script.js"></script>

<title>Insert title here</title>
</head>
<body>
<center>
  <div class="contents" style="width :70%" >
  <h1>Student Details</h1>
  <div class="form">
  <table id="student">

<tr>
<th>First Name</th>
<th>Last Name</th>
<th>USN</th>
<th>Branch</th>
<th>Year</th>
<th>Add IA marks</th>
<th>Update IA marks</th>
<th>View IA marks</th>
<th>Delete IA marks</th>
</tr>
<%
String query = "select * from student";
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/atme", "root", "root");
System.out.println("Connection Established successfully");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next())
{
	String name = rs.getString("name");
	String lname = rs.getString("lname");
	String usn =rs.getString("usn");
	String branch=rs.getString("branch");
	int year=rs.getInt("year");
	%>
	<td >
	<% out.println(name);%>
	</td>
	<td >
	<% out.println(lname);%>
	</td>
	<td >
	<% out.println(usn );%>
	</td>
	<td >
	<% out.println(branch );%>
	</td>
	<td >
	<% out.println(year );%>
	</td >
	<td ><a href="insert.html">
	<% out.println("Add" );%>
	</a></td>
	<td ><a href="update.html">
	<% out.println("Update" );%>
	</a></td>
	<td >
	<a href="viewia.html">
	<% out.println("View" );%>
	</a></td>
	<td><a href="delete.html">
	<% out.println("Delete" );%>
	</a></td>
	</tr>
	<% 
}

st.close(); 

con.close();   %>
</table>
</div></div></center>
</body>
</html>