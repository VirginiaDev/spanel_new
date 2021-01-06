package manager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import user.User;

public class LoginManager {
	
	final static Logger log = Logger.getLogger(LoginManager.class);

	public User checkAdmin(String email, String password) {
		User user = new User();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/user_db","root","root");
			log.info("Connection>>>>>>>>>>>>>>>>>>>>>>>"+con);
			Statement st = con.createStatement();
			String query = "select * from user where email = '"+email+"' and password = '"+password+"' ";
			ResultSet rs =  st.executeQuery(query);
			while(rs.next()) {
				String name = rs.getString("name");
				user.setName(name);
				log.info("UserName:>>>>"+name);
			}
			
			return user;
		} catch(Exception e) {
			log.info("Exception>>>"+e.getStackTrace());
			return null;
		}
	}
}
