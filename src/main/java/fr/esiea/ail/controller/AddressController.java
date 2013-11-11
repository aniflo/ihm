package fr.esiea.ail.controller;

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
		
		model.addAttribute("address", new Address());
		
		return "editAddress";
	}
	
//	Save form in map then display the list of contacts
	@RequestMapping(value="/adresse",method=RequestMethod.POST)
	public String addressSubmit(@ModelAttribute Address address, Model model){
	
		PersistenceManager.saveAddress(address);
		model.addAttribute("addresses",PersistenceManager.getAddresses());
		
		return "lists";
	}		
	
//	Display the list of contacts
	@RequestMapping(value="/liste-adresses",method=RequestMethod.GET)
	public String listAdresse(Model model)	{
		
		model.addAttribute("contact", new Contact());
		model.addAttribute("addresses", PersistenceManager.getAddresses());
		
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
		model.addAttribute("address",PersistenceManager.getAddress(key));
		
		return "lists";
	}
		
}