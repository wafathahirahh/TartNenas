package govclinic.dao;

import java.sql.*;
import java.util.*;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import govclinic.connection.ConnectionManager;
import govclinic.model.*;

public class AppointmentDAO {
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	//private static String sql;
	private int appid;
	private String appdate, apptime, appdepartment;
	
	
	//getPatient() method
	public static Appointments getAppointment(int appid) { 
		Appointments app = new Appointments();
		try {
			//call getConnection() method
			con = ConnectionManager.getConnection();

			//create statement
			ps=con.prepareStatement("select * from appointment where appid=?");
			ps.setInt(1, appid);

			//execute query
			rs = ps.executeQuery();

			if (rs.next()) {	            
				app.setAppid(rs.getInt("appid"));	
				app.setAppdate(rs.getString("appdate"));
				app.setApptime(rs.getString("apptime"));
				app.setAppdepartment(rs.getString("appdepartment"));
			}
			
			//close connection
			con.close();
			

			} catch (Exception e) {
				e.printStackTrace();
			}
			return app; 
	}

	
	//ADD METHOD
	public void addAppointment(Appointments bean,HttpServletRequest request) {
		
		//get values
		
		appid = bean.getAppid();
		appdate = bean.getAppdate();
		apptime = bean.getApptime();
		appdepartment = bean.getAppdepartment();
		
		try {			
			//call getConnection() method
			con = ConnectionManager.getConnection();

			//create statement
			ps=con.prepareStatement("insert into appointment(appid,appdate,apptime,appdepartment,patientid)values(?,?,?,?,?)");
			
			ps.setInt(1, appid);
			ps.setString(2, appdate);
			ps.setString(3, apptime);
			ps.setString(4, appdepartment);
	        // Retrieve the user ID from the session
            HttpSession session = request.getSession();
            int userId = (int) session.getAttribute("userid");

             ps.setInt(5, userId);
			
			//execute query
			ps.executeUpdate();

			//close connection
			con.close();
		

		}catch(Exception e) {
			e.printStackTrace();				
		}
	}	

	
	//DELETE METHOD
	public void deleteAppointment(int appid) {
		try {
			//call getConnection() method 
			con = ConnectionManager.getConnection();


			//create statement 
			ps=con.prepareStatement("delete from appointment where appid=?");
			ps.setInt(1, appid);


			//execute query
			ps.executeUpdate();
			
			
			//close connection
			con.close();


		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	
	//LIST METHOD
	public static List<Appointments> ListAppointment(int patientid) { 
		List<Appointments> appointments = new ArrayList<Appointments>(); 
		try { 
			//call getConnection() method
			con = ConnectionManager.getConnection();

            String sqlQuery = "select * from appointment where patientid = ?";
            
            PreparedStatement stat = con.prepareStatement(sqlQuery);
            
            stat.setInt(1, patientid);
            
            rs = stat.executeQuery();

			while (rs.next()) { 
				Appointments app = new Appointments();
				
				app.setAppid(rs.getInt("appid"));
				app.setAppdate(rs.getString("appdate"));
				app.setApptime(rs.getString("apptime"));
				app.setAppdepartment(rs.getString("appdepartment"));
				appointments.add(app);
			} 
			
			//close connection
			con.close();
			

		} catch (Exception e) { 
			e.printStackTrace(); 
		}

		return appointments; 
	}

	public static List<Appointments> getAppointment() { 
		List<Appointments> appointments = new ArrayList<Appointments>(); 
		try { 
			//call getConnection() method
			con = ConnectionManager.getConnection();


			//create statement
			stmt = con.createStatement(); 
			


			//execute query
			rs = stmt.executeQuery("select * from appointment");

			while (rs.next()) { 
				Appointments app = new Appointments();
				
				app.setAppid(rs.getInt("appid"));
				app.setAppdate(rs.getString("appdate"));
				app.setApptime(rs.getString("apptime"));
				app.setAppdepartment(rs.getString("appdepartment"));
				appointments.add(app);
			} 
			
			//close connection
			con.close();
			

		} catch (Exception e) { 
			e.printStackTrace(); 
		}

		return appointments; 
	}
	
	//UPDATE METHOD
	public void updateAppointment(Appointments bean) {
		
		appid = bean.getAppid();
		appdate = bean.getAppdate();
		apptime  = bean.getApptime();
		appdepartment = bean.getAppdepartment();
	
		try {			
			//call getConnection() method
			con = ConnectionManager.getConnection();
			
			//3. create statement
			ps = con.prepareStatement("UPDATE appointment SET appdate=?,apptime=?,appdepartment=? WHERE appid=?");
			ps.setString(1, appdate);
			ps.setString(2, apptime);
			ps.setString(3, appdepartment);
			ps.setInt(4, appid);
			
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