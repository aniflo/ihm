package fr.esiea.ail.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.esiea.ail.model.Address;
import fr.esiea.ail.model.Contact;
import fr.esiea.ail.persistence.PersistenceManager;


@Controller
public class AddressController {

//	Get the form address
	@RequestMapping(value="/adresse",method=RequestMethod.GET)
	public String ajoutAdresse(Model model)	{
		
		HashMap <String, Contact> contacts = PersistenceManager.getContacts();
		model.addAttribute("address", new Address());
		model.addAttribute("contacts", contacts);
		System.out.println("contact list:"+ contacts);
		return "editAddress";
	}
	
//	Save form in map
	@RequestMapping(value="/adresse",method=RequestMethod.POST)
	public String addressSubmit(@ModelAttribute Address address, Model model,
								@ModelAttribute Contact contact){
	
		Address addressSaved = PersistenceManager.saveAddress(address.getContactAlias(), address);
//		PersistenceManager.updateContact(address.getContactAlias(), address);
		model.addAttribute("contacts",PersistenceManager.getContacts());
		model.addAttribute("address",addressSaved);
		model.addAttribute("contact", null);
		
		System.out.println(getClass());
//		System.out.println("saving address info:"+PersistenceManager.getAddress(address.getAddressAlias()));
		
		return "add";
	}		
	
//	Display the list of contacts
	@RequestMapping(value="/liste-adresses",method=RequestMethod.GET)
	public String listAdresse(Model model)	{
		
		Map <String, Address> addresses = PersistenceManager.getAddresses();
		model.addAttribute("contact", new Contact());
		model.addAttribute("addresses", addresses);
		model.addAttribute("messageList", "Liste d'adresses");
		System.out.println(getClass());
		System.out.println("address list:"+ addresses);
		
		return "lists";
	}
	
//	delete the selected contact
	@RequestMapping(value="/delete-adresse",method=RequestMethod.GET)
	public String suppressionAdresse(Model model){
		
		model.addAttribute("addresses",PersistenceManager.getAddresses());
		
		return "deleteAddress";
	}
	
//	delete the selected contact and display the list of contact
	@RequestMapping(value="/delete-adresse",method=RequestMethod.POST)
	public String addressSubmit(@ModelAttribute String key, Model model){
	
		PersistenceManager.delete(key);
//		model.addAttribute("address",PersistenceManager.getAddress(key));
		
		return "lists";
	}
		
}