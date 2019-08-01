package com.sandra.certification;

public class UsersModel {

	private String id;
	private String matricule;
	private String username;
	private String password;
	private String droit;

	
	
	public UsersModel(String id,  String matricule, String username,
			String password,String droit) {
		
		this.id = id;
		this.matricule = matricule;
		this.username = username;
		this.password = password;
		this.droit = droit;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDroit() {
		return droit;
	}
	public void setDroit(String droit) {
		this.droit = droit;
	}

}
