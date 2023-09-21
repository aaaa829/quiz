package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Problem;
import quizDAO.ProblemDAO;

@WebServlet("/QuizList")
public class QuizList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProblemDAO dao = new ProblemDAO();
		List<Problem> list = dao.findAll();
		request.setAttribute("problemList", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/questionList.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
