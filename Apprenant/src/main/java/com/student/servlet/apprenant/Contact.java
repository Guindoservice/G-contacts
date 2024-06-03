/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.student.servlet.apprenant;


public class Contact {
    
     private String nom;
	    private String prenom;
	    private String tel;
	    private String competence;
	    private String email;
	    private String adresse;
	    
	    
	    
		public Contact(String nom, String prenom, String tel, String competence, String email, String adresse) {
			super();
			this.nom = nom;
			this.prenom = prenom;
			this.tel = tel;
			this.competence = competence;
			this.email = email;
			this.adresse = adresse;
		}
		public String getNom() {
			return nom;
		}
		public void setNom(String nom) {
			this.nom = nom;
		}
		public String getPrenom() {
			return prenom;
		}
		public void setPrenom(String prenom) {
			this.prenom = prenom;
		}
		public String getTel() {
			return tel;
		}
		public void setTel(String tel) {
			this.tel = tel;
		}
		public String getCompetence() {
			return competence;
		}
		public void setCompetence(String competence) {
			this.competence = competence;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getAdresse() {
			return adresse;
		}
		public void setAdresse(String cadresse) {
			this.adresse = cadresse;
		}
    
}
