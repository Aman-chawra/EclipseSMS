package com.sms;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.pst.sms.dto.StudentDto;
//import com.pst.sms.service.StudentService;
import com.sms.dao.StudentDao;
import com.sms.vo.StudentVo;


@WebServlet("/SearchStudentController")
public class SearchStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int rollNumber = Integer.parseInt( request.getParameter("rollNumber"));
//		service = new StudentService();
		StudentVo vo;
		try {
			StudentDao student = new StudentDao();
			vo = student.searchStudent(rollNumber);
			request.setAttribute("vo", vo);
			request.getRequestDispatcher("./update_student.jsp").forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		
		}

		
	}


