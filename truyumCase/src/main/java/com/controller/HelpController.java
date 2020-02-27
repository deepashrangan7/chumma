package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.MenuBean;
import com.service.MenuDao;




@Controller

public class HelpController {
	
	@Autowired
	private MenuDao md;
	
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
	public String admin(ModelMap m)
	{
	List<MenuBean>	obj=md.findAll();
		m.addAttribute("menu", obj);
		return "admin";
	}
	@RequestMapping("/me")
	public String menu()
	{
		return "menu";
	}

	@RequestMapping("/add")
	public String addMenu()
	{
		return "addproduct";
	}
	

	@RequestMapping("/added")
	public String added(MenuBean mb)
	{
		int id=0;
		List<MenuBean>obj=md.findAll();
		for(MenuBean o:obj)
			id=o.getId()+1;
		mb.setId(id);
		if(mb.getDelivery()==null)
			mb.setDelivery("no");
		else
			mb.setDelivery("yes");
		md.save(mb);
		return "admin";
	}
}