package conceptmaps.controler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import conceptmaps.dao.DrawDao;
import conceptmaps.model.Concepts;


/**
 * Servlet implementation class DrawController
 */
@WebServlet("/DrawController")
public class DrawController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DrawController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			String strJsonObj = request.getParameter("mySavedModel");
			String name=request.getParameter("nameConcept");
			if (null != strJsonObj && null!=name) {
				JSONObject jsonObject = (JSONObject) new JSONParser().parse(strJsonObj);
				Concepts concept = new Concepts();
				// Save 
				concept.setClassConcept(String.valueOf(jsonObject.get("class")));
				concept.setName(name);
				concept.setLinkDataArray(String.valueOf(jsonObject.get("linkDataArray")));
				concept.setNodeDataArray(String.valueOf(jsonObject.get("nodeDataArray")));
				DrawDao drawDao = new DrawDao();
				drawDao.addConceptMaps(concept);
				response.sendRedirect("draw.jsp");
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
