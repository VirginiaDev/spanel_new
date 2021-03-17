package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import java.util.concurrent.ThreadLocalRandom;
import java.util.concurrent.atomic.AtomicInteger;

import org.apache.log4j.Logger;
import org.jsmpp.InvalidResponseException;
import org.jsmpp.PDUException;
import org.jsmpp.bean.Alphabet;
import org.jsmpp.bean.BindType;
import org.jsmpp.bean.ESMClass;
import org.jsmpp.bean.GeneralDataCoding;
import org.jsmpp.bean.MessageClass;
import org.jsmpp.bean.NumberingPlanIndicator;
import org.jsmpp.bean.RegisteredDelivery;
import org.jsmpp.bean.SMSCDeliveryReceipt;
import org.jsmpp.bean.TypeOfNumber;
import org.jsmpp.extra.NegativeResponseException;
import org.jsmpp.extra.ResponseTimeoutException;
import org.jsmpp.session.BindParameter;
import org.jsmpp.session.SMPPSession;
import org.jsmpp.util.AbsoluteTimeFormatter;
import org.jsmpp.util.TimeFormatter;

import com.mashape.unirest.http.HttpResponse;
import com.mashape.unirest.http.JsonNode;
import com.mashape.unirest.http.Unirest;

import manager.UserManager;
import user.User;
import user.Accounts;
import user.Message;
import user.Routes;

