package govclinic.model;

public class Appointments {
	private int appid;
	private String appdate;
	private String apptime;
	private String appdepartment;
	
	public int getAppid() {
		return appid;
	}
	public void setAppid(int appid) {
		this.appid = appid;
	}
	
	public String getAppdate() {
		return appdate;
	}
	public void setAppdate(String appdate) {
		this.appdate = appdate;
	}
	
	public String getApptime() {
		return apptime;
	}
	public void setApptime(String apptime) {
		this.apptime = apptime;
	}
	
	public String getAppdepartment() {
		return appdepartment;
	}
	public void setAppdepartment(String appdepartment) {
		this.appdepartment = appdepartment;
	}
	
}
