package govclinic.model;

public class Patients {
	private int patientid;
	private String patientname;
	private int patientage;
	private String patientemail;
	private String patientrace;
	private String patientgender;
	private String patientphonenum;
	private String patientpassword;
	private boolean valid;
	
	public int getPatientid() {
		return patientid;
	}
	public void setPatientid(int patientid) {
		this.patientid = patientid;
	}
	
	public String getPatientname() {
		return patientname;
	}
	public void setPatientname(String patientname) {
		this.patientname = patientname;
	}
	
	public int getPatientage() {
		return patientage;
	}
	public void setPatientage(int patientage) {
		this.patientage = patientage;
	}
	
	public String getPatientemail() {
		return patientemail;
	}
	public void setPatientemail(String patientemail) {
		this.patientemail = patientemail;
	}
	
	public String getPatientrace() {
		return patientrace;
	}
	public void setPatientrace(String patientrace) {
		this.patientrace = patientrace;
	}
	
	public String getPatientgender() {
		return patientgender;
	}
	public void setPatientgender(String patientgender) {
		this.patientgender = patientgender;
	}
	
	public String getPatientphonenum() {
		return patientphonenum;
	}
	public void setPatientphonenum(String patientphonenum) {
		this.patientphonenum = patientphonenum;
	}
	
	public String getPatientpassword() {
		return patientpassword;
	}
	public void setPatientpassword(String patientpassword) {
		this.patientpassword = patientpassword;
	}
	
	public boolean isValid() {
		return valid;
	}
	public void setValid(boolean valid) {
		this.valid = valid;
	}
	
}
