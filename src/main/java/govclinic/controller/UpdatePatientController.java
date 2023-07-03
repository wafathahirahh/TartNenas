package govclinic.controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import govclinic.dao.PatientDAO;
import govclinic.model.Patients;

/**
 * Servlet implementation class UpdateShawlController
 */
public class UpdatePatientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PatientDAO dao;    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePatientController() {
        super();
        dao = new PatientDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int patientid = Integer.parseInt(request.getParameter("patientid"));
		request.setAttribute("patient", PatientDAO.getPatient(patientid));
		RequestDispatcher view = request.getRequestDispatcher("updatePatient.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Patients patient = new Patients();
		patient.setPatientid(Integer.parseInt(request.getParameter("patientid")));
		patient.setPatientname(request.getParameter("patientname"));
		patient.setPatientage(Integer.parseInt(request.getParameter("patientage")));
		patient.setPatientemail(request.getParameter("patientemail"));
		patient.setPatientrace(request.getParameter("patientrace"));
		patient.setPatientgender(request.getParameter("patientgender"));
		patient.setPatientphonenum(request.getParameter("patientphonenum"));
		patient.setPatientpassword(request.getParameter("patientpassword"));
		
		dao.updatePatient(patient); 
		
		HttpSession session = request.getSession();
		Integer userID = (Integer) session.getAttribute("userid");
		if (userID != null) 
		
		{
	    int userIdValue = userID.intValue();
		request.setAttribute("patients", PatientDAO.ListPatient(userIdValue));
		RequestDispatcher view = request.getRequestDispatcher("listPatient.jsp");
		view.forward(request, response);
		} else {response.sendRedirect("patientLogin.jsp");}
	}

}
