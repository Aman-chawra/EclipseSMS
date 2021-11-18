package com.sms;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sms.dao.StudentDao;
import com.sms.vo.StudentStore;
import com.sms.vo.StudentVo;


@WebServlet("/ViewAllStudentsController")
public class ViewAllStudentsController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw = response.getWriter();
		RequestDispatcher rd = null;
		try {
			StudentDao studentDao = new StudentDao();
			StudentStore studentStore = studentDao.viewAllStudent();
			ArrayList<StudentVo> studentList = studentStore.getStudentList();
			request.setAttribute("studentList", studentList);
//			for(StudentVo student:studentList) {
//				pw.println(student);
//			}
			rd=request.getRequestDispatcher("/viewAllStudent.jsp");
			rd.forward(request, response);
		}catch(SQLException ex) {
			ex.printStackTrace();
		}
	}

}
