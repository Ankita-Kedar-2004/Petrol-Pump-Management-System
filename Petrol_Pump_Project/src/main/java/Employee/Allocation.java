package Employee;

public class Allocation {
	int id;
	String name;
	String machinecode;
	String startTime;
	String endTime;
	String date;
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
	 public String getMachinecode() {
	        return machinecode;
	    }

	    public void setMachinecode(String machinecode) {
	        this.machinecode = machinecode;
	    }
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public Allocation(int id, String name, String machinecode, String startTime, String endTime, String date) {
		super();
		this.id = id;
		this.name = name;
		this.machinecode = machinecode;
		this.startTime = startTime;
		this.endTime = endTime;
		this.date = date;
	}


}
