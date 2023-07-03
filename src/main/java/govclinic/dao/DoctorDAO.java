package govclinic.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import govclinic.connection.ConnectionManager;
import govclinic.model.Doctors;
import govclinic.model.Patients;


public class DoctorDAO {
    private static Connection con = null;
    private static PreparedStatement ps = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Add a doctor
    public void addDoctor(Doctors doctor) {
        try {
            con = ConnectionManager.getConnection();

            ps = con.prepareStatement("INSERT INTO doctor (docid, docname, docdepart, mmcnum) VALUES (?, ?, ?, ?)");
            ps.setInt(1, doctor.getDocid());
            ps.setString(2, doctor.getDocname());
            ps.setString(3, doctor.getDocdepart());
            ps.setString(4, doctor.getMmcnum());

            ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Retrieve a doctor by ID
    public Doctors getDoctorById(int id) {
        Doctors doctor = null;
        try {
            con = ConnectionManager.getConnection();

            ps = con.prepareStatement("SELECT * FROM doctor WHERE docid = ?");
            ps.setInt(1, id);

            rs = ps.executeQuery();

            if (rs.next()) {
                doctor = new Doctors();
                doctor.setDocid(rs.getInt("docid"));
                doctor.setDocname(rs.getString("docname"));
                doctor.setDocdepart(rs.getString("docdepart"));
                doctor.setMmcnum(rs.getString("mmcnum"));
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return doctor;
    }
 /* Retrieve a doctor by name
    public Doctors getDoctorByName(String name) {
        Doctors doctor = null;
        try {
            con = ConnectionManager.getConnection();

            ps = con.prepareStatement("SELECT * FROM doctor WHERE docname = ?");
            ps.setString(1, name);

            rs = ps.executeQuery();

            if (rs.next()) {
                doctor = new Doctors();
                doctor.setDocid(rs.getInt("docid"));
                doctor.setDocname(rs.getString("docname"));
                doctor.setDocdepart(rs.getString("docdepart"));
                doctor.setMmcnum(rs.getString("mmcnum"));
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return doctor;
    }
*/
    // Retrieve all doctors
    public List<Doctors> getAllDoctors() {
        List<Doctors> doctors = new ArrayList<>();
        try {
            con = ConnectionManager.getConnection();

            stmt = con.createStatement();

            rs = stmt.executeQuery("SELECT * FROM doctor");

            while (rs.next()) {
                Doctors doctor = new Doctors();
                doctor.setDocid(rs.getInt("docid"));
                doctor.setDocname(rs.getString("docname"));
                doctor.setDocdepart(rs.getString("docdepart"));
                doctor.setMmcnum(rs.getString("mmcnum"));
                doctors.add(doctor);
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return doctors;
    }

    // Update a doctor
    public void updateDoctor(Doctors doctor) {
        try {
            con = ConnectionManager.getConnection();

            ps = con.prepareStatement("UPDATE doctor SET docname = ?, docdept = ?, mmcnum = ? WHERE docid = ?");
            ps.setString(1, doctor.getDocname());
            ps.setString(2, doctor.getDocdepart());
            ps.setString(3, doctor.getMmcnum());
            ps.setInt(4, doctor.getDocid());

            ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Delete a doctor by ID
    public void deleteDoctor(int docid) {
        try {
            con = ConnectionManager.getConnection();

            ps = con.prepareStatement("DELETE FROM doctor WHERE docid = ?");
            ps.setInt(1, docid);

            ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }}
    
 // Retrieve the patient list for a specific doctor
 /*    public List<Patients> getPatientListByDoctorName(String doctorName) {
        List<Patients> patients = new ArrayList<>();
        try {
            con = ConnectionManager.getConnection();

            ps = con.prepareStatement("SELECT * FROM patient p " +
                    "JOIN appointment a ON p.patientid = a.patientid " +
                    "JOIN doctor d ON a.docid = d.docid " +
                    "WHERE d.docname = ?");
            ps.setString(1, doctorName);

            rs = ps.executeQuery();

            while (rs.next()) {
                Patients patient = new Patients();
                patient.setPatientid(rs.getInt("patientid"));
                patient.setPatientname(rs.getString("patientname"));
                // Set other patient properties as needed

                patients.add(patient);
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return patients;
    }
} */
