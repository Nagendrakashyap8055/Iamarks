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
<th>USN</th>
<th>1st Internal Marks</th>
<th>2nd Internal Marks</th>
<th>3rd Internal Marks</th>

</tr>
<%
String usn1=request.getParameter("usn");
String query = "select * from iamarks where usn ='"+usn1+"';";
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/atme", "root", "root");
System.out.println("Connection Established successfully");
PreparedStatement st = con.prepareStatement(query);
ResultSet rs = st.executeQuery(query);
rs.next();
String usn =rs.getString("usn");
String ia1 =rs.getString("ia1");
String ia2 =rs.getString("ia2");
String ia3 =rs.getString("ia3");
	%>
	
	<td>
	<% out.println(usn );%>
	</td>
	
	<td>
	<% out.println(ia1 );%>
	</td>
	<td>
	<% out.println(ia2 );%>
	</td>
	<td>
	<% out.println(ia3 );%>
	</td>
	</tr>
	<% 


st.close(); 

con.close();   %>
</table>
</div></div></center>
</body>
</html>