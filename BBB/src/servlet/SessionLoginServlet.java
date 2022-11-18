package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import vo.MemberVO;

@WebServlet("/login")
public class SessionLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SessionLoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 세션 로그인 서블릿
		response.setContentType("text/html; charset=UTF-8");
		
		String id, pwd;
		boolean result = false;
		PrintWriter out = response.getWriter();
		
		id = request.getParameter("userid");
		pwd = request.getParameter("userpwd");
		
		MemberDAO dao = new MemberDAO();
		result = dao.getMemeberPwd(id, pwd);
		
		if(result) {
			MemberVO vo = new MemberVO();
			vo.setUserId(id);
			vo.setUserPwd(pwd);
			
			// MemberVO 객체 변수 생성 -> 세션에 속성 값으로 설정
			HttpSession session = request.getSession();
			session.setAttribute("loginOK", vo);	
			response.sendRedirect("index.jsp");
		} else {
			out.println("<script> alert('로그인에 실패하였습니다.'); history.back(); </script>");
		}
	}

}
