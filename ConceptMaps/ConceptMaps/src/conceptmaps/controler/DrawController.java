package conceptmaps.controler;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import conceptmaps.dao.ConceptmapsDao;
import conceptmaps.dao.UserDao;
import conceptmaps.model.Conceptmaps;
import conceptmaps.model.Link;
import conceptmaps.model.Node;
import conceptmaps.model.Relationship;
import conceptmaps.model.User;
import conceptmaps.model.Concept;

/**
 * Servlet implementation class DrawController
 */
// @WebServlet("/DrawController")
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
		doPost(request, response);
		// TODO Auto-generated method stub
	}

	String nameconceptmaps;
	String datecreate;
	String description;
	User owner;
	String idConceptmaps;
	Date dateCreate;
	List<Concept> lstConcept = new ArrayList<Concept>();
	List<Node> lstNode = new ArrayList<Node>();
	Conceptmaps conceptmaps;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("do post");

		try {
			String strJsonObj = request.getParameter("mySavedModel");
			nameconceptmaps = request.getParameter("nameConcept");
			datecreate = request.getParameter("datecreate");
			description = request.getParameter("description");

			// User sau nay duoc thay boi user thuc te tu session
			ServletConfig config = this.getServletConfig();
			String user = config.getInitParameter("user");
			owner = new UserDao().getUser(user);

			if (null != strJsonObj && null != nameconceptmaps) {
				JSONObject jsonObject = (JSONObject) new JSONParser()
						.parse(strJsonObj);

				JSONArray nodeDataArray = (JSONArray) jsonObject
						.get("nodeDataArray");
				JSONArray linkDataArray = (JSONArray) jsonObject
						.get("linkDataArray");

				boolean result;
				
//				 Save conceptmaps
				result = addConceptmaps();
				if (!result) {
					Response(response, "can't add conceptmaps");
					return;
				}

				// Save list concept and node
				result = addConcept(nodeDataArray);
				if (!result)
				{
					Response(response, "can't add concept");
					return;
				}

				// Save relationship and Link
				result =  addRelationShip(linkDataArray);
				if (!result)
				{
					Response(response, "can't add relationship");
					return;
				}

				// Response
				Response(response, "success");
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			Response(response, "error");
			// response.sendRedirect("draw.jsp");
		}
	}

	private void Response(HttpServletResponse response, String message) {
		try {
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(message);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private boolean addConceptmaps() {
		System.out.println("start addconceptmaps");
		conceptmaps = new Conceptmaps();

		idConceptmaps = owner.getIdUser() + "_" + nameconceptmaps;

		SimpleDateFormat dtformat = new SimpleDateFormat("dd/mm/yyyy");
		try {
			dateCreate = dtformat.parse(datecreate);
		} catch (Exception e) {
			// TODO: handle exception
		}

		// Create Conceptmaps object
		Date endEdit = new Date();

		conceptmaps.setIdConceptMaps(idConceptmaps);
		conceptmaps.setDateCreate(dateCreate);
		conceptmaps.setEndEdit(endEdit);
		conceptmaps.setName(nameconceptmaps);
		conceptmaps.setUser(owner);

		// save obj
		ConceptmapsDao dao = new ConceptmapsDao();
		boolean result = dao.addConceptmaps(conceptmaps);

//		System.out.println("end addconceptmaps");
		return result;
	}

	private boolean addConcept(JSONArray nodeDataArray) {
		for (int i = 0; i < nodeDataArray.size(); i++)
		{
			JSONObject jsonObject = (JSONObject) nodeDataArray.get(i);
			
			String name = (String) jsonObject.get("text");
			
			String idConcept = idConceptmaps + "_" + name;
			
			System.out.println(name);
			
			Concept concept = new Concept();
			concept.setIdConcept(idConcept);
			concept.setName(name);
			//lstConcept.add(concept);
			
			ConceptmapsDao dao = new ConceptmapsDao();
			boolean result = dao.addConcept(concept);
			if (!result)
			{
				return false;
			}
			
			//add node
			addNode(concept, jsonObject);
		}
		return true;
	}

	private void addNode(Concept concept, JSONObject jsonObject) {
		System.out.println("add node start");
		
		String idnode = concept.getIdConcept() + Math.random();
		String txt = (String) jsonObject.get("text");
		int key = Integer.parseInt(String.valueOf(jsonObject.get("key")));
		String loc = (String) jsonObject.get("loc");
		
		Node node = new Node();
		node.setIdNode(idnode);
		node.setConcept(concept);
		node.setText(txt);
		node.setKey(key);
		node.setLoc(loc);
		
		lstNode.add(node);
		
		ConceptmapsDao dao = new ConceptmapsDao();
		dao.addNode(node);
	}
	
	private boolean addRelationShip(JSONArray linkDataArray )
	{
		for (int i = 0; i <linkDataArray.size(); i++ ){
			JSONObject jsonObject = (JSONObject) linkDataArray.get(i);
			Random rand = new Random();
			
			String name = (String) jsonObject.get("text");
			
			int from = Integer.parseInt(String.valueOf(jsonObject.get("from")));
			int to = Integer.parseInt(String.valueOf(jsonObject.get("to")));
			
			Node nFrom = getNodeFromList(from);
			Node nTo = getNodeFromList(to);
			
			System.out.println(nFrom.getText());
			
			Concept cFrom = nFrom.getConcept();
			Concept cTo = nTo.getConcept();
			String id = idConceptmaps + cFrom.getName() + cTo.getName() + name + rand.nextInt();
			
			Relationship relationship = new Relationship();
			relationship.setIdrelationship(id);
			relationship.setName(name);
			relationship.setConceptmaps(conceptmaps);
			relationship.setConceptByConceptFrom(cFrom);
			relationship.setConceptByConceptTo(cTo);
			
			ConceptmapsDao dao = new ConceptmapsDao();
			dao.addRelationship(relationship);
			addLink(relationship, jsonObject);
			
		}
		
		return true;
	}
	
	
	private void addLink(Relationship relationship, JSONObject jsonObject)
	{
		Link link = new Link();
		String text = (String) jsonObject.get("text");
		int from = Integer.parseInt(String.valueOf(jsonObject.get("from")));
		int to = Integer.parseInt(String.valueOf(jsonObject.get("to")));
		String points = String.valueOf(jsonObject.get("points"));
		String idlink = relationship.getIdrelationship() + Math.random();
		
		link.setFrom(from);
		link.setTo(to);
		link.setPoint(points);
		link.setRelationship(relationship);
		link.setIdlink(idlink);
		link.setText(text);
		
		ConceptmapsDao dao = new ConceptmapsDao();
		dao.addLink(link);
	}
	
	private Node getNodeFromList(int key)
	{
		for (int i = 0; i < lstNode.size(); i++)
		{
			Node element = lstNode.get(i);
			
			if (element.getKey() == key)
				return element;
		}
		return null;
	}
}
