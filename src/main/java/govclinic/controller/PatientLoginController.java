package govclinic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import govclinic.dao.PatientLoginDAO;
import govclinic.model.Patients;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



public class PatientLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private PatientLoginDAO dao;
    HttpServletRequest request;
    HttpServletResponse response;
    String forward="";
    String action="";
       
    public PatientLoginController() {
        super();
        dao = new PatientLoginDAO();
    }
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	action = request.getParameter("action");
    	
    	try {
			
    		Patients s = new Patients();
    		s.setPatientid(Integer.parseInt(request.getParameter("patientid")));
    		s.setPatientpassword(request.getParameter("patientpassword"));
    		s = PatientLoginDAO.login(s);

			if(s.isValid())
			{
				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser", s);
			    session.setAttribute("userid", s.getPatientid());
				response.sendRedirect("homepage.jsp"); 

			}
			else
			{
				response.setContentType("text/html");
			      PrintWriter pw = response.getWriter();
			      pw.println("<script>");
			      pw.println("alert('Incorrect Username or Password');");
			      pw.println("window.location.href='loginPatient.jsp';");
			      pw.println("</script>");
			}
			
		}
		catch (Throwable ex) {
			System.out.println(ex);
		}

}

}