package govclinic.dao;

import java.sql.*;
import java.util.*;
import govclinic.connection.ConnectionManager;
import govclinic.model.*;


public class StaffDAO {
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	//private static String sql;
	private int staffid, sisid;
	private String staffname, staffdepart, stafftime, staffroles, staffpassword;
	
	
	//getPatient() method
	public static Staffs getStaff(int staffid) { 
		Staffs staff = new Staffs();
		try {
			//call getConnection() method
			con = ConnectionManager.getConnection();

			//create statement
			ps=con.prepareStatement("select * from staff where staffid=?");
			ps.setInt(1, staffid);

			//execute query
			rs = ps.executeQuery();

			if (rs.next()) {	            
				staff.setStaffid(rs.getInt("staffid"));	
				staff.setStaffname(rs.getString("staffname"));
				staff.setStaffdepart(rs.getString("staffdepart"));
				staff.setStafftime(rs.getString("stafftime"));
				staff.setStaffroles(rs.getString("staffroles"));
				staff.setSisid(rs.getInt("sisid"));
				staff.setStaffpassword(rs.getString("staffpassword"));
			}
			
			//close connection
			con.close();
			

			} catch (Exception e) {
				e.printStackTrace();
			}
			return staff; 
	}

	
	//ADD METHOD
	public void addStaff(Staffs bean) {
		
		//get values
		
		staffid = bean.getStaffid();
		staffname = bean.getStaffname();
		staffdepart = bean.getStaffdepart();
		stafftime = bean.getStafftime();
		staffroles = bean.getStaffroles();
		sisid = bean.getSisid();
		staffpassword = bean.getStaffpassword();
		
		try {			
			//call getConnection() method
			con = ConnectionManager.getConnection();

			//create statement
			ps=con.prepareStatement("insert into staff(staffid,staffname,staffdepart,stafftime,staffroles,sisid,staffpassword)values(?,?,?,?,?,?,?)");
			
			ps.setInt(1, staffid);
			ps.setString(2, staffname);
			ps.setString(3, staffdepart);
			ps.setString(4, stafftime);
			ps.setString(5, staffroles);
			ps.setInt(6, sisid);
			ps.setString(7, staffpassword);
			
			//execute query
			ps.executeUpdate();

			//close connection
			con.close();
		

		}catch(Exception e) {
			e.printStackTrace();				
		}
	}	

	
	//DELETE METHOD
	public void deleteStaff(int staffid) {
		try {
			//call getConnection() method 
			con = ConnectionManager.getConnection();


			//create statement 
			ps=con.prepareStatement("delete from staff where staffid=?");
			ps.setInt(1, staffid);


			//execute query
			ps.executeUpdate();
			
			
			//close connection
			con.close();


		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
	//LIST METHOD
	public static List<Staffs> getStaff() { 
		List<Staffs> staffs = new ArrayList<Staffs>(); 
		try { 
			//call getConnection() method
			con = ConnectionManager.getConnection();


			//create statement
			stmt = con.createStatement(); 
			


			//execute query
			rs = stmt.executeQuery("select * from staff");

			while (rs.next()) { 
				Staffs staff = new Staffs();
			
				staff.setStaffid(rs.getInt("staffid"));
				staff.setStaffname(rs.getString("staffname"));
				staff.setStaffdepart(rs.getString("staffdepart"));
				staff.setStafftime(rs.getString("stafftime"));
				staff.setStaffroles(rs.getString("staffroles"));
				staff.setSisid(rs.getInt("sisid"));
				staff.setStaffpassword(rs.getString("staffpassword"));
				staffs.add(staff);
			} 
			
			//close connection
			con.close();
			

		} catch (Exception e) { 
			e.printStackTrace(); 
		}

		return staffs; 
	}
	
	//UPDATE METHOD
		public void updateStaff(Staffs bean) {
			
			staffid = bean.getStaffid();
			staffname = bean.getStaffname();
			staffdepart  = bean.getStaffdepart();
			stafftime = bean.getStafftime();
			staffroles = bean.getStaffroles();
			sisid = bean.getSisid();
			staffpassword = bean.getStaffpassword();
			
			try {			
				//call getConnection() method
				con = ConnectionManager.getConnection();
				
				//3. create statement
				ps = con.prepareStatement("UPDATE staff SET staffname=?,staffdepart=?,stafftime=?,staffroles=?,sisid=?,staffpassword=? WHERE staffid=?");
				ps.setString(1, staffname);
				ps.setString(2, staffdepart);
				ps.setString(3, stafftime);
				ps.setString(4, staffroles);
				ps.setInt(5, sisid);
				ps.setString(6, staffpassword);
				ps.setInt(7, staffid);

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