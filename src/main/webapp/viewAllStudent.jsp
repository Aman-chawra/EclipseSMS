<%@page import="java.util.ArrayList , com.sms.vo.StudentVo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" />
<title>View All Students</title>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
<body style="background-image: linear-gradient(rgba(4,9,30,0.7),rgba(4,9,30,0.7)),url(images/view_stud.jpg);">
<%
ArrayList<StudentVo> studentList = (ArrayList<StudentVo>)request.getAttribute("studentList");
%>

<style>
.content_table{
	border-collapse:collapse;
	margin:25px 0;
	font-size:0.9em;
	min-width:400px;
}
.content_table thead td{
border:0.8px solid black;
padding:20px;
}
.content_table thead{
background-color:#00752b;
color:white;

}
.content_table tbody td{
border:0.8px solid black;
padding:10px;
}

</style>
<div><%@include file="header.html" %></div>
<div>

<center>
<div style="background-color:#dadada;z-index:3;display:inline-table;margin:30px;border-radius:10px;box-shadow: 0 0 10px #888;">

<h1>View All Students</h1>
<table class="content_table	" style="margin:25px">
<thead >
<tr><td><b>S.No</b></td><td><b>Roll Number</b></td><td><b>Name of Student</b></td><td><b>Gender</b></td><td><b>Course</b></td></tr>
</thead>
<%
int i=1;
String stringb="background-color:#c2c2c2";
String stringw="background-color:white";
for(StudentVo student : studentList){%>
<tbody style="<% if(i%2!=0){%> <%=stringw%><% }else {%> <%=stringb%><%}%>"><tr><td><%=i%><% i++; %></td><td><%=student.getRollNumber() %></td><td><%=student.getName() %></td><td><%=student.getGender() %></td><td><%=student.getCourse() %></td></tr></tbody>	
<%}
%>
</table>
</div>
</center>

</div>
<div><%@include file="footer.html" %></div>


</body>
</html>
