package fr.esiea.ail.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.esiea.ail.model.Contact;
import fr.esiea.ail.persistence.PersistenceManager;

@Controller
public class ContactController {
	
	@RequestMapping(value="/contact",method=RequestMethod.GET)
	public String ajoutContact(Model model)	{
		
		model.addAttribute("contact", new Contact());
		model.addAttribute("addresses", PersistenceManager.getAddresses());
		
		return "editContact";
	}
	
	@RequestMapping(value="/contact",method=RequestMethod.POST)
	public String contactSubmit(@ModelAttribute Contact contact, Model model){
	
		PersistenceManager.saveContact(contact);
		model.addAttribute("contacts",PersistenceManager.getContacts());
		
		return "lists";
	}		
	
	@RequestMapping(value="/liste-contacts",method=RequestMethod.GET)
	public String listContacts(Model model)	{
		
		model.addAttribute("contact", new Contact());
		model.addAttribute("contacts",PersistenceManager.getContacts());
		
		return "lists";
	}
	
	@RequestMapping(value="/deletecontact",method=RequestMethod.GET)
	public String suppressionContact(Model model){
		
		model.addAttribute("contacts",PersistenceManager.getContacts());
		
		return "deleteContact";
	}
		
	@RequestMapping(value="/deletecontact",method=RequestMethod.POST)
	public String contactSubmit(@ModelAttribute String key, Model model){
	
		PersistenceManager.deleteContact(key);
		model.addAttribute("contact",PersistenceManager.getContact(key));
		
		return "lists";
	}
		
}