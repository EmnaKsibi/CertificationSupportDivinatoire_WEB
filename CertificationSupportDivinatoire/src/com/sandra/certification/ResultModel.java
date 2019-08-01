package com.sandra.certification;

public class ResultModel {

	private String rid;
	private String matricule;
	private String userName;
	private String examName;
	private String examLevel;
	private String nbOfQuestion;
	private String status;
	private String nbCorrectAnswer;
	private String startTime;
	
	
	public ResultModel(String rid, String matricule, String userName,
			String examName,String examLevel, String nbOfQuestion, String status, String nbCorrectAnswer,String startTime) {
		
		this.rid = rid;
		this.matricule = matricule;
		this.userName = userName;
		this.examName = examName;
		this.examLevel = examLevel;
		this.nbOfQuestion = nbOfQuestion;
		this.status = status;
		this.nbCorrectAnswer = nbCorrectAnswer;
		this.startTime = startTime;
	}
	public String getRId() {
		return rid;
	}
	public void setRId(String rid) {
		this.rid = rid;
	}
	public String getMatricule() {
		return matricule;
	}
	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getExamLevel() {
		return examLevel;
	}
	public void setExamLevel(String examLevel) {
		this.examLevel = examLevel;
	}
	public String getExamName() {
		return examName;
	}
	public void setExamName(String examName) {
		this.examName = examName;
	}
	public String getNbOfQuestion() {
		return nbOfQuestion;
	}
	public void setNbOfQuestion(String nbOfQuestion) {
		this.nbOfQuestion = nbOfQuestion;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getNbCorrectAnswer() {
		return nbCorrectAnswer;
	}
	public void setNbCorrectAnswer(String nbCorrectAnswer) {
		this.nbCorrectAnswer = nbCorrectAnswer;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
}
