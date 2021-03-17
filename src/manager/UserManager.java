package manager;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.io.*;

import org.apache.log4j.Logger;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import connection.DbConnection;
import jxl.Workbook;
import user.Accounts;
import user.Message;
import user.Routes;
import user.Sessions;
import user.User;

public class UserManager {
	
	final static Logger log = Logger.getLogger(UserManager.class);
	
	public static void main(String args[]) {
//		UserManager um=new UserManager();
//		um.multipleUsers();
	}
	
	public boolean updateMessageStatus(int id) {
		boolean status = false;
		Connection con = null;
		Statement ps = null;
		ResultSet rs = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123");  
			con=DbConnection.getInstance().getConnection();
			ps = con.createStatement();
			String query = "Update clients set status = 0 where id="+id;
			ps.executeUpdate(query);
			
			status = true;
		} catch(Exception e) {
			e.printStackTrace();
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(ps!=null) {
					ps.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		
		return status;
	}
	
	public boolean saveAccountInDb(Accounts account) {
		boolean status = false;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			Calendar cal = Calendar.getInstance();
		    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
		    String submission_time = String.valueOf(sdf.format(cal.getTime()));
		    System.out.println("submission_time=>>"+submission_time);
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123");   
			con=DbConnection.getInstance().getConnection();
			String query = "insert into accounts (system_id, password, parent_account_id, tx_count, rx_count, tx_rx_count, status, submission_date) values (?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, account.getSystemId());
			ps.setString(2, account.getPassword());
			ps.setString(3, account.getParentAccountId());
			ps.setString(4, account.getTxCount());
			ps.setString(5, account.getRxCount());
			ps.setString(6, account.getTxRxCount());
			ps.setString(7, "1");
			ps.setString(8, submission_time);
			ps.executeUpdate();
			
			status = true;
		} catch(Exception e) {
			e.printStackTrace();
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(ps!=null) {
					ps.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		
		return status;
	}
	
	public boolean saveUserInDb(User user) {
		boolean status = false;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123");   
			con=DbConnection.getInstance().getConnection();
			String query = "insert into user (name, user_name, email, mobile, password, time_zone, user_type, route_name) values (?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, user.getName());
			ps.setString(2, user.getUserName());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getMobile());
			ps.setString(5, user.getPassword());
			ps.setString(6, user.getTimeZone());
			ps.setString(7, "user");
			ps.setString(8, "Saless");
			ps.executeUpdate();
			
			status = true;
		} catch(Exception e) {
			e.printStackTrace();
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(ps!=null) {
					ps.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		
		return status;
	}
	
	public boolean saveGateway(Routes r) {
		boolean status = false;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123");   
			con=DbConnection.getInstance().getConnection();
			String query = "insert into route (name, ip_address, system_id, password, tx_port, rx_port, tx_rx_port, system_type) values (?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, r.getName());
			ps.setString(2, r.getIpAddress());
			ps.setString(3, r.getSystemId());
			ps.setString(4, r.getPassword());
			ps.setString(5, r.getTxPort());
			ps.setString(6, r.getRxPort());
			ps.setString(7, r.getTxRxPort());
			ps.setString(8, r.getSystemType());
			ps.executeUpdate();
			
			status = true;
		} catch(Exception e) {
			e.printStackTrace();
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(ps!=null) {
					ps.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		
		return status;
	}


	
	public boolean saveRouteForUser(String name, int id) {
		boolean status = false;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123");   
			con=DbConnection.getInstance().getConnection();
			String query = "update user set route_name = ? where id="+id;
			ps = con.prepareStatement(query);
			ps.setString(1, name);
			ps.executeUpdate();
			
			status = true;
		} catch(Exception e) {
			e.printStackTrace();
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(ps!=null) {
					ps.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		
		return status;
	}

	
	public int saveSMSInDb(Message message) {
		boolean status = false;
		int id=0;
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		Calendar cal = Calendar.getInstance();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
	    String submission_time = String.valueOf(sdf.format(cal.getTime()));
	    System.out.println("submission_time=>>"+submission_time);
	    
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123");      
			con=DbConnection.getInstance().getConnection();
			String query = "insert into clients (campaign, sender_details, contacts, message, time_zone, status, user_name, submission_date) values (?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(query,Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, message.getCampaignName());
			ps.setString(2, message.getSenderId());
			ps.setString(3, message.getContacts());
			ps.setString(4, message.getMessage());
			ps.setString(5, message.getTimeZone());
			ps.setString(6, "1");
			ps.setString(7, message.getUserName());
			ps.setString(8, submission_time);
			int i = ps.executeUpdate();
			
			status = true;
			if(i>0) {
	    		ResultSet gen = ps.getGeneratedKeys();
	    		if(gen.next()) {
	    			id = gen.getInt(1);
	    		}
			}
		} catch(Exception e) {
			e.printStackTrace();
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(ps!=null) {
					ps.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		
		return id;
	}
	
	public List<Sessions> getSessionListBySystemId(String systemId) {
		List<Sessions> sessionsList = new ArrayList<Sessions>();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123"); 
			con=DbConnection.getInstance().getConnection();
			st = con.createStatement();
			String query = "SELECT * FROM sessions WHERE system_id='"+systemId+"' and status=1 ";
			rs = st.executeQuery(query);
			while(rs.next()) {
				Sessions a = new Sessions();
				
				a.setId(rs.getInt("id"));
				a.setSystemId(rs.getString("system_id"));
				a.setRemoteIpAdress(rs.getString("remote_ip"));
				a.setRemotePort(rs.getString("remote_port"));
				a.setLocalIp(rs.getString("local_ip"));
				a.setLocalPort(rs.getString("local_port"));
				a.setBindType(rs.getString("bind_type"));
				a.setSession(rs.getString("session"));
				a.setSubmissionDate(rs.getString("submission_date"));
				
				sessionsList.add(a);
			}
		} catch(Exception e) {
			log.info(e.toString());
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		return sessionsList;
	}
	
	public List<Accounts> getUserByID(int id) {
		List<Accounts> accountsList = new ArrayList<Accounts>();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123"); 
			con=DbConnection.getInstance().getConnection();
			st = con.createStatement();
			String query = "SELECT * FROM accounts WHERE parent_account_id="+id;
			rs = st.executeQuery(query);
			while(rs.next()) {
				Accounts a = new Accounts();
				
				a.setId(rs.getInt("id"));
				a.setSystemId(rs.getString("system_id"));
				a.setPassword(rs.getString("password"));
				a.setTxCount(rs.getString("tx_count"));
				a.setRxCount(rs.getString("rx_count"));
				a.setTxRxCount(rs.getString("tx_rx_count"));
				a.setParentAccountId(rs.getString("parent_account_id"));
				
				accountsList.add(a);
			}
		} catch(Exception e) {
			log.info(e.toString());
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		return accountsList;
	}
	
	public User getUserByEmail(String email, String password, String userType) {
		User user = new User();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123"); 
			con=DbConnection.getInstance().getConnection();
			st = con.createStatement();
			String query = "select * from user where email='"+email+"' and password= '"+password+"' and user_type='"+userType+"' ";
			rs = st.executeQuery(query);
			while(rs.next()) {
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setMobile(rs.getString("mobile"));
				user.setUserType(rs.getString("user_type"));
				user.setUserName(rs.getString("user_name"));
				user.setRouteName(rs.getString("route_name"));
			}
		} catch(Exception e) {
			log.info(e.toString());
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		return user;
	}
	
	public List<User> getAllUsersByUserName() {
		List<User> list = new ArrayList<User>();
		User user = new User();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123"); 
			con=DbConnection.getInstance().getConnection();
			st = con.createStatement();
			String query = "SELECT * FROM user WHERE user_name!='' ";
			rs = st.executeQuery(query);
			while(rs.next()) {
				User u = new User();
				u.setUserName(rs.getString("user_name"));
				u.setId(rs.getInt("id"));
				
				list.add(u);
			}
		} catch(Exception e) {
			log.info(e.toString());
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		return list;
	}
	
	public List<Routes> getRouteList() {
		List<Routes> list = new ArrayList<Routes>();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123"); 
			con=DbConnection.getInstance().getConnection();
			st = con.createStatement();
			String query = "SELECT name FROM route ";
			rs = st.executeQuery(query);
			while(rs.next()) {
				Routes u = new Routes();
				u.setName(rs.getString("name"));
				
				list.add(u);
			}
		} catch(Exception e) {
			log.info(e.toString());
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		return list;
	}
	
	public Routes getRouteByName(String routeName) {
		Routes u = new Routes();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123"); 
			con=DbConnection.getInstance().getConnection();
			st = con.createStatement();
			String query = "SELECT * FROM route where name='"+routeName+"' ";
			rs = st.executeQuery(query);
			while(rs.next()) {
				
				u.setIpAddress(rs.getString("ip_address"));
				u.setPassword(rs.getString("password"));
				u.setSystemId(rs.getString("system_id"));
				u.setTxPort(rs.getString("tx_port"));
				u.setSystemType(rs.getString("system_type"));
				
			}
		} catch(Exception e) {
			log.info(e.toString());
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		return u;
	}
	
	public List<Routes> getRoutesList() {
		List<Routes> list = new ArrayList<Routes>();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123"); 
			con=DbConnection.getInstance().getConnection();
			st = con.createStatement();
			String query = "SELECT * FROM route ";
			rs = st.executeQuery(query);
			while(rs.next()) {
				Routes u = new Routes();
				u.setName(rs.getString("name"));
				u.setId(rs.getInt("id"));
				u.setIpAddress(rs.getString("ip_address"));
				u.setSystemId(rs.getString("system_id"));
				u.setTxPort(rs.getString("tx_port"));
				u.setRxPort(rs.getString("rx_port"));
				u.setTxRxPort(rs.getString("tx_rx_port"));
				
				list.add(u);
			}
		} catch(Exception e) {
			log.info(e.toString());
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		return list;
	}
	
	
	
	
	public User getUserbyUserName(String userName) {
		User user = new User();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123");      
			con=DbConnection.getInstance().getConnection();
			st = con.createStatement();
			String query = "select * from user where user_name='"+userName+"' ";
			rs = st.executeQuery(query);
			while(rs.next()) {
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setMobile(rs.getString("mobile"));
				user.setPassword(rs.getString("password"));
				user.setTimeZone(rs.getString("time_zone"));
				user.setRouteName(rs.getString("route_name"));
				user.setUserName(userName);
				user.setRouteName(rs.getString("route_name"));
				
			}
		} catch(Exception e) {
			log.info(e.toString());
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		return user;
	}
	
	public List<Message> getMessageListbyUserName(String userName) {
		List<Message> list = new ArrayList<Message>();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123");    
			con=DbConnection.getInstance().getConnection();
			st = con.createStatement();
			String query = "SELECT  c.sender_details, c.message,c.submission_date, c.contacts, s.message_id , "
					+ "r.id AS gateway_id, s.error_code  FROM user u, clients c, server_response s, route r    "
					+ " WHERE u.route_name=r.name and s.client_id=c.id and u.user_name=c.user_name  AND c.user_name='"+userName+"' ";
//					+ "WHERE u.route_name=r.name and s.client_id=c.id and c.system_id=a.system_id and a.parent_account_id=u.id AND u.user_name='"+userName+"' ";
			//String query="select * from clients where user_name='"+userName+"'";
			System.out.println("query is"+query);
			rs = st.executeQuery(query);
			while(rs.next()) {
				Message m = new Message();
				
//				m.setId(rs.getInt("id"));
				m.setSenderId(rs.getString("sender_details"));
				m.setContacts(rs.getString("contacts"));
				m.setMessage(rs.getString("message"));
//				m.setCampaignName(rs.getString("campaign"));
//				m.setStatus(rs.getString("status"));
//				m.setTimeZone(rs.getString("time_zone"));
				m.setSubmissionDate(rs.getString("submission_date"));
				m.setGatewayId(rs.getInt("gateway_id"));
//				m.setReportStatus(rs.getString("report_status"));
				m.setErrorCode(rs.getString("error_code"));
//				m.setTrafficId(rs.getString("traffic_id"));
//				m.setMessageId(rs.getString("message_id"));
				list.add(m);
			}
		} catch(Exception e) {
			log.info(e.toString());
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		System.out.println("Db list................................................."+list.size());
		return list;
	}
	
	
	public User checkPassword(String password) {
		User user = new User();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			//Class.forName("com.mysql.jdbc.Driver");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "");
			//con = DriverManager.getConnection("jdbc:mysql://localhost:3306/camel_demo", "root", "root@#123");     
			con=DbConnection.getInstance().getConnection();
			st = con.createStatement();
			String query = "select * from user where password ='"+password+"' ";
			rs = st.executeQuery(query);
			while(rs.next()) {
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setMobile(rs.getString("mobile"));
				user.setPassword(rs.getString("password"));
				user.setTimeZone(rs.getString("time_zone"));
				user.setUserName(rs.getString("user_name"));
				user.setRouteName(rs.getString("route_name"));
			}
		} catch(Exception e) {
			log.info(e.toString());
		}  finally {
			try {
				if(con!=null) {
					con.close();
				}if(rs!=null) {
					rs.close();
				}if(st!=null) {
					st.close();
				}
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		} 
		return user;
	}
	
	
}
