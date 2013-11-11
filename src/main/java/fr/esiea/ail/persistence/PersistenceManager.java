package fr.esiea.ail.persistence;

import java.util.HashMap;

import fr.esiea.ail.model.Address;
import fr.esiea.ail.model.Contact;

public class PersistenceManager {
	
//	this HASHMAP will be use as "the database"
	private static HashMap<String,Address> addresses=new HashMap<String,Address>();
	private static HashMap<String, Contact> contacts = new HashMap<String, Contact>();
	private static int contactId = 0;
	private static int addressId = 0;
	
//	Save contact
	public static void saveContact(Contact contact){
		String contactAlias = contact.getNom() + contactId ;
		contact.setContactAlias(contactAlias);
		contacts.put(contact.getContactAlias(), contact);
		contactId ++;
	}
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
	public static void saveAddress(Address address){
		String addressAlias = "address" + addressId  ;
		address.setAddressAlias(addressAlias);
		addresses.put(address.getAddressAlias(), address);
		addressId++;
	}
	
//	get address by alias
	public static Address getAddress(String addressAlias){
		
		return addresses.get(addressAlias);
	}
	
//	get all addresses
	public static HashMap<String,Address> getAddresses() {
		
		return addresses;
	}
	
//	delete address from the hash map
	public static void delete(String key){
		addresses.remove(key);
	}
	

}