@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static final TimeFormatter TIME_FORMATTER = new AbsoluteTimeFormatter();
	final static Logger log = Logger.getLogger(UserController.class);

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int userAction = Integer.parseInt(request.getParameter("userAction"));
		
		switch(userAction) {
		case 1:
			RequestDispatcher rd = request.getRequestDispatcher("/AddUser.jsp");
			rd.forward(request, response);
			break;
			
		case 2:
			saveUser(request, response);
			break;
			
		case 3:
			getAllUsers(request, response);
			break;
			
		case 4:
			Logout(request, response);
			break;
			
		case 5:
			getUserById(request, response);
			break;
			
		case 6:
			updateUserById(request, response);
			break;
			
		case 7:
			checkEmail(request, response);
			break;
			
		case 8:
			validateOTP(request, response);
			break;
			
		case 9:
			savePassword(request, response);
			break;
			
		case 10:
			callApi(request, response);
			break;
		case 11:
			getUserByUserName(request, response);
			break;
		case 12:
			checkPanelPassword(request, response);
			break;
		case 13:
			saveSms(request, response);
			break;
		case 14:
			getMessageListByUser(request, response);
			break;
		case 15:
			updateRoute(request, response);
			break;
		case 16:
			addGateway(request, response);
			break;
		case 17:
			saveAccount(request, response);
			break;
		}
		
	}

	private void saveAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String systemId = request.getParameter("systemId");
		String password = request.getParameter("password");
		String txCount = request.getParameter("txCount");
		String rxCount = request.getParameter("rxCount");
		String txRxCount = request.getParameter("txRxCount");
		String parentId = request.getParameter("parentId");
		
		Accounts a = new Accounts();
		a.setSystemId(systemId);
		a.setPassword(password);
		a.setParentAccountId(parentId);
		a.setTxCount(txCount);
		a.setRxCount(rxCount);
		a.setTxRxCount(txRxCount);
		
		boolean status = new UserManager().saveAccountInDb(a);
		if(status == true) {
			request.getSession().setAttribute("message", "Interface Saved Successfully");
		} else {
			request.getSession().setAttribute("message", "An error occured");
		}
		
		response.sendRedirect("ManageInterface.jsp");
		
		
	}

	private void addGateway(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gatewayName = request.getParameter("GatewayName");
		String IPAddress = request.getParameter("IPAddress");
		String SystemId = request.getParameter("SystemId");
		String Password = request.getParameter("Password");
		String TxPort = request.getParameter("TxPort");
		String RxPort = request.getParameter("RxPort");
		String TxRxPort = request.getParameter("TxRxPort");
		String SystemType = request.getParameter("SystemType");
		
		Routes r = new Routes();
		r.setName(gatewayName);
		r.setIpAddress(IPAddress);
		r.setSystemId(SystemId);
		r.setPassword(Password);
		r.setTxPort(TxPort);
		r.setRxPort(RxPort);
		r.setTxRxPort(TxRxPort);
		r.setSystemType(SystemType);
		boolean status = new UserManager().saveGateway(r);
		if(status == true) {
			request.getSession().setAttribute("message", "Gateway saved successfully");
//			bindServer(r);
		} else {
			request.getSession().setAttribute("message", "No gateway added");
		}
		response.sendRedirect("ManageSmppGateway.jsp");
	}

	private void updateRoute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String name=request.getParameter("route_name");
		String id=request.getParameter("user_id");
		boolean status = new UserManager().saveRouteForUser(name, Integer.parseInt(id));
		if(status == true) {
			request.getSession().setAttribute("message", "User Route Successfully");
		} else {
			request.getSession().setAttribute("message", "No Route Added");
		}
		response.sendRedirect("Administration.jsp");
		
	}

	private void getMessageListByUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String userName = request.getParameter("UserName");
		List<Message> messageList = new UserManager().getMessageListbyUserName(userName);
		
		request.setAttribute("messageList", messageList);
		System.out.println("list........................."+messageList.size());
		request.getRequestDispatcher("/getMessageList.jsp").forward(request, response);
	}

	private void saveSms(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String campaignName = request.getParameter("CampaignName");
		String senderId = request.getParameter("SenderId");
		String contactNumber = request.getParameter("ContactNumber");
		String contacts[]=contactNumber.split(",");
		
		String message = request.getParameter("Message");
		String timeZone = request.getParameter("TimeZone");
		String userName = request.getParameter("userName");
		String routeName = request.getParameter("route");
		
		
		Message m = new Message();
		m.setCampaignName(campaignName);
		m.setSenderId(senderId);
		//m.setContacts(contactNumber);
		m.setMessage(message);
		m.setTimeZone(timeZone);
		m.setUserName(userName);
		User u = (User)request.getSession(false).getAttribute("user");
		int id=0;
		for(String c :contacts) {
			m.setContacts(c);
			//id = new UserManager().saveSMSInDb(m);

		}
		//int id = new UserManager().saveSMSInDb(m, contacts);
		Routes r = new UserManager().getRouteByName(routeName);
		//msg go to server
		//gotoServer(m, id, r);
		if(id>0) {
			request.getSession().setAttribute("message", "Message Saved Successfuly");
			if(u.getUserType().equals("admin")) {
				request.getRequestDispatcher("/Administration.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("/UserDashboard.jsp").forward(request, response);
			}
		} else {
			request.getSession().setAttribute("message", "An error occured");
		}
		
	}

	private void gotoServer(Message m, int id, Routes r) {
		SMPPSession session = new SMPPSession();
		  try {
	            System.out.println("Connecting");
	            String systemId = session.connectAndBind(r.getIpAddress(), Integer.parseInt(r.getTxPort()), new BindParameter(BindType.BIND_TRX, r.getSystemId(), r.getPassword(), r.getSystemType(), TypeOfNumber.UNKNOWN, NumberingPlanIndicator.UNKNOWN, null));
	            System.out.println("Connected with SMSC with system id {}"+systemId);

	            try {
	                String messageId = session.submitShortMessage("CMT",
	                    TypeOfNumber.INTERNATIONAL, NumberingPlanIndicator.UNKNOWN, m.getSenderId(),
	                    TypeOfNumber.INTERNATIONAL, NumberingPlanIndicator.UNKNOWN, m.getContacts(),
	                    new ESMClass(), (byte)0, (byte)1,  TIME_FORMATTER.format(new Date()), null,
	                    new RegisteredDelivery(SMSCDeliveryReceipt.DEFAULT), (byte)0, new GeneralDataCoding(Alphabet.ALPHA_DEFAULT, MessageClass.CLASS1, false), (byte)0,
	                    m.getMessage().getBytes());
	                System.out.println("Message submitted, message_id is {}"+messageId);
	                //Update status in db
	                new UserManager().updateMessageStatus(id);
	            } catch (PDUException e) {
	                // Invalid PDU parameter
	                System.out.println("Invalid PDU parameter"+e);
	            } catch (ResponseTimeoutException e) {
	                // Response timeout
	                System.out.println("Response timeout"+e);
	            } catch (InvalidResponseException e) {
	                // Invalid response
	                System.out.println("Receive invalid response"+e);
	            } catch (NegativeResponseException e) {
	                // Receiving negative response (non-zero command_status)
	                System.out.println("Receive negative response"+e);
	            } catch (IOException e) {
	                System.out.println("IO error occurred"+e);
	            }

	            session.unbindAndClose();

	        } catch (IOException e) {
	            System.out.println("Failed connect and bind to host"+e);
	        }
		
	}

	private void checkPanelPassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String password = request.getParameter("password");
		String userName = request.getParameter("user_name");
		String routeName = request.getParameter("route");
		User user = new UserManager().checkPassword(password);
		
		if(user.getName()!=null) {
			HttpSession sessionObj = request.getSession(true);
			sessionObj.setAttribute("sms_user", user);
			sessionObj.setMaxInactiveInterval(10*60);
			request.setAttribute("userName", userName);
			request.setAttribute("routeName", routeName);
			request.getRequestDispatcher("/UserDashboard.jsp").forward(request, response);
		} else {
			request.getSession().setAttribute("message", "You are not authorized to view this page");
			request.getRequestDispatcher("/Administration.jsp").forward(request, response);
			
		}
		
	}

	private void getUserByUserName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String userName = request.getParameter("UserName");
		User user = new UserManager().getUserbyUserName(userName);
		
		if(user.getName()==null) {
			request.getSession().setAttribute("message", "No user found");
		} else {
			System.out.println("set Username................................."+user.getUserName());
			request.getSession().setAttribute("sms_user", user);
			User u = (User)request.getSession(false).getAttribute("sms_user");
			System.out.println("get userrrrrrrrrrrrrrrrrrrrrrrrrrrr"+u);
			
		}
		
		request.setAttribute("user", user);
		request.getRequestDispatcher("/Administration.jsp").forward(request, response);
		
	}

	private void callApi(HttpServletRequest request, HttpServletResponse response) {
		String url = "http://s2panel.sms24hours.com:6005/api/v2/Balance?ApiKey=4RnUGa%2F5j%2BKv4NPwhHeZWzw7SyWUnF2xArEh7HaFEBw%3D&ClientId=92074889-477d-4e0e-95db-1c5d2fa472aa";
		try {
			HttpResponse<JsonNode> response2 = Unirest.get(url).asJson();
			String jsonData = response2.getBody().toString();
			log.info("Data is...................."+jsonData);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}

	public void saveUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String firstName = request.getParameter("FirstName");
		String lastName = request.getParameter("LastName");
		String userName = request.getParameter("UserName");
		String email = request.getParameter("EmailAddress");
		String mobile = request.getParameter("MobileNumber");
		String password = request.getParameter("Password");
		String timeZone = request.getParameter("TimeZone");
		
		User user = new User();
		user.setName(firstName+" "+lastName);
		user.setUserName(userName);
		user.setEmail(email);
		user.setMobile(mobile);
		user.setPassword(password);
		user.setTimeZone(timeZone);
		
		UserManager manager = new UserManager();
		boolean status = manager.saveUserInDb(user);
		HttpSession session = request.getSession();
		if(status == true) {
			session.setAttribute("message", "User saved Successfully");
		} else {
			session.setAttribute("message", "No User Added");
		}
		response.sendRedirect("Administration.jsp");
		
		
	}
	
	private void bindServer(Routes r) {
		final AtomicInteger counter = new AtomicInteger();
        final SMPPSession session = new SMPPSession();
        try {
            System.out.println("Connecting");
            String systemId = session.connectAndBind(r.getIpAddress(), 8585, new BindParameter(BindType.BIND_TRX, r.getSystemId(), r.getPassword(), "cp", TypeOfNumber.UNKNOWN, NumberingPlanIndicator.UNKNOWN, null));
            System.out.println("Connected with SMSC with system id {}"+systemId);
        } catch (IOException e) {
            System.out.println("Failed connect and bind to host"+e);
     }
	}

	private void getAllUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	

	private void Logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}
	
	private void getUserById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int id = Integer.parseInt(request.getParameter("userId"));
		UserManager manager = new UserManager();
		List<Accounts> a = manager.getUserByID(id);
		
		request.setAttribute("accounts", a);
		request.setAttribute("parentId", String.valueOf(id));
		request.getRequestDispatcher("/ManageInterface.jsp").forward(request, response);
		
	}

	
	private void updateUserById(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		User user = new User();
		user.setName(request.getParameter("name"));
		user.setEmail(request.getParameter("email"));
		user.setMobile(request.getParameter("mobile"));
		
		UserManager manager = new UserManager();
		
	}
	

	private void checkEmail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String userType= request.getParameter("userType");
		
		UserManager manager = new UserManager();
		User user = manager.getUserByEmail(email, password, userType);
		request.getSession().setAttribute("user", user);
		System.out.println("user >>>>>>>>>>>>>>>>>>>>>>>>>>>"+user.getName());
		if(user.getName() != null) {
			if(user.getUserType().equals("admin")) {
				request.getRequestDispatcher("/Administration.jsp").forward(request, response);
			} else {
				request.setAttribute("userName",user.getUserName());
				request.getRequestDispatcher("/UserDashboard.jsp").forward(request, response);
			}
			
		} else {
			request.getSession().setAttribute("errorMsg", "Please Enter Valid Email");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
	}
	

	private void validateOTP(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException {
		String otp = request.getParameter("otp");
		UserManager manager = new UserManager();
		
	}
	

	private void savePassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String id = request.getParameter("id");
		String password = request.getParameter("password");
	}

}
