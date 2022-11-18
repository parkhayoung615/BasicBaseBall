package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import vo.MemberVO;

@WebServlet("/logout")
public class SessionLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SessionLogoutServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 세션 로그아웃 서블릿
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();

		MemberVO vo = (MemberVO) session.getAttribute("loginOK");
		
		if (vo != null) {
			session.removeAttribute("loginOK");
			response.sendRedirect("/index.jsp");
		}
	}

}
