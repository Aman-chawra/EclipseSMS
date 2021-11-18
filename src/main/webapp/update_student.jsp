<%@page import="com.sms.vo.StudentVo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student</title>
<script async src="myscript.js" type="text/javascript"></script>
<script type="text/javascript">

function cancel()
{
if(document.getElementById("rollNumberMsg").innerHTML!=""){
	document.getElementById("rollNumberMsg").innerHTML ="";
}

if(document.getElementById("nameMsg").innerHTML!=""){
	document.getElementById("nameMsg").innerHTML ="";
}

if(document.getElementById("courseMsg").innerHTML!=""){
	document.getElementById("courseMsg").innerHTML ="";
}
document.forms["student_form"]["roll_number"].value="";
document.forms["student_form"]["name"].value="";
document.forms["student_form"]["course"].value="";

}
</script>
</head>
<body style="background-image: linear-gradient(rgba(4,9,30,0.7),rgba(4,9,30,0.7)),url(images/add_stud.png);">

<div><%@include file="header.html" %></div>
<div >
<center>
<div style="background-color:#dbdbdb;z-index:3;display:inline-table;margin:70px;border-radius:10px;box-shadow:0 0 10px #888;">

	<div class="search" >
	<h1>Update Student</h1>
	
	
	
	
<%

	
	StudentVo svo = (StudentVo)request.getAttribute("vo");
	if(svo == null){
		svo = new StudentVo();
		svo.setRollNumber(0);
		svo.setName("");
		svo.setGender("");
		svo.setCourse("");
	}
	
	String rollNum = "";
	if(svo.getRollNumber() != 0){
		rollNum =   String.valueOf(svo.getRollNumber());
	}
%>
	
<%String sud = (String)request.getAttribute("sud"); 
if(sud==null){
	sud="";
}
 
String snu = (String)request.getAttribute("snu"); 
if(snu==null){
	snu="";
}

%>
<h4 style="color:green"><%=sud %></h4>
<h4 style="color:red"><%=snu %></h4>
	
	<form action="/management_system/SearchStudentController" name="search_student" method="post" onsubmit="return doValidate()" style="margin:25px">
	<tr><td>Student RollNumber: </td><td> <input type="number" name="rollNumber"/> <span id="rollNumberMsg"></span></td></tr>
	
	<pre>
	<input type="submit" value="Search"/>
	</pre>
	
	</form>
	</div>
	<div>
		<form action="/management_system/UpdateStudentController" name="student_form" method="post" onsubmit="return doUpdateValidate()">
<table>
	
<tr><td>Student Roll Number</td><td><input type="number" name="roll_number"  value="<%=rollNum%>"><span id="rollNumberMsg2"></span></td></tr>
<tr><td>Student Name</td><td><input type="text" name="name" value = "<%=svo.getName()%>"><span id="nameMsg"></span></td></tr>
<tr><td>Gender</td><td><input type="text" name="gender" value="<%=svo.getGender() %>"><span id ="genderMsg"></span> </td></tr>
<tr><td>Course</td><td><input type="text" name="course"  value="<%=svo.getCourse() %>" > <span id="courseMsg"></span></td></tr>


<tr><td><input type="submit" style="margin-bottom:25px;margin-top:25px" value="Update Student"/></td><td><input type="button"  onclick="cancel()" style="margin-bottom:25px;margin-top:25px"  value="Cancel" /></td></tr>
</table>

</form>
		
	</div>
	</div>
</center>
</div>
<div><%@include file="footer.html" %></div>
</body>
</html>