package com.progresstracker.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.progresstracker.model.UserProfile;

@Controller
public class LoginController {

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login (ModelMap model) { 
		System.out.println("in the login method kutas");
		return "login";
	}
	
	@RequestMapping(value="/loginFailed", method=RequestMethod.GET)
	public String loginFailed (ModelMap model) { 
		System.out.print("in the login failed method kutas ");
		model.addAttribute("error", "true");
		return "login";
	}
	
	@RequestMapping(value="/createAccount", method=RequestMethod.GET)
	public String getCreateAccount (@ModelAttribute ("userProfile") UserProfile userProfile) {
		return "createAccount";
	}
	
	@RequestMapping(value="/createAccount", method=RequestMethod.POST)
	public String postCreateAccount (@Valid @ModelAttribute ("userProfile") UserProfile userProfile, BindingResult result) { 
		System.out.println("username: " + userProfile.getUsername());
		System.out.println("does result have errors? : " + result.hasErrors());
		
		if (result.hasErrors()) {
			
			return "createAccount";
		} else {
			return "redirect:login.html";
		}
	}
	
}
