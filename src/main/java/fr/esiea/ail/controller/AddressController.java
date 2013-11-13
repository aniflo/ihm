package fr.esiea.ail.controller;

import java.util.HashMap;

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
public class AddressController {

//	Get the form address
	@RequestMapping(value="/adresse",method=RequestMethod.GET)
	public String ajoutAdresse(Model model)	{
		
		HashMap <String, Contact> contacts = PersistenceManager.getContacts();
		model.addAttribute("address", new Address());
		model.addAttribute("contacts", contacts);
		System.out.println("contact list:"+ contacts);
		return "createAddress";
	}
	
//	Save form address in map
	@RequestMapping(value="/adresse",method=RequestMethod.POST)
	public String addressSubmit(@ModelAttribute Address address, Model model,
								@ModelAttribute Contact contact){
		
		boolean showContact = false ;
		boolean showAddress = true ;
		Address addressSaved = PersistenceManager.saveAddress(address.getContactAlias(), address);
		model.addAttribute("contacts",PersistenceManager.getContacts());
		model.addAttribute("address",addressSaved);
		model.addAttribute("contact", null);
		model.addAttribute("showContact", showContact);
		model.addAttribute("showAddress", showAddress);
		
		System.out.println(getClass());
//		System.out.println("saving address info:"+PersistenceManager.getAddress(address.getAddressAlias()));
		
		return "add";
	}		

//	Get the edit form contact
	@RequestMapping(value="editer-adresse-{contactAlias}-{addressAlias}",method=RequestMethod.GET)
	public String editContact(@PathVariable("contactAlias") String contactAlias,Model model,
								@PathVariable("addressAlias") String addressAlias)	{
		
		Address address = PersistenceManager.getContact(contactAlias).getAdresses().get(addressAlias);
//		Contact contact = PersistenceManager.getContact(contactAlias);
		model.addAttribute("address", address);
		return "editAddress";
	}
	
//	Update address of contact
	@RequestMapping(value="editer-adresse-{contactAlias}-{addressAlias}", method=RequestMethod.POST)
	public String editAddress(@PathVariable("contactAlias") String contactAlias, Model model,
								@PathVariable("addressAlias") String addressAlias, @ModelAttribute Address address,
								@ModelAttribute Contact contact){

		boolean showAddress = true ;
		boolean showContact = false ;
		PersistenceManager.updateAddress(contactAlias, addressAlias, address);
		model.addAttribute("contact", null);
		model.addAttribute("showAddress", showAddress);
		model.addAttribute("showContact", showContact);
		return "add";

}
//	delete the selected address
	@RequestMapping(value="/supprimer-adresse-{contactAlias}-{addressAlias}",method=RequestMethod.GET)
	public String suppressionAdresse(@PathVariable("addressAlias") String addressAlias,Model model,
									@PathVariable("contactAlias") String contactAlias){
		
		String status = PersistenceManager.deleteAddress(contactAlias,addressAlias);
		model.addAttribute("status", status);
		
		return "delete";
	}
		
}