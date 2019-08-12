package admin_login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/update_weather")
public class update_weather extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		String weather=request.getParameter("details");
		System.out.println(weather);
		String admin_id=request.getParameter("admin_id");
		System.out.println(admin_id);
		String s_id=request.getParameter("s_id");
		System.out.println(s_id);
		*/
		String sql="update weather set description=? where admin_id=? and s_id=?";
		String url="jdbc:mysql://localhost:3306/wildlife";
		String username="root";
		String pass="579453";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,pass);
			PreparedStatement st=con.prepareStatement(sql);
			
			st.setString(1,request.getParameter("details"));
			st.setInt(2,Integer.parseInt(request.getParameter("admin_id")));
			
			st.setInt(3,Integer.parseInt(request.getParameter("s_id")));			
			 int i=st.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println("Log In failed: An Exception has occurred! " + e);
			response.sendRedirect("weather_update.jsp");
		}
		
		response.sendRedirect("admin.jsp");
		
	}

}
