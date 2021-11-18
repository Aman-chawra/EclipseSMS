package com.sms;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sms.dao.StudentDao;

@WebServlet("/DeleteStudentController")
public class DeleteStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String roll=(String)request.getParameter("rollNumber");
		RequestDispatcher rd = null;
		
		if(roll.equalsIgnoreCase(""))
		{
			rd=request.getRequestDispatcher("Delete_Student.jsp");
	
			rd.forward(request, response);
		}
		else
		{
		int rollNumber=Integer.parseInt(roll);
		boolean result=false;
		try {
			StudentDao studentDao = new StudentDao();
			result= studentDao.deleteStudent(rollNumber);
			System.out.println(result);
			if(result)
			{
				request.setAttribute("sds","Deleted Successfully.");
				rd=request.getRequestDispatcher("Delete_Student.jsp");
				rd.forward(request, response);
			}
			else
			{
				request.setAttribute("snd","The Student With Rollnumber '"+rollNumber+"' not Exist!");
				rd=request.getRequestDispatcher("Delete_Student.jsp");
				rd.forward(request, response);
			}
			
		}catch(SQLException ex){
			request.setAttribute("exception",true);
			rd=request.getRequestDispatcher("Delete_Student.jsp");
			rd.forward(request, response);
			ex.printStackTrace();
		}
		}
	}

}
