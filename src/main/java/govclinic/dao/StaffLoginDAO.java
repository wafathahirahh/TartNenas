package govclinic.dao;

import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;



import java.sql.*;
import java.util.*;

import govclinic.connection.ConnectionManager;
import govclinic.model.*;

public class StaffLoginDAO {
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//login
		static int staffid;
		public static Staffs login(Staffs bean) throws NoSuchAlgorithmException {
		
			staffid = bean.getStaffid();

	    
	    String searchQuery = "select * from staff where staffid='" + staffid + "'";

	    System.out.println("Your id is " + staffid );
	    System.out.println("Query: " + searchQuery);

	    try {
	        con = ConnectionManager.getConnection();
	        stmt = con.createStatement();
	        rs = stmt.executeQuery(searchQuery);
	        boolean more = rs.next();

	        // if user exists set the isValid variable to true
	        if (more) {
	        	Integer staffid = rs.getInt("staffid");
	       		System.out.println("Welcome " + staffid);
	            bean.setStaffid(staffid);
	            bean.setValid(true);
	       	}
	       
	        // if user does not exist set the isValid variable to false
	        else if (!more) {
	        	System.out.println("Sorry, you are not admin");
	        	bean.setValid(false);
	        }
	       
	    }

	    catch (Exception ex) {
	        System.out.println("Log In failed: An Exception has occurred! " + ex);
	    }

	    finally {
	        if (rs != null) {
	            try {
	                rs.close();
	            } catch (Exception e) {
	            }
	            rs = null;
	        }

	        if (stmt != null) {
	            try {
	                stmt.close();
	            } catch (Exception e) {
	            }
	            stmt = null;
	        }

	        if (con != null) {
	            try {
	                con.close();
	            } catch (Exception e) {
	            }

	            con = null;
	        }
	    }

	    return bean;
	}

	}