package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Problem;
import quizDAO.ProblemDAO;

@WebServlet("/CreateCheck")
public class CreateCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Problem p = (Problem)session.getAttribute("create");
		ProblemDAO dao = new ProblemDAO();
		dao.insertOne(p);

		response.sendRedirect("index.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String content = request.getParameter("content");
		String answer1 = request.getParameter("answer1");
		String answer2 = request.getParameter("answer2");
		String answer3 = request.getParameter("answer3");
		int choices =Integer.parseInt(request.getParameter("choices"));

		Problem p = new Problem(content,answer1,answer2,answer3,choices);
		
		HttpSession session = request.getSession();
		session.setAttribute("create", p);
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/quizCreateCheck.jsp");
		rd.forward(request, response);
	}

}
