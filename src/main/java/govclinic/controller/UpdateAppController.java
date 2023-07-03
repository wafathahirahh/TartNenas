package govclinic.controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import govclinic.dao.AppointmentDAO;
import govclinic.model.Appointments;

/**
 * Servlet implementation class UpdateShawlController
 */
public class UpdateAppController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AppointmentDAO dao;    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAppController() {
        super();
        dao = new AppointmentDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int appid = Integer.parseInt(request.getParameter("appid"));
		request.setAttribute("app", AppointmentDAO.getAppointment(appid));
		RequestDispatcher view = request.getRequestDispatcher("updateAppointment.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Appointments app = new Appointments();
		app.setAppid(Integer.parseInt(request.getParameter("appid")));
		app.setAppdate(request.getParameter("appdate"));
		app.setApptime(request.getParameter("apptime"));
		app.setAppdepartment(request.getParameter("appdepartment"));
		
		dao.updateAppointment(app); 
		
		HttpSession session = request.getSession();
		Integer userID = (Integer) session.getAttribute("userid");
		
		if (userID != null) {
	    int userIdValue = userID.intValue();
		request.setAttribute("appointments", AppointmentDAO.ListAppointment(userIdValue));
		RequestDispatcher view = request.getRequestDispatcher("listAppointment.jsp");
		view.forward(request, response);
		} else {response.sendRedirect("patientLogin.jsp");}
	}

}
