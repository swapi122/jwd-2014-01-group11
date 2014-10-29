package conceptmaps.controler;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conceptmaps.dao.DrawDao;
import conceptmaps.model.Concepts;

/**
 * Servlet implementation class ViewDrawController
 */
//@WebServlet("/ViewDrawController")
public class ViewDrawController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewDrawController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DrawDao drawDao = new DrawDao();
		List<Concepts> listConcepts = drawDao.getListConcepts();
		for (Concepts cus : listConcepts) {
			System.out.println("id: " + cus.getId() + " name: "
					+ cus.getName());
		}
		
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("viewDrawing");
		
		request.setAttribute("listconcept", listConcepts);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
