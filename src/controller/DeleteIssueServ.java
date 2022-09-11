package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.IssueDao;
import model.UserDao;

@WebServlet("/deleteissueserv")
public class DeleteIssueServ extends HttpServlet {

	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		

		String c=request.getParameter("id");
		System.out.println("value"+c);
		
boolean bd=new IssueDao().deleteIssue(c);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("raisedticketlist.jsp");
		
		if(bd=true)
		{out.print("<br/><br/><br/><p style='color:'green''>Username deleted Successfully</p>");
			dispatcher.include(request, response);
		}
		else{
			response.sendRedirect("raisedticketlist.jsp");
		}
		}
		
	
	
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	doPost(request, response);
	}

}
