package fr.esiea.ail.model;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class Contact {
	
	private String contactAlias ;
	private String nom;
	private String prenom;
	private String email;
	private Date dateDeNaissance;
	private Boolean actif;
	private Map<String,Address> adresses = new HashMap<String,Address>();
	
	public String getContactAlias() {
		return contactAlias;
	}
	public void setContactAlias(String alias) {
		this.contactAlias = alias;
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

	public Map<String, Address> getAdresses() {
		return adresses;
	}
	public void setAdresses(Map<String, Address> adresses) {
		this.adresses = adresses;
	}
	
	@Override
	public String toString() {
		return "Contact [contactAlias=" + contactAlias + ", nom=" + nom + ", prenom=" + prenom + ", email="
				+ email + ", dateDeNaissance=" + dateDeNaissance + ", actif=" + actif
				+ ", listAdresses=" + adresses + "]\n";
	}
}
