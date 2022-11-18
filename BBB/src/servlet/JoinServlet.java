package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import vo.MemberVO;

@WebServlet("/join")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public JoinServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 회원가입 !!
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		MemberDAO dao = new MemberDAO();
		MemberVO data = new MemberVO();
		boolean isExist = dao.existId(request.getParameter("id"));
		
		String oKPwd = request.getParameter("okpwd");
		String backEmail = request.getParameter("selectbox");
		String pwd = request.getParameter("pwd");
		String id = request.getParameter("id");
		String tel = request.getParameter("phone");

		// 정규식
		String idExp = "^[a-zA-Z0-9]{6,20}$";
		String pwdExp = "^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,20}$";
		String telExp = "^01(?:0|1|[6-9])(?:\\d{3}|\\d{4})\\d{4}$";
		// 정규식 확인
		boolean idBool = Pattern.matches(idExp, id);
		boolean pwdBool = Pattern.matches(pwdExp, pwd);
		boolean telBool = Pattern.matches(telExp, tel);

		int result = 0;

		if (isExist) {
			out.print("<script>alert('이미 존재하는 ID 입니다. 다시 입력해주세요.'); history.back();</script>");
		// else if 컬럼 값을 대조하며 확인
		} else if (pwd.equals(oKPwd) && idBool == true && pwdBool == true && telBool == true) {
			// 조인 컬럼값
			data.setUserId(request.getParameter("id"));
			data.setUserPwd(request.getParameter("pwd"));
			data.setUserEmail(request.getParameter("email") + "@" + backEmail);
			data.setUserPhone(request.getParameter("phone"));

			result = dao.insertMember(data);
			if (result > 0) {
				out.print("<script>alert('회원가입에 성공했습니다.');</script>");
				response.sendRedirect("/login.jsp");
			} else {
				out.print("<script>alert('회원가입에 실패했습니다.');  history.back();</script>");
			}
		} else {
			out.print("<script>alert('조건을 확인해주세요!');  history.back();</script>");
		}
	}
}
