package admin;

public class Machine {
	 private int id;
	 private String code;
	 private String fuelType;
	 private String capacity;
	
	public Machine(int id, String code, String fuelType, String capacity) {
		super();
		this.id = id;
		this.code = code;
		this.fuelType = fuelType;
		this.capacity = capacity;
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getFuelType() {
		return fuelType;
	}
	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}
	public String getCapacity() {
		return capacity;
	}
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	
	
	

}
