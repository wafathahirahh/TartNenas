package govclinic.model;

public class Medicine {
private int medid;
private String medname;
private String meddesc;
private String expireddate;
private String medtime;
private String meddate;
private String medtype;
private double medweight;
private double medvolume;

public int getMedid() {
	return medid;
}
public void setMedid(int medid) {
	this.medid = medid;
}

public String getMedname() {
	return medname;
}
public void setMedname(String medname) {
	this.medname = medname;
}

public String getMeddesc() {
	return meddesc;
}
public void setMeddesc(String meddesc) {
	this.meddesc = meddesc;
}

public String getExpireddate() {
	return expireddate;
}
public void setExpireddate(String expireddate) {
	this.expireddate = expireddate;
}

public String getMedtime() {
	return medtime;
}
public void setMedtime(String medtime) {
	this.medtime = medtime;
}

public String getMeddate() {
	return meddate;
}
public void setMeddate(String meddate) {
	this.meddate = meddate;
}

public String getMedtype() {
	return medtype;
}
public void setMedtype(String medtype) {
	this.medtype = medtype;
}

public double getMedweight() {
	return medweight;
}
public void setMedweight(double medweight) {
	this.medweight = medweight;
}

public double getMedvolume() {
	return medvolume;
}
public void setMedvolume(double medvolume) {
	this.medvolume = medvolume;
}

}
