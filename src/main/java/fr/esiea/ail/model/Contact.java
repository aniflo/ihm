package fr.esiea.ail.model;

import java.util.Date;
import java.util.List;

public class Contact {
	
	private String alias ;
	private String nom;
	private String prenom;
	private String email;
	private Date dateDeNaissance;
	private Boolean actif;
	private List<Adresse> listAdresses ;
	
	public String getAlias() {
		return alias;
	}
	public void setAlias(String alias) {
		this.alias = alias;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getDateDeNaissance() {
		return dateDeNaissance;
	}
	public void setDateDeNaissance(Date dateDeNaissance) {
		this.dateDeNaissance = dateDeNaissance;
	}
	public Boolean getActif() {
		return actif;
	}
	public void setActif(Boolean actif) {
		this.actif = actif;
	}
	public List<Adresse> getListAdresses() {
		return listAdresses;
	}
	public void setListAdresses(List<Adresse> listAdresses) {
		this.listAdresses = listAdresses;
	}
	
}
