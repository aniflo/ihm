package fr.esiea.ail.persistence;

import java.util.HashMap;

import fr.esiea.ail.model.Adresse;
import fr.esiea.ail.model.Contact;

public class PersistenceManager {
	
	//this HASHMAP will be use as "the database"
	private static HashMap<String,Adresse> adresses=new HashMap<String,Adresse>();
	private static HashMap<String, Contact> contacts = new HashMap<String, Contact>();
	
	
	//save the adress in the HASHMAP
	public static void saveAdresse(Adresse adresse){
		
		adresses.put(adresse.getAlias(), adresse);
		
	}
	
	//get adress by alias
	public static Adresse getAdresse(String alias){
		
		return adresses.get(alias);
	}
	
	//get all adresses
	public static HashMap<String,Adresse> getAdresses() {
		// TODO Auto-generated method stub
		
		return adresses;
	}
	
	//delete adress from the hash map
	public static void delete(String key){
		
		adresses.remove(key);
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
