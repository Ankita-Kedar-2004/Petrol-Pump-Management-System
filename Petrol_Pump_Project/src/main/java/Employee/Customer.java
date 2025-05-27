package Employee;

import java.sql.Date;

public class Customer {

	int id;
	String fuelType;
	Float totalAmount;
	Date date;
	String payment;
	Float liters;
	String email;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public Float getLiters() {
		return liters;
	}
	public void setLiters(Float liters) {
		this.liters = liters;
	}
	public Customer(int id, String fuelType, Float totalAmount, Date date, String payment, Float liters, String email) {
		super();
		this.id = id;
		this.fuelType = fuelType;
		this.totalAmount = totalAmount;
		this.date = date;
		this.payment = payment;
		this.liters = liters;
		this.email = email;
	}
	public String getFuelType() {
		return fuelType;
	}
	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}
	public Float getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(Float totalAmount) {
		this.totalAmount = totalAmount;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
