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
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();

		MemberVO vo = (MemberVO) session.getAttribute("loginOK");

		if (vo != null) {
			session.removeAttribute("loginOK");
			out.print("<script>alert('로그아웃 되었습니다.');</script>");
			response.sendRedirect("/index.jsp");
		}
	}

}
