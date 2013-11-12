package fr.esiea.ail.persistence;

import java.util.HashMap;

import fr.esiea.ail.model.Address;
import fr.esiea.ail.model.Contact;

public class PersistenceManager {
	
//	this HASHMAP will be use as "the database"
	private static HashMap<String, Contact> contacts = new HashMap<String, Contact>();
	private static int addressId = 1;
	
//	Save contact
	public static void saveContact(Contact contact){
		String contactAlias = contact.getNom() +"_"+ contact.getPrenom() ;
		contact.setContactAlias(contactAlias);
		contacts.put(contact.getContactAlias(), contact);
	}
	
//	public static void updateContact (String contactAlias, Address address){
//		
//		Contact contact = contacts.get(contactAlias);
//		System.out.println("old value:" +contacts.get(contactAlias));
//		contact.getAdresses().put(contactAlias,address);
//		contacts.put(contactAlias, contact);
//		System.out.println("update:" +contacts.get(contactAlias));
//		
//	}

//	Get contact by alias
	public static Contact getContact(String contactAlias) {
		return contacts.get(contactAlias);
	}
	
//	Get all contacts
	public static HashMap<String, Contact> getContacts(){
		return contacts;
	}

//	Delete Contact
	public static String deleteContact(String contactAlias) {
		
		Contact contact = getContact(contactAlias);
		String status = null ;
		
		if(contact.getAdresses().isEmpty()){
			contacts.remove(contactAlias);
			status = "suppression du contact" +contactAlias ;
			return status;
		}
		else {
			status = "Suppression impossible, la liste d'adresses est non vide"; 
			return status;
		}
	}
	
//	Save the address in the HASHMAP
	public static Address saveAddress(String contactAlias, Address address ){

		if(!(contacts.isEmpty())){
			String addressAlias = "address_" + addressId  ;
			address.setAddressAlias(addressAlias);
			address.setContactAlias(contactAlias);
			addressId++;
				
			Contact contact = contacts.get(contactAlias);
			contact.getAdresses().put(addressAlias,address);
			contacts.put(contactAlias, contact);
			System.out.println("update:" +contacts.get(contactAlias));
		
			return address;
		}
		
		else {
			return null;
		}
	}
	
//	delete address from the hash map
	public static String deleteAddress(String contactAlias, String addressAlias){
		
		String status ="Suppression de l'adresse réussie";
		Contact contact = getContact(contactAlias);
		contact.getAdresses().remove(addressAlias);
		System.out.println(contact.getAdresses());
		
		return status;
	}
	
}
