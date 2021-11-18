package com.sms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sms.util.DbConnection;
import com.sms.vo.StudentStore;
import com.sms.vo.StudentVo;

public class StudentDao {
	//private static final String  = null;
	
	private final String SAVE_STUDENT ="insert into student(rollnumber,name,gender,course)value(?,?,?,?)";
	private final String VIEW_STUDENT ="select rollnumber,name,gender,course from student";
	private final String DELETE_STUDENT = "delete from student where rollnumber = ?"; 
	private final String SEARCH_STUDENT = "	select * from student where rollNumber = ?"; 
	private final String UPDATE_STUDENT = "update student set name=? , gender = ? , course=? where rollnumber = ?";
	public boolean addStudent(StudentVo studentVo) throws SQLException {
		//do database operation logic
			Connection con = DbConnection.getConn();
			PreparedStatement ps =con.prepareStatement(SAVE_STUDENT);
			ps.setInt(1, studentVo.getRollNumber());
//			ps.setString(1, studentVo.getRollNumber());
			ps.setString(2, studentVo.getName());
			ps.setString(3, studentVo.getGender());
			ps.setString(4, studentVo.getCourse());
			return ps.executeUpdate()!=0;
	}
	
	public StudentStore viewAllStudent() throws SQLException {
		StudentStore studentlist = new StudentStore();
		Connection con=DbConnection.getConn();
		PreparedStatement ps = con.prepareStatement("select * from student");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			StudentVo student = new StudentVo();
			student.setRollNumber(rs.getInt(1));
			student.setName(rs.getString(2));
			student.setGender(rs.getString(3));
			student.setCourse(rs.getString(4));
			studentlist.setStudent(student);
		}
		return studentlist;
	}
	public boolean deleteStudent(int rollNumber) throws SQLException {
		boolean status =true;
		Connection con = DbConnection.getConn();
		PreparedStatement ps =con.prepareStatement(DELETE_STUDENT);
		ps.setInt(1, rollNumber);
		return ps.executeUpdate()!=0;
	}
	public StudentVo searchStudent(int rollNumber) throws SQLException {
		StudentVo student = new StudentVo();
		Connection con = DbConnection.getConn();
		PreparedStatement ps =con.prepareStatement(SEARCH_STUDENT);
		ps.setInt(1,rollNumber);
		ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			student.setRollNumber(rs.getInt(1));
			student.setName(rs.getString(2));
			student.setGender(rs.getString(3));
			student.setCourse(rs.getString(4));
		}
		return student;
	}
	public boolean updateStudent(StudentVo studentVo) throws SQLException  {
		//System.out.println("Kundan in DAO");
		Connection con = DbConnection.getConn();
		PreparedStatement ps =con.prepareStatement(UPDATE_STUDENT);
		ps.setString(1,studentVo.getName());
		ps.setString(2,studentVo.getGender());
		ps.setString(3,studentVo.getCourse());
		ps.setInt(4,studentVo.getRollNumber());
		return ps.executeUpdate()!=0;
		
	}
	
}
