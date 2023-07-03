package govclinic.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import govclinic.dao.medicineDAO;
import govclinic.model.Medicine;

import java.io.IOException;


public class editMedicine extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private medicineDAO dao;
    
    public editMedicine() {
        super();
        dao = new medicineDAO();
    }

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int medid = Integer.parseInt(request.getParameter("medid"));
		request.setAttribute("m", medicineDAO.getMedicineById(medid));
		RequestDispatcher view = request.getRequestDispatcher("editMedicine.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Medicine m = new Medicine();
		m.setMedid(Integer.parseInt(request.getParameter("medid")));
		m.setMedname(request.getParameter("medname"));
		m.setMeddesc(request.getParameter("meddesc"));
		m.setExpireddate(request.getParameter("expireddate"));
		m.setMedtime(request.getParameter("medtime"));
		m.setMeddate(request.getParameter("meddate"));
		m.setMedtype(request.getParameter("medtype"));
		m.setMedweight(Double.parseDouble(request.getParameter("medweight")));
		m.setMedvolume(Double.parseDouble(request.getParameter("medvolume")));
		
		dao.updateMedicine(m); 
		
		request.setAttribute("medicines", medicineDAO.getAllMedicines());
		RequestDispatcher view = request.getRequestDispatcher("listMedicine.jsp");
		view.forward(request, response);
	}

}
