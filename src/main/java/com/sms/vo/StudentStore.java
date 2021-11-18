package com.sms.vo;

import java.util.ArrayList;

public class StudentStore {
	private ArrayList<StudentVo> studentList;
	public StudentStore(){
		super();
		studentList= new ArrayList<StudentVo>();
	}
	public ArrayList<StudentVo> getStudentList() {
		return studentList;
	}
	public void setStudent(StudentVo student) {
		this.studentList.add(student);
	}
	
}
