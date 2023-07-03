package govclinic.model;

public class Doctors {
	private int docid;
	private String docname;
	private String docdepart;
	private String mmcnum;
	private boolean valid;
	
	public int getDocid() {
		return docid;
	}
	public void setDocid(int docid) {
		this.docid = docid;
	}
	
	public String getDocname() {
		return docname;
	}
	public void setDocname(String docname) {
		this.docname = docname;
	}
	
	public String getDocdepart() {
		return docdepart;
	}
	public void setDocdepart(String docdepart) {
		this.docdepart = docdepart;
	}
	
	public String getMmcnum() {
		return mmcnum;
	}
	public void setMmcnum(String mmcnum) {
		this.mmcnum = mmcnum;
	}
	
	public boolean isValid() {
		return valid;
	}
	public void setValid(boolean valid) {
		this.valid = valid;
	}
}
