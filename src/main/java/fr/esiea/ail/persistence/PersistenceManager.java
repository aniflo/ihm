package fr.esiea.ail.persistence;

import java.util.HashMap;

import fr.esiea.ail.model.Adresse;

public class PersistenceManager {
	
	//this HASHMAP will be use as "the database"
	private static HashMap<String,Adresse> adresses=new HashMap<String,Adresse>();
	
	
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

}
