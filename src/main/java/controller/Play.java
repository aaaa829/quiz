package controller;

import java.io.IOException;
import java.util.ArrayList;
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
import quizDAO.ProblemDAO;

@WebServlet("/Play")
public class Play extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProblemDAO dao = new ProblemDAO();
		List<Problem> list = dao.randFind();
		HttpSession session = request.getSession();
		session.setAttribute("problemList", list);
				
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/play.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Integer> choices = new ArrayList<Integer>();
		for(int i=0;i<4;i++) {
			String parameter = request.getParameter("choices" + i);
			choices.add(Integer.parseInt(request.getParameter(parameter)));
		}
		HttpSession session = request.getSession();
		List<Problem> list = (List<Problem>)session.getAttribute("problemList");
		int count = 0;
		for(int i =0; i< choices.size();i++) {
			if(choices.get(i)==(list.get(i).getChoices())) {
				count++;
			}
		}
		Counter r = new Counter();
		r.setCount(count);
		
		request.setAttribute("count", r);
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/result.jsp");
		rd.forward(request, response);
	
		
	}

}
