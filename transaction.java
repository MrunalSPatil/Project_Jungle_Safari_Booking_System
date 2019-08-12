package booking;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import login_signup.userbean;

import javax.mail.*; 
import javax.mail.internet.*; 
import java.util.*;

public class transaction {
	
	public boolean trans(booking_details b)
	{
			String sql="insert into tour_book(name,email,city,phone,no_adult,no_child,user_id,package_id,admin_id) values(?,?,?,?,?,?,?,?,?)";
			String url="jdbc:mysql://localhost:3306/wildlife";
			String username="root";
			String pass="579453";
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection(url,username,pass);
				PreparedStatement st=con.prepareStatement(sql);
				
				System.out.println(b.getName());
				st.setString(1, b.getName());
				
				System.out.println(b.getEmail());
				st.setString(2, b.getEmail());
				
				System.out.println(b.getCity());
				st.setString(3, b.getCity());
				
				System.out.println(b.getPhone());
				st.setString(4, b.getPhone());
				
				System.out.println(b.getNo_adult());
				st.setInt(5, b.getNo_adult());
				
				System.out.println(b.getNo_child());
				st.setInt(6, b.getNo_child());
				
				System.out.println(b.getUser_id());
				st.setInt(7,b.getUser_id());
				
				System.out.println(b.getPackage_id());
				st.setInt(8,b.getPackage_id());
				
				System.out.println(b.getAdmin_id());
				st.setInt(9,b.getAdmin_id());
				
				 int i=st.executeUpdate();
				if(i!=0)
				{
					return true;
				}
			}
			catch(Exception e)
			{
				System.out.println("Log In failed: An Exception has occurred! " + e);
			}
			return false;
			
}
}
