package fr.esiea.ail.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.esiea.ail.model.Address;
import fr.esiea.ail.model.Contact;
import fr.esiea.ail.persistence.PersistenceManager;

@Controller
public class ContactController {
	
//	Get the form contact
	@RequestMapping(value="/contact",method=RequestMethod.GET)
	public String ajoutContact(Model model)	{
		
		model.addAttribute("contact", new Contact());
//		model.addAttribute("addresses", PersistenceManager.getAddresses());
		
		return "editContact";
	}
	
//	save form in map
	@RequestMapping(value="/contact",method=RequestMethod.POST)
	public String contactSubmit(@ModelAttribute Contact contact, Model model,
								@ModelAttribute Address address){
		
		boolean showAddress = false ;
		boolean showContact = true ;
		PersistenceManager.saveContact(contact);
		model.addAttribute("contacts",PersistenceManager.getContacts());
//		model.addAttribute("addresses",PersistenceManager.getAddresses());
		model.addAttribute("address", null);
		model.addAttribute("showAddress", showAddress);
		model.addAttribute("showContact", showContact);
		System.out.println("saving contact info:"+PersistenceManager.getContact(contact.getContactAlias()));
		
		return "add";
	}
	
//	display details of a contact
	@RequestMapping(value="/contact-{contactAlias}",method=RequestMethod.GET)
	public String getContacts(@PathVariable("contactAlias") String contactAlias,
								@ModelAttribute Contact contact, Model model,
								@ModelAttribute Address address)	{
		
		Contact detailsContact = PersistenceManager.getContact(contactAlias) ;
		Map<String, Address> addresses = detailsContact.getAdresses();
		model.addAttribute("contact", detailsContact);
		model.addAttribute("addresses", addresses);
		System.out.println("Details contact info: "+ detailsContact);
		
		return "details";
	}
	
//	display the list of contacts
	@RequestMapping(value="/liste-contacts",method=RequestMethod.GET)
	public String listContacts(Model model)	{
		
		HashMap <String, Contact> contacts = PersistenceManager.getContacts();
		
		model.addAttribute("contact", new Contact());
		model.addAttribute("contacts",contacts);
		model.addAttribute("messageList", "Liste de contacts");
		
		System.out.println("contact list:"+contacts);
		return "lists";
	}
	
//	delete the selected contact
	@RequestMapping(value="/supprimer-contact-{contactAlias}",method=RequestMethod.GET)
	public String suppressionContact(@PathVariable("contactAlias") String contactAlias, Model model){
		
		String status = PersistenceManager.deleteContact(contactAlias);
		model.addAttribute("contacts",PersistenceManager.getContacts());
		model.addAttribute("status", status);
		
		return "delete";
	}
	
}