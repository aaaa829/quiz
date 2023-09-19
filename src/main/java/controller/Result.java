package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Counter;
import model.Problem;

@WebServlet("/Result")
public class Result extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		List<Problem> list = (List<Problem>) session.getAttribute("problemList");
		int count = 0;
		for (int i = 0; i < list.size(); i++) {
			String parameter = request.getParameter("choices" + i);
			if (parameter != null) {
				if (Integer.parseInt(parameter) == (list.get(i).getChoices())) {
					count++;
				}
			}
		}
		Counter r = new Counter();
		r.setCount(count);

		request.setAttribute("count", r);

		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/result.jsp");
		rd.forward(request, response);

	}

}
