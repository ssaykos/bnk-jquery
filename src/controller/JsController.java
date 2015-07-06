package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet({"/js/hello.do"})
public class JsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request,response);
	}

	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = request.getServletPath().substring(+1);
		String url = "";
		
		switch (path) {
		case "js/hello.do": url="hello.jsp"; break;
	
		
		default: break;
		}
	
		RequestDispatcher dispatcher 
			= request.getRequestDispatcher("/view/javascript/"+url);
		dispatcher.forward(request, response);
	
	}	

}
