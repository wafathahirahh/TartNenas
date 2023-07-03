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

public class DoctorLoginDAO {
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//login
		static int docid;
		public static Doctors login(Doctors bean) throws NoSuchAlgorithmException {
		
			docid = bean.getDocid();

	    
	    String searchQuery = "select * from doctor where docid='" + docid + "'";

	    System.out.println("Your id is " + docid );
	    System.out.println("Query: " + searchQuery);

	    try {
	        con = ConnectionManager.getConnection();
	        stmt = con.createStatement();
	        rs = stmt.executeQuery(searchQuery);
	        boolean more = rs.next();

	        // if user exists set the isValid variable to true
	        if (more) {
	        	Integer docid = rs.getInt("docid");
	       		System.out.println("Welcome " + docid);
	            bean.setDocid(docid);
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