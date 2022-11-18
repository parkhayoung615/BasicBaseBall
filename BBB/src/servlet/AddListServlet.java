package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BaseballDAO;
import vo.BaseballVO;


@WebServlet("/add")
public class AddListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 사전에 추가
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String user = request.getParameter("user");
		
		BaseballVO vo = new BaseballVO();
		BaseballDAO dao = new BaseballDAO();
	
		vo.setBbPosition(request.getParameter("add-select"));
		vo.setBbTitle(request.getParameter("title"));
		vo.setBbContents(request.getParameter("text"));
		vo.setBbWrite(user);

		int n = dao.addBaseballList(vo);
		
		if(n>0) {
			response.sendRedirect("/listDictionary?sel=all");
		} else {
			response.sendRedirect("/add.jsp");
		}
	}

}
