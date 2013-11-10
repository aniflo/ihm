package fr.esiea.ail.persistence;

import java.util.HashMap;

import fr.esiea.ail.model.Address;
import fr.esiea.ail.model.Contact;

public class PersistenceManager {
	
	//this HASHMAP will be use as "the database"
	private static HashMap<String,Address> addresses=new HashMap<String,Address>();
	private static HashMap<String, Contact> contacts = new HashMap<String, Contact>();
	
	
	//save the address in the HASHMAP
	public static void saveAddress(Address address){
		
		addresses.put(address.getAlias(), address);
	}
	
	//get address by alias
	public static Address getAddress(String alias){
		
		return addresses.get(alias);
	}
	
	//get all addresses
	public static HashMap<String,Address> getAddresses() {
		
		return addresses;
	}
	
	//delete address from the hash map
	public static void delete(String key){
		addresses.remove(key);
	}
	
	public static void saveContact(Contact contact){
		contacts.put(contact.getAlias(), contact);
	}
	
	public static Contact getContact(String alias) {
		return contacts.get(alias);
	}
	
	public static HashMap<String, Contact> getContacts(){
		return contacts;
	}
	
	public static void deleteContact(String key) {
		contacts.remove(key);
	}

}
