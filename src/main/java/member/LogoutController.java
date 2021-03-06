package member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout/controller")
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	// ๋ก๊ทธ์์
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		session.invalidate();
		
		response.sendRedirect("http://localhost/ridibooks.com");
	}
}
