package com.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.MenuBean;
import com.service.MenuDao;

@Controller

public class HelpController {

	@Autowired
	private MenuDao md;

	@GetMapping("/")
	public String show() {
		return "showpage";
	}

	@RequestMapping("/us")
	public String user() {
		return "user";
	}

	@RequestMapping("/ad")
	public String admin(ModelMap m) {
		List<MenuBean> obj = md.findAll();
		m.addAttribute("menu", obj);
		return "admin";
	}

	@RequestMapping("/me")
	public String menu() {
		return "menu";
	}

	@RequestMapping("/add")
	public String addMenu() {
		return "addproduct";
	}
	@RequestMapping(path="/edit/{id}")
	public String editMenu(@PathVariable("id")Integer id,Model m) {
		//System.out.println(id+" here");
		
		Optional<MenuBean> mb=md.findById(id);
		if(mb.isPresent())
		{
			MenuBean obj=mb.get();
			m.addAttribute("editmenu");
		}
		
		return "editproduct";
	}
	
	@RequestMapping("/edited")
	public String edited(@ModelAttribute("editmenu")MenuBean mb, Model m) {

		md.save(mb);

		return "redirect:ad";
	}

	@RequestMapping("/added")
	public String added(MenuBean mb, Model m) {

		md.save(mb);

		return "redirect:ad";
	}
}