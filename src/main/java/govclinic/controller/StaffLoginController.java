package govclinic.controller;

import java.io.IOException;
import java.io.PrintWriter;

import govclinic.dao.StaffLoginDAO;
import govclinic.model.Staffs;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



public class StaffLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private StaffLoginDAO dao;
    HttpServletRequest request;
    HttpServletResponse response;
    String forward="";
    String action="";
       
    public StaffLoginController() {
        super();
        dao = new StaffLoginDAO();
    }
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	action = request.getParameter("action");
    	
    	try {
			
    		Staffs s = new Staffs();
    		s.setStaffid(Integer.parseInt(request.getParameter("staffid")));
    		s = StaffLoginDAO.login(s);

			if(s.isValid())
			{
				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser", s);
				session.setAttribute("userid", s.getStaffid());
				response.sendRedirect("homepageStaff.jsp"); 
			}
			else
			{
				response.setContentType("text/html");
			      PrintWriter pw = response.getWriter();
			      pw.println("<script>");
			      pw.println("alert('Incorrect Username or Password');");
			      pw.println("window.location.href='loginStaff.jsp';");
			      pw.println("</script>");
			}
			
		}
		catch (Throwable ex) {
			System.out.println(ex);
		}

}

}