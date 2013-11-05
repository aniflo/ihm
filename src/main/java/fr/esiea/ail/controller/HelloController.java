package fr.esiea.ail.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.esiea.ail.persistence.PersistenceManager;

@Controller
@RequestMapping({"/","/welcome"})
public class HelloController {
	public PersistenceManager persistencemanager;
	@RequestMapping(method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {

		model.addAttribute("message", "Bienvenue dans votre carnet d'adresse");
		return "hello";

	}
}