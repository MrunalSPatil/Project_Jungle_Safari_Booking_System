package booking;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/book")
public class book extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		booking_details b=new booking_details();
		b.setName(request.getParameter("pname"));
		b.setEmail(request.getParameter("email"));
		b.setCity(request.getParameter("city"));
		b.setPhone(request.getParameter("phone"));
		b.setNo_adult(Integer.parseInt(request.getParameter("no_of_adults")));
		b.setNo_child(Integer.parseInt(request.getParameter("no_of_children")));
		b.setAdmin_id(Integer.parseInt(request.getParameter("admin_id")));
		b.setPackage_id(Integer.parseInt(request.getParameter("package_id")));
		
		HttpSession session=request.getSession();
		String user_id=session.getAttribute("user_id").toString();
		b.setUser_id(Integer.parseInt(user_id));
		
		
		transaction t=new transaction();
		if(t.trans(b))
		{
			out.println("<script type=\"text/JavaScript\">");
            out.println("alert(\"Insertion Failed\")");
            out.println("</script>")
			response.sendRedirect("Profile.jsp");
		}
		else
		{
			response.sendRedirect("bookpackage.jsp");
		}
	}

}
