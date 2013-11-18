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

//	Update existing contact	
	public static void updateContact (String contactAlias, Contact contact){
		
		Contact oldContact = contacts.get(contactAlias);
		System.out.println("old value:" +oldContact);
		contact.setContactAlias(contactAlias);
		contact.setAdresses(oldContact.getAdresses());
		contacts.put(contactAlias, contact);
		System.out.println("update:" +contacts.get(contactAlias));
		
	}

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
			System.out.println(status);
			return status;
		}
		else {
			status = "Suppression impossible, la liste d'adresses est non vide";
			System.out.println(status);
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
	
//	Update existing address of contact	
	public static Address updateAddress (String contactAlias, String addressAlias, Address address){
		
		Address oldAddress = contacts.get(contactAlias).getAdresses().get(addressAlias);
		System.out.println("old value:" +oldAddress);
		address.setAddressAlias(addressAlias);
		address.setContactAlias(contactAlias);
		contacts.get(contactAlias).getAdresses().put(addressAlias, address);
		System.out.println("update:" + address);
		
		return address;
	}
	
//	delete address from the hash map
	public static String deleteAddress(String contactAlias, String addressAlias){
		
		String status ="Suppression de l'adresse réussie";
		Contact contact = getContact(contactAlias);
		contact.getAdresses().remove(addressAlias);
		System.out.println(contact.getAdresses());
		System.out.println(status);
		return status;
	}
	
}
