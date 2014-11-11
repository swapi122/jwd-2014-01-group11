package conceptmaps.controler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import conceptmaps.dao.AuthenticationDao;

/**
 * Servlet implementation class Authentication
 */
//@WebServlet("/Authentication")
public class Authentication extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Authentication() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("email");
		String password = request.getParameter("password");
		
		AuthenticationDao db = new AuthenticationDao();
		
		if (db.checkAuthentication(name, password))
		{
			response.sendRedirect("home");
		}
		else
		{
			response.sendRedirect("login");
		}
	}

}
