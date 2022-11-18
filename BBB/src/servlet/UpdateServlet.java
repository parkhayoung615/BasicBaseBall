package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import vo.MemberVO;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 비밀번호 변경
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		PrintWriter out = response.getWriter();
		MemberDAO dao = new MemberDAO();
		MemberVO vo = new MemberVO();

		// 비밀번호 정규식으로 확인
		String key = request.getParameter("id");
		String chPwd = request.getParameter("chPwd");
		String pwdExp = "^(?=.*[A-Za-z])(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,20}$";
		boolean pwdBool = Pattern.matches(pwdExp, chPwd);

		vo.setUserId(key);
		vo.setUserChPwd(chPwd);

		if (pwdBool == true) {
			int n = dao.updateMember(vo);
			if (n < 0) {
				out.print("<script>alert('비밀번호 변경 실패');history.back();</script>");
			} else {
				out.print("<script>alert('비밀번호 변경 성공');history.back();</script>");
			}
		} else {
			out.print("<script>alert('조건을 확인해보세요!');history.back();</script>");
		}
	}
}
