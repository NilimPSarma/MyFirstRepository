package com.tyss.assignment.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.Data;

@Entity
public class QuizQuestions implements Serializable {

	@Id
	@Column
	private int id;
	@Column
	private String question1;
	@Column
	private String question2;
	@Column
	private String question3;
	@Column
	private String question4;
	@Column
	private String question5;
	@Column
	private String question5answerString;
	@Column
	private String question4answerString;
	@Column
	private String question3answerString;
	@Column
	private String question2answerString;
	@Column
	private String question1answerString;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuestion1() {
		return question1;
	}
	public void setQuestion1(String question1) {
		this.question1 = question1;
	}
	public String getQuestion2() {
		return question2;
	}
	public void setQuestion2(String question2) {
		this.question2 = question2;
	}
	public String getQuestion3() {
		return question3;
	}
	public void setQuestion3(String question3) {
		this.question3 = question3;
	}
	public String getQuestion4() {
		return question4;
	}
	public void setQuestion4(String question4) {
		this.question4 = question4;
	}
	public String getQuestion5() {
		return question5;
	}
	public void setQuestion5(String question5) {
		this.question5 = question5;
	}
	public String getQuestion5answerString() {
		return question5answerString;
	}
	public void setQuestion5answerString(String question5answerString) {
		this.question5answerString = question5answerString;
	}
	public String getQuestion4answerString() {
		return question4answerString;
	}
	public void setQuestion4answerString(String question4answerString) {
		this.question4answerString = question4answerString;
	}
	public String getQuestion3answerString() {
		return question3answerString;
	}
	public void setQuestion3answerString(String question3answerString) {
		this.question3answerString = question3answerString;
	}
	public String getQuestion2answerString() {
		return question2answerString;
	}
	public void setQuestion2answerString(String question2answerString) {
		this.question2answerString = question2answerString;
	}
	public String getQuestion1answerString() {
		return question1answerString;
	}
	public void setQuestion1answerString(String question1answerString) {
		this.question1answerString = question1answerString;
	}
	
	
	

}
