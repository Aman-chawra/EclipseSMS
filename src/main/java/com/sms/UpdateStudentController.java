package com.sms;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.sms.vo.StudentVo;
import com.sms.dao.StudentDao;


@WebServlet("/UpdateStudentController")
public class UpdateStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StudentVo studentVo = null;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int rollNum=Integer.parseInt(request.getParameter("roll_number"));
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String course = request.getParameter("course");
		
		studentVo = new StudentVo();
		studentVo.setRollNumber(rollNum);
		studentVo.setName(name);
		studentVo.setGender(gender);
		studentVo.setCourse(course);
		String sud=null;
		try {
			
			
//      System.out.println(studentVo);
		StudentDao student = new StudentDao();
		boolean added=student.updateStudent(studentVo);
//		System.out.println(added);
		if (added)
	    {
//  			PrintWriter pw=response.getWriter();
////			pw.println("Successfully Added");
			
			sud = "Successfully Updated!";
			request.setAttribute("sud", sud);
			request.getRequestDispatcher("/update_student.jsp").forward(request, response);
		}
		
	}catch(SQLException ex) {
		String snu=null;
		snu = "Student not Update!";
		request.setAttribute("snu", snu);
		request.getRequestDispatcher("/update_student.jsp").forward(request, response);
	}
	
	//System.out.println("data--"+rollNumber+" "+name+" "+gender+" "+course);	
	}

	}


