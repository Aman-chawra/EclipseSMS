<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Student</title>
</head>
<div><%@include file="header.html" %></div>
<body  style="background-image: linear-gradient(rgba(4,9,30,0.7),rgba(4,9,30,0.7)),url(images/jpg.jpg);">


<div>
<center>
<div style="background-color:#dadada;z-index:3;display:inline-table;margin:30px;border-radius:10px;box-shadow: 0 0 10px #888;">
<h1>Delete Student</h1>


<script type="text/javascript">
function doValidate(){
	var rollNumber = document.forms["delete_student"]["rollNumber"].value;
	var rollNumberStatus;
	var rollNumberMsg;


		if(document.getElementById("rollNumberMsg").innerHTML!=""){
			document.getElementById("rollNumberMsg").innerHTML ="";
		}
		if(rollNumber==""){
			rollNumberStatus=false;
			rollNumberMsg = "*Please Enter a RollNumber!";
			console.log(rollNumberMsg);
			var spanEle = document.getElementById("rollNumberMsg");
			spanEle.style.color="red";
			spanEle.innerHTML = rollNumberMsg;
		}
	
	if(rollNumberStatus==false){
		return false;
	}
	
}
</script>




<%String sds = (String)request.getAttribute("sds"); 
if(sds==null){
	sds="";
}
 
String snd = (String)request.getAttribute("snd"); 
if(snd==null){
	snd="";
}

%>
<h4 style="color:green"><%=sds %></h4>
<h4 style="color:red"><%=snd %></h4>
<form action="/management_system/DeleteStudentController" name="delete_student" method="post" onsubmit="return doValidate()" style="margin:25px">
<tr><td>Student RollNumber: </td><td> <input type="number" name="rollNumber"/> <span id="rollNumberMsg"></span></td></tr>

<pre>
<input type="submit" value="Delete"/>
</pre>

</form>
</div>
</center>
</div>
<div><%@include file="footer.html" %></div>
</body>
</html>