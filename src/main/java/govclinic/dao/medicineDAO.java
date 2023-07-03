package govclinic.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import govclinic.connection.ConnectionManager;
import govclinic.model.*;

public class medicineDAO{
	static Connection con=null;
	static PreparedStatement ps =null;
	static Statement stmt = null;
	static ResultSet rs = null;
	private int medid;
	private String medname;
	private String meddesc;
	private String expireddate;
	private String medtime;
	private String meddate;
	private String medtype;
	private double medweight;
	private double medvolume;
	
	//add medicine
	public void addMedicine(Medicine bean) {
		medid=bean.getMedid();
		medname=bean.getMedname();
		meddesc=bean.getMeddesc();
		expireddate=bean.getExpireddate();
		medtime=bean.getMedtime();
		meddate=bean.getMeddate();
		medtype=bean.getMedtype();
		medweight=bean.getMedweight();
		medvolume=bean.getMedvolume();
		
		try {
			con = ConnectionManager.getConnection();
			
			ps = con.prepareStatement("insert into medicine(medid,medname,meddesc,expireddate,medtime,meddate,medtype,medweight,medvolume) values (?,?,?,?,?,?,?,?,?)");
		    ps.setInt(1, medid);
			ps.setString(2,medname);
		    ps.setString(3, meddesc);
		    ps.setString(4,expireddate);
		    ps.setString(5, medtime);
		    ps.setString(6, meddate);
		    ps.setString(7, medtype);
		    ps.setDouble(8, medweight);
		    ps.setDouble(9, medvolume);
		    
		    ps.executeUpdate();
		    System.out.println("successfully added");
		    
		    con.close();
		    
		}catch(Exception e) {
			e.printStackTrace();
		    System.out.println("Fail to add");

		}

	}
	//get all medicines
			public static List<Medicine> getAllMedicines(){
				List<Medicine> medicines = new ArrayList<Medicine>();
				
				try {
					//call getConnection() method
					con = ConnectionManager.getConnection();
					
					//3. create statement 
					stmt = con.createStatement();
					//String sql = "SELECT * FROM medicine";
					
					//4. execute query
					rs = stmt.executeQuery("SELECT * FROM medicine");
					
					while(rs.next()) {		//process result
						Medicine m = new Medicine();
						m.setMedid(rs.getInt("medid"));
						m.setMedname(rs.getString("medname"));
						m.setMeddesc(rs.getString("meddesc"));
						m.setExpireddate(rs.getString("expireddate"));
						m.setMedtime(rs.getString("medtime"));
						m.setMeddate(rs.getString("meddate"));
						m.setMedtype(rs.getString("medtype"));
						m.setMedweight(rs.getDouble("medweight"));
						m.setMedvolume(rs.getDouble("medvolume"));

						//m.setMedVol(rs.getFloat("medVol"));
						//m.setMedWeight(rs.getFloat("medWeight"));	
						medicines.add(m);
					}
					
					//5. close connection
					con.close();
					
				}catch(Exception e) {
					e.printStackTrace();
				
					
				}
				
				
				return medicines;
			}
				
			//get medicine by id
			public static Medicine getMedicineById(int medid) {
				Medicine m = new Medicine();
				try {
					//call getConnection() method
					con = ConnectionManager.getConnection();
					
					//3. create statement 
					ps = con.prepareStatement("SELECT * FROM medicine WHERE medid=?");
					ps.setInt(1, medid);
					
					//4. execute query
					rs = ps.executeQuery();
					if(rs.next()) {
						m.setMedid(rs.getInt("medid"));
						m.setMedname(rs.getString("medname"));
						m.setMeddesc(rs.getString("meddesc"));
						m.setExpireddate(rs.getString("expireddate"));
						m.setMedtime(rs.getString("medtime"));
						m.setMeddate(rs.getString("meddate"));
						m.setMedtype(rs.getString("medtype"));
						m.setMedweight(rs.getDouble("medweight"));
						m.setMedvolume(rs.getDouble("medvolume"));		
					}
					//5. close connection
					con.close();
					
				}catch(Exception e) {
					e.printStackTrace();	
					System.out.println("fail to get by id");

				}			
				return m;
			}
			
			
			//update medicine
			
			public void updateMedicine(Medicine bean) {
				
				medid = bean.getMedid();
				medname  = bean.getMedname();
				meddesc  = bean.getMeddesc();
				expireddate= bean.getExpireddate();
				medtime=bean.getMedtime();
				meddate=bean.getMeddate();
				medtype=bean.getMedtype();
				medweight = bean.getMedweight();
				medvolume = bean.getMedvolume();
				
				try {			
					//call getConnection() method
					con = ConnectionManager.getConnection();
					
					//3. create statement
					ps = con.prepareStatement("UPDATE medicine SET medname=?,meddesc=?,expireddate=?,medtime=?,meddate=?,medtype=?,medweight=?,medvolume=? WHERE medid=?");
					ps.setString(1,medname);
				    ps.setString(2, meddesc);
				    ps.setString(3,expireddate);
				    ps.setString(4, medtime);
				    ps.setString(5, meddate);
				    ps.setString(6, medtype);
				    ps.setDouble(7, medweight);
				    ps.setDouble(8, medvolume);
				    ps.setInt(9, medid);
					//4. execute query
					ps.executeUpdate();
					
					System.out.println("Successfully updated");
					
					//5. close connection
					con.close();
					
				}catch(Exception e) {
					e.printStackTrace();
					System.out.println("Fail to update");

					
				}
			}	
			
			//delete medicine
				public void deleteMedicine(int medid) {
					try {
						//call getConnection() method
						con = ConnectionManager.getConnection();
						
						//3. create statement 			
						ps = con.prepareStatement("DELETE FROM medicine WHERE medid=?");
						ps.setInt(1, medid);
						
						//4. execute query
						ps.executeUpdate();
					    System.out.println("successfully deleted");

						
						//5. close connection
						con.close();
						
					}catch(Exception e) {
						e.printStackTrace();	
						System.out.println("Fail to delete");

					}			
				}
				
		}
