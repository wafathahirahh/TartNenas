package govclinic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import govclinic.dao.DoctorLoginDAO;
import govclinic.model.Doctors;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



public class DoctorLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private DoctorLoginDAO dao;
    HttpServletRequest request;
    HttpServletResponse response;
    String forward="";
    String action="";
       
    public DoctorLoginController() {
        super();
        dao = new DoctorLoginDAO();
    }
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	action = request.getParameter("action");
    	
    	try {
			
    		Doctors s = new Doctors();
    		s.setDocid(Integer.parseInt(request.getParameter("docid")));
    		s = DoctorLoginDAO.login(s);

			if(s.isValid())
			{
				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser", s);
			    session.setAttribute("userid", s.getDocid());
			    session.setAttribute("username", s.getDocname()); // Set the doctor's name in the session
				response.sendRedirect("homepageDoctor.jsp"); 
			}
			else
			{
				response.setContentType("text/html");
			      PrintWriter pw = response.getWriter();
			      pw.println("<script>");
			      pw.println("alert('Incorrect Username or Password');");
			      pw.println("window.location.href='loginDoctor.jsp';");
			      pw.println("</script>");
			}
			
		}
		catch (Throwable ex) {
			System.out.println(ex);
		}

}

}