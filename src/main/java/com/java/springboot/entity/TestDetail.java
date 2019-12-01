package com.java.springboot.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "TestDetail")
public class TestDetail {

	@Id
	@Column(name = "TestDate")
	private String testDate;
	@Column(name = "Assessment")
	private String assessment;
	@Column(name = "TestMarks")
	private int marks;
	@Column(name = "email")
	private String email;
	@Column(name = "Totalmarks")
	private int totalMarks;
	@Column(name = "Result")
	private String result;

	public TestDetail() {
	}

	public TestDetail(String testDate, String assessment, int marks, String email, int totalMarks, String result) {
		super();
		this.testDate = testDate;
		this.assessment = assessment;
		this.marks = marks;
		this.email = email;
		this.totalMarks = totalMarks;
		this.result = result;
	}

	public String getTestDate() {
		return testDate;
	}

	public void setTestDate(String testDate) {
		this.testDate = testDate;
	}

	public String getAssessment() {
		return assessment;
	}

	public void setAssessment(String assessment) {
		this.assessment = assessment;
	}

	public int getMarks() {
		return marks;
	}

	public void setMarks(int marks) {
		this.marks = marks;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getTotalMarks() {
		return totalMarks;
	}

	public void setTotalMarks(int totalMarks) {
		this.totalMarks = totalMarks;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

}
