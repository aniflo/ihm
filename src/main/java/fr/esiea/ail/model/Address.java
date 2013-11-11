package fr.esiea.ail.model;


public class Address {
	
	private String contactAlias;
	private String addressAlias;
	private String numero;
	private String rue;
	private String codepostal;
	private String ville;
	
	public String getContactAlias() {
		return contactAlias;
	}
	public void setContactAlias(String contactAlias) {
		this.contactAlias = contactAlias;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getRue() {
		return rue;
	}
	public void setRue(String rue) {
		this.rue = rue;
	}
	public String getCodepostal() {
		return codepostal;
	}
	public void setCodepostal(String codepostal) {
		this.codepostal = codepostal;
	}
	public String getVille() {
		return ville;
	}
	public void setVille(String ville) {
		this.ville = ville;
	}
	public String getAddressAlias() {
		return addressAlias;
	}
	public void setAddressAlias(String alias) {
		this.addressAlias = alias;
	}
	
	@Override
	public String toString() {
		return "Address [contactAlias=" + contactAlias +", addressAlias=" + addressAlias + ", numero=" + numero + ", rue=" + rue + ", codepostal="
				+ codepostal + ", ville=" + ville + "]";
	}
	
}
