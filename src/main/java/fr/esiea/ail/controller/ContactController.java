package fr.esiea.ail.controller;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.esiea.ail.model.Contact;
import fr.esiea.ail.persistence.PersistenceManager;

@Controller
public class ContactController {
	
//	Get the form contact
	@RequestMapping(value="/contact",method=RequestMethod.GET)
	public String ajoutContact(Model model)	{
		
		model.addAttribute("contact", new Contact());
		model.addAttribute("addresses", PersistenceManager.getAddresses());
		
		return "editContact";
	}
	
//	save form in map then display the list of contacts
	@RequestMapping(value="/contact",method=RequestMethod.POST)
	public String contactSubmit(@ModelAttribute Contact contact, Model model){
	
		PersistenceManager.saveContact(contact);
		model.addAttribute("contacts",PersistenceManager.getContacts());
		System.out.println("saving contact info:"+PersistenceManager.getContact(contact.getContactAlias()));
		System.out.println("contact alias:"+contact.getContactAlias());
		return "lists";
	}
	
//	display details of a contact
	@RequestMapping(value="/contact-{contactAlias}",method=RequestMethod.GET)
	public String getContacts(@PathVariable("contactAlias") String contactAlias,
								@ModelAttribute Contact contact, Model model)	{
		
		Contact detailsContact = PersistenceManager.getContact(contactAlias) ;
		model.addAttribute("contact", detailsContact);
		System.out.println("Details contact info: "+ detailsContact);
		
		return "details";
	}
	
//	display the list of contacts
	@RequestMapping(value="/liste-contacts",method=RequestMethod.GET)
	public String listContacts(Model model)	{
		
		HashMap <String, Contact> contacts = PersistenceManager.getContacts();
		
		model.addAttribute("contact", new Contact());
		model.addAttribute("contacts",contacts);
		System.out.println("contact list:"+contacts);
		return "lists";
	}
	
//	delete the selected contact
	@RequestMapping(value="/delete-contact",method=RequestMethod.GET)
	public String suppressionContact(Model model){
		
		model.addAttribute("contacts",PersistenceManager.getContacts());
		
		return "deleteContact";
	}
	
//	delete the selected contact and display the list of contact
	@RequestMapping(value="/delete-contact",method=RequestMethod.POST)
	public String contactSubmit(@ModelAttribute String key, Model model){
	
		PersistenceManager.deleteContact(key);
		model.addAttribute("contact",PersistenceManager.getContact(key));
		
		return "lists";
	}
		
}