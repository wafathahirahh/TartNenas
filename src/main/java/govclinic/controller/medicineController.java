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

 
public class medicineController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private String action ="", forward="";
    private static String LIST ="listMedicine.jsp";
    private static String LISTDOC ="listMedicineDoc.jsp";
    private static String VIEW ="viewMedicine.jsp";
    private medicineDAO dao;
    private int medid;
   
    public medicineController() {
        super();
        dao = new medicineDAO();
    }

	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
action = request.getParameter("action");

//view 
if(action.equalsIgnoreCase("view")) {
	forward = VIEW;
	medid = Integer.parseInt(request.getParameter("medid"));
	request.setAttribute("m",medicineDAO.getMedicineById(medid));
}

//list
if(action.contentEquals("list")) {
	forward = LIST;
	request.setAttribute("medicines", medicineDAO.getAllMedicines());
	}

if(action.contentEquals("listdoc")) {
	forward = LISTDOC;
	request.setAttribute("medicines", medicineDAO.getAllMedicines());
	}

//delete
if(action.equalsIgnoreCase("delete")) {
	forward = LIST;
	medid = Integer.parseInt(request.getParameter("medid"));
	dao.deleteMedicine(medid);
	request.setAttribute("medicines", medicineDAO.getAllMedicines());
}

//forward the request
RequestDispatcher view = request.getRequestDispatcher(forward);
view.forward(request, response);
}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Medicine medicine = new Medicine();
		medicine.setMedid(Integer.parseInt(request.getParameter("medid")));
		medicine.setMedname(request.getParameter("medname"));
		medicine.setMeddesc(request.getParameter("meddesc"));
		medicine.setExpireddate(request.getParameter("expireddate"));
		medicine.setMedtime(request.getParameter("medtime"));
		medicine.setMeddate(request.getParameter("meddate"));
		medicine.setMedtype(request.getParameter("medtype"));
		medicine.setMedweight(Double.parseDouble(request.getParameter("medweight")));
		medicine.setMedvolume(Double.parseDouble(request.getParameter("medvolume")));
		
		//invoke method addMedicine()
		dao.addMedicine(medicine);
		
		//set attribute
		request.setAttribute("medicines", medicineDAO.getAllMedicines());
		
		//
		forward = LIST;
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

}
