package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "menu")
public class MenuBean {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "name")
	//@NotEmpty
	private String name;
	@Column(name = "price")
	private Double price;

	public void setPrice(Double price) {
		this.price = price;
	}

	@Column(name = "active")
	private String active;
	@Column(name = "Date")
	//@Pattern(regexp = "[0-9] {2}/[0-9] {2}/[0-9] {4}")
	private String Date;
	@Column(name = "category")

	private String category;
	@Column(name = "delivery")
	private boolean delivery;

	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		return "MenuBean [id=" + id + ", name=" + name + ", price=" + price + ", active=" + active + ", Date=" + Date
				+ ", category=" + category + ", delivery=" + delivery + "]";
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public boolean getDelivery() {
		return delivery;
	}

	public void setDelivery(boolean delivery) {
		this.delivery = delivery;
	}

	
	
}
