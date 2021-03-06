package member;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/confirm/controller")
public class ConfirmController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	// 비밀번호 확인
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberService service = new MemberService();
		int statusCode = service.confirmPw(request, response);
		
		response.setStatus(statusCode);
	}
}
