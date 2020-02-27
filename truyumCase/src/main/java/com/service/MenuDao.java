package com.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.model.MenuBean;
@Repository
public interface MenuDao extends JpaRepository<MenuBean, Integer>{

//	@Query("insert into Mb (mb.name,mb.price,mb.active,mb.Date,mb.category,mb.delivery) values()")
//	public void ins(MenuBean mb);
	
}
