package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;

@WebServlet("/ApiController")
public class ApiController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Logger log = Logger.getLogger(ApiController.class); 

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "http://s2panel.sms24hours.com:6005/api/v2/Balance?ApiKey=4RnUGa%2F5j%2BKv4NPwhHeZWzw7SyWUnF2xArEh7HaFEBw%3D&ClientId=92074889-477d-4e0e-95db-1c5d2fa472aa";
		try {
			HttpResponse<JsonNode> response2 = Unirest.get(url).asJson();
			String jsonData = response2.getBody().toString();
			log.info("Data is...................."+jsonData);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
