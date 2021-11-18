function doUpdateValidate(){

	var rollNumber = document.forms["student_form"]["roll_number"].value;
	var name = document.forms["student_form"]["name"].value;
	var course = document.forms["student_form"]["course"].value;
	var gender =document.forms["student_form"]["gender"].value;
	var rollNumberStatus;
	var nameStatus;
	var courseStatus;
	var genderStatus;
	var rollNumberMsg;
	var courseMsg;
	var nameMsg;
	var genderMsg;
	
	
		if(document.getElementById("rollNumberMsg2").innerHTML!=""){
			document.getElementById("rollNumberMsg2").innerHTML ="";
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
			var spanEle = document.getElementById("rollNumberMsg2");
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

		if(gender==""){
			genderStatus=false;
			genderMsg = "*Gender Should Be Choosen!";
			var spanEle = document.getElementById("genderMsg");
			spanEle.style.color="red";
			spanEle.innerHTML = genderMsg;
			//document.getElementById("courseMsg").innerHTML=courseMsg;
		}
	if(rollNumberStatus==false || nameStatus==false || courseStatus==false || genderStatus==false){
		return false;
	}
	
}

function doValidate(){
		var rollNumber = document.forms["search_student"]["rollNumber"].value;
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
	
