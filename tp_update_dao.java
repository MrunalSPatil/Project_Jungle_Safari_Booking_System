package admin_login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class tp_update_dao {

	String sql="update package set no_of_days=?,no_of_seats_available=?,a_rate=?,c_rate=?,details=?,discount=?,reporting_place=?,sdate=?,reporting_time=? where package_id=?;";
	String url="jdbc:mysql://localhost:3306/wildlife";
	String username="root";
	String pass="579453";
	public boolean check(tp_details tp)
	{
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,username,pass);
		PreparedStatement st=con.prepareStatement(sql);
		
		
		st.setInt(1, tp.getNo_of_days());
		st.setInt(2, tp.getNo_of_seats_available());
		st.setInt(3, tp.getA_rate());
		st.setInt(4, tp.getC_rate());
		st.setString(5,tp.getDetails());
		
		st.setInt(6,tp.getDiscount());
		st.setString(7,tp.getReporting_place());
		st.setString(8,tp.getSdate());
		st.setString(9,tp.getReporting_time());
		st.setInt(10, tp.getAdmin_id());
		
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
