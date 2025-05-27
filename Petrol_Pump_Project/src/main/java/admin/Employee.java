package admin;

public class Employee {
	int id;
	String name;
	String email;
	String contact;
	int sal;
	String address;
	int age;
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	String status;
 public int getId() {
		return id;
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
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
public int getSal() {
	return sal;
}
public void setSal(int sal) {
	this.sal = sal;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}

public Employee(int id, String name, String email, String contact, int sal, String address, int age,String status) {
	super();
	this.id=id;
	this.name = name;
	this.email = email;
	this.contact = contact;
	this.status=status;
	this.sal = sal;
	this.address = address;
	this.age = age;}

}
