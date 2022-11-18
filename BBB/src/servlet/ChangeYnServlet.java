package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ContentDAO;
import vo.ContentVO;

@WebServlet("/change")
public class ChangeYnServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ChangeYnServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 승인 취소 변경
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		PrintWriter out = response.getWriter();
		ContentDAO dao = new ContentDAO();
		ContentVO vo = new ContentVO();

		String yn = request.getParameter("yn");
		int id = Integer.parseInt(request.getParameter("id"));

		vo.setcYn(yn);
		vo.setcId(id);

		int n = dao.getAdminBaseballChage(vo);
		if (n < 0) {
			out.print("<script>alert('변경 실패');</script>");
			response.sendRedirect("./admin.jsp");
		} else {
			out.print("<script>alert('변경 성공');history.back();</script>");
			response.sendRedirect("./admin.jsp");
		}
	}
}
