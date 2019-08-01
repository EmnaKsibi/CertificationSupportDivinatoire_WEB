package com.sandra.certification;

public class FeedbackModel {



		private String id;
		private String matricule;
		private String username;
		private String comment;
		


		
		public FeedbackModel(String id, String matricule , String username,
				String comment) 
		{
		
			
			this.id = id;
			this.matricule = matricule;
			this.username = username;
			this.comment = comment;
			
		}
		
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getMatricule() {
			return matricule;
		}
		public void setMatricule(String matricule) {
			this.matricule = matricule;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getComment() {
			return comment;
		}
		public void setComment(String comment) {
			this.comment = comment;
		}
	
	}