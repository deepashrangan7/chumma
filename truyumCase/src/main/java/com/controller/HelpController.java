package com.controller;

import java.util.HashMap;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



//use appropriate annotation to configure HelpController as Controller

@Controller

public class HelpController {

	@GetMapping("/")
	public String show()
	{
		return "showpage";
	}
	@RequestMapping("/us")
	public String user()
	{
		return "user";
	}
	@RequestMapping("/ad")
	public String admin()
	{
		return "admin";
	}
	@RequestMapping("/me")
	public String menu()
	{
		return "menu";
	}

}