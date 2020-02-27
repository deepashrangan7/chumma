package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="menu")
public class MenuBean {
	@Id
	private int id;
	@Column(name="name")
	private String name;
	@Column(name="price")
	private double price;
	@Column(name="active")
	private String active;
	@Column(name="Date")
	private String Date;
	@Column(name="category")
	private String category;
	@Column(name="delivery")
	private String delivery ;
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
	public String getDelivery() {
		return delivery;
	}
	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}
}
