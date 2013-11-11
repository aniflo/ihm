package fr.esiea.ail.persistence;

import java.util.HashMap;
import java.util.Map;

import fr.esiea.ail.model.Address;
import fr.esiea.ail.model.Contact;

public class PersistenceManager {
	
//	this HASHMAP will be use as "the database"
	private static HashMap<String, Address> addresses = new HashMap<String, Address>();
	private static HashMap<String, Contact> contacts = new HashMap<String, Contact>();
	private static int addressId = 0;
	
//	Save contact
	public static void saveContact(Contact contact){
		String contactAlias = contact.getNom() +" "+ contact.getPrenom() ;
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

	//	Get contact
	public static Contact getContact(String contactAlias) {
		return contacts.get(contactAlias);
	}
	
//	Get all contacts
	public static HashMap<String, Contact> getContacts(){
		return contacts;
	}

//	Delete Contact
	public static void deleteContact(String key) {
		contacts.remove(key);
	}
	
//	Save the address in the HASHMAP
	public static Address saveAddress(String contactAlias, Address address ){
		String addressAlias = "address " + addressId  ;
		address.setAddressAlias(addressAlias);
		address.setContactAlias(contactAlias);
		addresses.put(address.getAddressAlias(), address);
		addressId++;
		
		Contact contact = contacts.get(contactAlias);
//		System.out.println("old value:" +contacts.get(contactAlias));
		contact.getAdresses().put(addressAlias,address);
		contacts.put(contactAlias, contact);
		System.out.println("update:" +contacts.get(contactAlias));
		
		return address;
	}
	
//	get address by alias
	public static Address getAddress(String addressAlias){
		
		return addresses.get(addressAlias);
	}
	
//	get all addresses
	public static Map<String, Address> getAddresses() {
		
		return addresses;
	}
	
//	delete address from the hash map
	public static void delete(String key){
		addresses.remove(key);
	}
	
}
