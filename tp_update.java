package admin_login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/tp_update")
public class tp_update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		tp_details tp =new tp_details();

		tp.setNo_of_days(Integer.parseInt(request.getParameter("no_of_days")));

		tp.setNo_of_seats_available(Integer.parseInt(request.getParameter("no_of_seats_available")));
		
		tp.setA_rate(Integer.parseInt(request.getParameter("a_rate")));
	
		tp.setC_rate(Integer.parseInt(request.getParameter("c_rate")));
	
		tp.setDetails(request.getParameter("details"));
		
		
		tp.setAdmin_id(Integer.parseInt(request.getParameter("package_id")));
	
		tp.setDiscount(Integer.parseInt(request.getParameter("discount")));
		
		tp.setReporting_place(request.getParameter("reporting_place"));
		
		
		tp.setSdate(request.getParameter("sdate"));
		
		tp.setReporting_time(request.getParameter("reporting_time"));

		
		tp_update_dao dao=new tp_update_dao();
		
		System.out.println("hhiii");
		if(dao.check(tp))
		{	
			response.sendRedirect("admin.jsp");
		}
		else
		{	
			response.sendRedirect("admin_tp_update.jsp");
		}
		
	}
	

}
