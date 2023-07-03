package govclinic.controller;

import java.io.IOException;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import govclinic.dao.StaffDAO;
import govclinic.model.Staffs;

/**
 * Servlet implementation class OrdersController
 */
public class StaffController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String action="", forward="";
	private static String LIST ="listStaff.jsp";
	private static String VIEW ="viewStaff.jsp";
	private StaffDAO dao;
	private int staffid;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public StaffController() {
		super();
		dao = new StaffDAO();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		action = request.getParameter("action");

		//ACTION FOR VIEW PATIENT
		if(action.equalsIgnoreCase("view")) {
			forward = VIEW;
			staffid = Integer.parseInt(request.getParameter("staffid"));
			request.setAttribute("staff", StaffDAO.getStaff(staffid));
		}
		
		//ACTION FOR LIST PATIENT
		if(action.equalsIgnoreCase("list")) {
			forward = LIST;
			request.setAttribute("staffs", StaffDAO.getStaff());
		}

		//ACTION FOR DELETE PATIENT
		if(action.equalsIgnoreCase("delete")) {
			forward = LIST;
			staffid = Integer.parseInt(request.getParameter("staffid"));
			dao.deleteStaff(staffid);
			request.setAttribute("staffs", StaffDAO.getStaff());
		}

		//forward the request
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		Staffs staff = new Staffs();

		//retrieve from HTML and set the values
		staff.setStaffid(Integer.parseInt(request.getParameter("staffid")));
		staff.setStaffname(request.getParameter("staffname"));
		staff.setStaffdepart(request.getParameter("staffdepart"));
		staff.setStafftime(request.getParameter("stafftime"));
		staff.setStaffroles(request.getParameter("staffroles"));
		staff.setSisid(Integer.parseInt(request.getParameter("sisid")));
		staff.setStaffpassword(request.getParameter("staffpassword"));		
		//invoke method addOrder() in PatientDAO
		dao.addStaff(staff);
		
		//set attribute to a servlet request and call getCustomerOrders() method
		request.setAttribute("staffs", StaffDAO.getStaff());
		
		//forward the request to listOrder.jsp
		forward = LIST;
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}
}

