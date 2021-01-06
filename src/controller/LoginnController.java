package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import manager.LoginManager;
import user.User;

/**
 * Servlet implementation class LoginnController
 */
@WebServlet("/LoginnController")
public class LoginnController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	final static Logger log = Logger.getLogger(LoginnController.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginnController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		log.info("email:>>>>>>>>>>>>>>>>>>>>>"+email);
		
		LoginManager manager = new LoginManager();
		User user = manager.checkAdmin(email, password);
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().println("hello");
	}

}
