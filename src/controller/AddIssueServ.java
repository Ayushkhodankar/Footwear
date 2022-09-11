package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Category;
import model.CategoryDao;
import model.Issue;
import model.IssueDao;


@WebServlet("/addissueserv")
public class AddIssueServ extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String categoryname=request.getParameter("selcategory");
		String issuetitle=request.getParameter("issuetitle");
		String issuedesc=request.getParameter("issuedesc");
		String comment=request.getParameter("comment");
		String status=request.getParameter("status");
		
		String username=request.getParameter("username");
		
		
		Issue issue=new Issue(categoryname, issuetitle, issuedesc, comment, status, username);
		
		String msg2= new IssueDao().insertIssue(issue);
		if(!msg2.equals(null))
		{
			out.print("<br/><br/><br/><p style='color:'green''>Issue Added Successfully</p>");

			request.getRequestDispatcher("raiseticket.jsp").include(request, response);
		}else
		{
			out.print("<br/><br/><br/><p style='color:'red''>please do not leave column empty</p>");
			request.getRequestDispatcher("raiseticket.jsp").include(request, response);
		
		}
	}

}
