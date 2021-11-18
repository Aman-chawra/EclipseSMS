<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Add Student</title>
</head>
<body style="background-image: linear-gradient(rgba(4,9,30,0.7),rgba(4,9,30,0.7)),url(images/up_stud.jpg);">
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

function doValidate(){
	
	var rollNumber = document.forms["student_form"]["roll_number"].value;
	var name = document.forms["student_form"]["name"].value;
	var course = document.forms["student_form"]["course"].value;
	var rollNumberStatus;
	var nameStatus;
	var courseStatus;
	var rollNumberMsg;
	var courseMsg;
	var nameMsg;
	
	
		if(document.getElementById("rollNumberMsg").innerHTML!=""){
			document.getElementById("rollNumberMsg").innerHTML ="";
		}

		if(document.getElementById("nameMsg").innerHTML!=""){
			document.getElementById("nameMsg").innerHTML ="";
		}

		if(document.getElementById("courseMsg").innerHTML!=""){
			document.getElementById("courseMsg").innerHTML ="";
		}
		if(rollNumber==""){
			rollnumberStatus=false;
			rollNumberMsg = "*Roll Number Should not Be Empty!";
			var spanEle = document.getElementById("rollNumberMsg");
			spanEle.style.color="red";
			spanEle.innerHTML = rollNumberMsg;
			//document.getElementById("rollNumberMsg").innerHTML=rollNumberMsg;
		}
		if(name==""){
			nameStatus=false;
			nameMsg = "*Name Should not Be Empty!";
			var spanEle = document.getElementById("nameMsg");
			spanEle.style.color="red";
			spanEle.innerHTML = nameMsg;
			//document.getElementById("nameMsg").innerHTML=nameMsg;
		}
		if(course==""){
			courseStatus=false;
			courseMsg = "*Course Should Be Choosen!";
			var spanEle = document.getElementById("courseMsg");
			spanEle.style.color="red";
			spanEle.innerHTML = courseMsg;
			//document.getElementById("courseMsg").innerHTML=courseMsg;
		}
	
	if(rollNumberStatus==false || nameStatus==false || courseStatus==false){
		return false;
	}
	
}
</script>
<%String sus = (String)request.getAttribute("sus"); 
if(sus==null){
	sus="";
}
String sae = (String)request.getAttribute("sae"); 
if(sae==null){
	sae="";}
%>

<div><%@include file="header.html" %></div>

<center>
<div  style="background-color:#dbdbdb;z-index:3;display:inline-table;margin:70px;border-radius:10px;box-shadow:0 0 10px #888;">

<h1>Add Students</h1>

<h4 style="color:green"><%=sus %></h4>
<h4 style="color:red"><%=sae %></h4>
<form action="/management_system/AddStudentControllerServlet" name="student_form" method="post" onsubmit="return doValidate()">
<table style="margin:25px">
<tr><td>Student Roll Number</td><td><input type="number" name="roll_number"><span id="rollNumberMsg"></span></td></tr>
<tr><td>Student Name</td><td><input type="text" name="name"><span id="nameMsg"></span></td></tr>
<tr><td>Gender</td><td><input name="gender" checked="checked" value="male" type="radio">Male &nbsp;&nbsp;&nbsp;&nbsp; <input name="gender" value="female" type="radio">Female</td></tr>
<tr><td>Course</td><td><select name="course">
<option value="">--select--</option>
<option value="java">java</option>
<option value="c++">c++</option>
<option value="python">python</option>
<option value="mbbs">mbbs</option>
</select><span id="courseMsg"></span></td></tr>


<tr><td><input type="submit" value="Add Student"/></td><td><input type="button" onclick="cancel()" value="Cancel"/></td></tr>
</table>

</form>
</div>
</center>

<div><%@include file="footer.html" %></div>

</body>
</html>