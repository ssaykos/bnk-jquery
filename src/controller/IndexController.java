package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class IndexController
 */
@WebServlet({"/index.do","/jquery/hello.do","/jquery/selector.do",
	"/jquery/attr.do","/jquery/traversing.do"
	})
public class IndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request,response);
	}
	
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath().substring(+1);
		String url = "";
		
		switch (path) {
		case "jquery/hello.do": url="hello.jsp"; break;
		case "jquery/selector.do": url="selector.jsp"; break;
		case "jquery/attr.do": url="attr.jsp"; break;
		case "jquery/traversing.do": url="traversing.jsp"; break;
		
		case "index.do": url="/index.jsp"; break;
		
		default: break;
		}
		if (path.substring(0, 5).equals("jquer")) {
			RequestDispatcher dispatcher 
				= request.getRequestDispatcher("/view/jquery/"+url);
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher 
				= request.getRequestDispatcher(url);
			dispatcher.forward(request, response);
		}
		
	}
	
	

	

}
