package govclinic.model;

public class Staffs {
	private int staffid;
	private String staffname;
	private String staffdepart;
	private String stafftime;
	private String staffroles;
	private int sisid;
	private String staffpassword;
	private boolean valid;
	
	public int getStaffid() {
		return staffid;
	}
	public void setStaffid(int staffid) {
		this.staffid = staffid;
	}
	
	public String getStaffname() {
		return staffname;
	}
	public void setStaffname(String staffname) {
		this.staffname = staffname;
	}
	
	public String getStaffdepart() {
		return staffdepart;
	}
	public void setStaffdepart(String staffdepart) {
		this.staffdepart = staffdepart;
	}
	
	public String getStafftime() {
		return stafftime;
	}
	public void setStafftime(String stafftime) {
		this.stafftime = stafftime;
	}
	
	public String getStaffroles() {
		return staffroles;
	}
	public void setStaffroles(String staffroles) {
		this.staffroles = staffroles;
	}
	
	public int getSisid() {
		return sisid;
	}
	public void setSisid(int sisid) {
		this.sisid = sisid;
	}
	
	public String getStaffpassword() {
		return staffpassword;
	}
	public void setStaffpassword(String staffpassword) {
		this.staffpassword = staffpassword;
	}
	
	public boolean isValid() {
		return valid;
	}
	public void setValid(boolean valid) {
		this.valid = valid;
	}
}
