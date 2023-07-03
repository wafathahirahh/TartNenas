package govclinic.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import govclinic.dao.medicineDAO;

import java.io.IOException;


public class listMedicineDoc extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private medicineDAO dao;
    
    public listMedicineDoc() {
        super();
        dao = new medicineDAO();
    }

	
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("medicines", medicineDAO.getAllMedicines());
		RequestDispatcher view = request.getRequestDispatcher("listMedicineDoc.jsp");
		view.forward(request, response);
	}



}
