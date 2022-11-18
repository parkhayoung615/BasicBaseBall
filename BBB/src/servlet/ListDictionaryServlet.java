package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BaseballDAO;
import vo.BaseballVO;


@WebServlet("/listDictionary")
public class ListDictionaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ListDictionaryServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 검색어 출력되는 서블릿 ㅎㅎ
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		String key = request.getParameter("sel");
		String key2 = request.getParameter("pos");
		BaseballDAO dao = new BaseballDAO();
		ArrayList<BaseballVO> list = dao.getBaseballList(key, key2);
		
		if(list != null) {
			request.setAttribute("baseballList", list);
		}
		
		request.getRequestDispatcher("./dict.jsp").forward(request, response);
	}

}
