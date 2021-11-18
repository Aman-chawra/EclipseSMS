package com.sms;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sms.dao.StudentDao;
import com.sms.vo.StudentVo;

@WebServlet("/AddStudentControllerServlet")
public class AddStudentControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	StudentVo studentVo=null;
   
    public AddStudentControllerServlet() {
        super();
    
    }
	
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		PrintWriter pw=response.getWriter();
//		pw.println("Hello World");
		int rollNumber = Integer.parseInt(request.getParameter("roll_number"));
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String course = request.getParameter("course");
	
		StudentVo studentVo=new StudentVo();
		studentVo.setRollNumber(rollNumber);
		studentVo.setName(name);
		studentVo.setGender(gender);
		studentVo.setCourse(course);
		String sus=null;
		try {
			StudentDao student = new StudentDao();
			boolean added=student.addStudent(studentVo);
			
			if (added)
		    {
//      			PrintWriter pw=response.getWriter();
////				pw.println("Successfully Added");
				sus = "Successfully Added";
				request.setAttribute("sus", sus);
				request.getRequestDispatcher("/add_student.jsp").forward(request, response);
			}
	
			
		}catch(SQLException ex) {
			String sae=null;
			sae = "Student Already Exists!";
			request.setAttribute("sae", sae);
			request.getRequestDispatcher("/add_student.jsp").forward(request, response);
		}
		
		//System.out.println("data--"+rollNumber+" "+name+" "+gender+" "+course);	
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}



