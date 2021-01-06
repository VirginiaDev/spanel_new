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
import user.Message;
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
			String query = "insert into user (name, user_name, email, mobile, password, time_zone, user_type) values (?,?,?,?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, user.getName());
			ps.setString(2, user.getUserName());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getMobile());
			ps.setString(5, user.getPassword());
			ps.setString(6, user.getTimeZone());
			ps.setString(7, "user");
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
	
	public User getUserByEmail(String email, String password) {
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
			String query = "select * from user where email='"+email+"' and password= '"+password+"' ";
			rs = st.executeQuery(query);
			while(rs.next()) {
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setMobile(rs.getString("mobile"));
				user.setUserType(rs.getString("user_type"));
				user.setUserName(rs.getString("user_name"));
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
			String query = "SELECT user_name FROM user WHERE user_name!='' ";
			rs = st.executeQuery(query);
			while(rs.next()) {
				User u = new User();
				u.setUserName(rs.getString("user_name"));
				
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
				user.setUserName(userName);
				
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
			String query = "select * from clients where user_name='"+userName+"' ";
			rs = st.executeQuery(query);
			while(rs.next()) {
				Message m = new Message();
				
				m.setId(rs.getInt("id"));
				m.setSenderId(rs.getString("sender_details"));
				m.setContacts(rs.getString("contacts"));
				m.setMessage(rs.getString("message"));
				m.setCampaignName(rs.getString("campaign"));
				m.setStatus(rs.getString("status"));
				m.setTimeZone(rs.getString("time_zone"));
				m.setSubmissionDate(rs.getString("submission_date"));
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
