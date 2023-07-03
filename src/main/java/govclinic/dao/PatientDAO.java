package govclinic.dao;

import java.sql.*;
import java.util.*;
import govclinic.connection.ConnectionManager;
import govclinic.model.*;

public class PatientDAO {
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	//private static String sql;
	private int patientid, patientage;
	private String patientname, patientemail, patientrace, patientgender, patientphonenum, patientpassword;
	
	
	//getPatient() method
	public static Patients getPatient(int patientid) { 
		Patients patient = new Patients();
		try {
			//call getConnection() method
			con = ConnectionManager.getConnection();

			//create statement
			ps=con.prepareStatement("select * from patient where patientid=?");
			ps.setInt(1, patientid);

			//execute query
			rs = ps.executeQuery();

			if (rs.next()) {	            
				patient.setPatientid(rs.getInt("patientid"));	
				patient.setPatientname(rs.getString("patientname"));
				patient.setPatientage(rs.getInt("patientage"));
				patient.setPatientemail(rs.getString("patientemail"));
				patient.setPatientrace(rs.getString("patientrace"));
				patient.setPatientgender(rs.getString("patientgender"));
				patient.setPatientphonenum(rs.getString("patientphonenum"));
				patient.setPatientpassword(rs.getString("patientpassword"));
			}
			
			//close connection
			con.close();
			

			} catch (Exception e) {
				e.printStackTrace();
			}
			return patient; 
	}

	
	//ADD METHOD
	public void addPatient(Patients bean) {
		
		//get values
		
		patientid = bean.getPatientid();
		patientname = bean.getPatientname();
		patientage = bean.getPatientage();
		patientemail = bean.getPatientemail();
		patientrace = bean.getPatientrace();
		patientgender = bean.getPatientgender();
		patientphonenum = bean.getPatientphonenum();
		patientpassword = bean.getPatientpassword();
		
		try {			
			//call getConnection() method
			con = ConnectionManager.getConnection();

			//create statement
			ps=con.prepareStatement("insert into patient(patientid,patientname,patientage,patientemail,patientrace,patientgender,patientphonenum,patientpassword)values(?,?,?,?,?,?,?,?)");
			
			ps.setInt(1, patientid);
			ps.setString(2, patientname);
			ps.setInt(3, patientage);
			ps.setString(4, patientemail);
			ps.setString(5, patientrace);
			ps.setString(6, patientgender);
			ps.setString(7, patientphonenum);
			ps.setString(8, patientpassword);
			
			//execute query
			ps.executeUpdate();

			//close connection
			con.close();
		

		}catch(Exception e) {
			e.printStackTrace();				
		}
	}	

	
	//DELETE METHOD
	public void deletePatient(int patientid) {
		try {
			//call getConnection() method 
			con = ConnectionManager.getConnection();


			//create statement 
			ps=con.prepareStatement("delete from patient where patientid=?");
			ps.setInt(1, patientid);


			//execute query
			ps.executeUpdate();
			
			
			//close connection
			con.close();


		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
	//LIST METHOD
	public static List<Patients> getPatient() { 
		List<Patients> patients = new ArrayList<Patients>(); 
		try { 
			//call getConnection() method
			con = ConnectionManager.getConnection();


			//create statement
			stmt = con.createStatement(); 
			


			//execute query
			rs = stmt.executeQuery("select * from patient");

			while (rs.next()) { 
				Patients patient = new Patients();
				
				patient.setPatientid(rs.getInt("patientid"));
				patient.setPatientname(rs.getString("patientname"));
				patient.setPatientage(rs.getInt("patientage"));
				patient.setPatientemail(rs.getString("patientemail"));
				patient.setPatientrace(rs.getString("patientrace"));
				patient.setPatientgender(rs.getString("patientgender"));
				patient.setPatientphonenum(rs.getString("patientphonenum"));
				patient.setPatientpassword(rs.getString("patientpassword"));
				patients.add(patient);
			} 
			
			//close connection
			con.close();
			

		} catch (Exception e) { 
			e.printStackTrace(); 
		}

		return patients; 
	}
	
	
	public static List<Patients> ListPatient(int patientid) { 
		List<Patients> patients = new ArrayList<Patients>(); 
		try { 

			con = ConnectionManager.getConnection();

            String sqlQuery = "select * from patient where patientid = ?";
            
            PreparedStatement stat = con.prepareStatement(sqlQuery);
            
            stat.setInt(1, patientid);
            
            rs = stat.executeQuery();

			while (rs.next()) { 
				Patients patient = new Patients();
				
				patient.setPatientid(rs.getInt("patientid"));
				patient.setPatientname(rs.getString("patientname"));
				patient.setPatientage(rs.getInt("patientage"));
				patient.setPatientemail(rs.getString("patientemail"));
				patient.setPatientrace(rs.getString("patientrace"));
				patient.setPatientgender(rs.getString("patientgender"));
				patient.setPatientphonenum(rs.getString("patientphonenum"));
				patient.setPatientpassword(rs.getString("patientpassword"));
				patients.add(patient);
			} 
			
			//close connection
			con.close();
			

		} catch (Exception e) { 
			e.printStackTrace(); 
		}

		return patients; 
	}
	
	//UPDATE METHOD
	public void updatePatient(Patients bean) {
		
		patientid = bean.getPatientid();
		patientname = bean.getPatientname();
		patientage  = bean.getPatientage();
		patientemail = bean.getPatientemail();
		patientrace = bean.getPatientrace();
		patientgender = bean.getPatientgender();
		patientphonenum = bean.getPatientphonenum();
		patientpassword = bean.getPatientpassword();
		
		try {			
			//call getConnection() method
			con = ConnectionManager.getConnection();
			
			//3. create statement
			ps = con.prepareStatement("UPDATE patient SET patientname=?,patientage=?,patientemail=?,patientrace=?,patientgender=?,patientphonenum=?,patientpassword=? WHERE patientid=?");
			ps.setString(1, patientname);
			ps.setInt(2, patientage);
			ps.setString(3, patientemail);
			ps.setString(4, patientrace);
			ps.setString(5, patientgender);
			ps.setString(6, patientphonenum);
			ps.setString(7, patientpassword);
			ps.setInt(8, patientid);
			
			//4. execute query
			ps.executeUpdate();
			
			System.out.println("Successfully updated");
			
			//5. close connection
			con.close();
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
	}	

}