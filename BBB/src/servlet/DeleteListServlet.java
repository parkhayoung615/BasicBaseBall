package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ContentDAO;
import vo.ContentVO;

@WebServlet("/deleteList")
public class DeleteListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		PrintWriter out = response.getWriter();
		ContentDAO dao = new ContentDAO();
		ContentVO vo = new ContentVO();
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		vo.setcId(id);
		
		int n = dao.BaseballDelete(vo);
		
		if (n < 0) {
			out.print("<script>alert('삭제 실패');</script>");
			response.sendRedirect("./myPage.jsp");
		} else {
			out.print("<script>alert('삭제 성공');history.back();</script>");
			response.sendRedirect("./myPage.jsp");
		}
	}


}
