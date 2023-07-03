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
 * Servlet implementation class UpdateShawlController
 */
public class UpdateStaffController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StaffDAO dao;    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStaffController() {
        super();
        dao = new StaffDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int staffid = Integer.parseInt(request.getParameter("staffid"));
		request.setAttribute("staff", StaffDAO.getStaff(staffid));
		RequestDispatcher view = request.getRequestDispatcher("updateStaff.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Staffs staff = new Staffs();
		staff.setStaffid(Integer.parseInt(request.getParameter("staffid")));
		staff.setStaffname(request.getParameter("staffname"));
		staff.setStaffdepart(request.getParameter("staffdepart"));
		staff.setStafftime(request.getParameter("stafftime"));
		staff.setStaffroles(request.getParameter("staffroles"));
		staff.setSisid(Integer.parseInt(request.getParameter("sisid")));
		staff.setStaffpassword(request.getParameter("staffpassword"));
		
		dao.updateStaff(staff); 
		
		request.setAttribute("staffs", StaffDAO.getStaff());
		RequestDispatcher view = request.getRequestDispatcher("listStaff.jsp");
		view.forward(request, response);
	}

}
