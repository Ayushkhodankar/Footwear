package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Issue;
import model.IssueDao;
import model.UserDao;


@WebServlet("/updateissueserv")
public class UpdateIssueServ extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int rid=Integer.parseInt((request.getParameter("cidc")));
		String categoryname=request.getParameter("selcategory");
		String username=request.getParameter("username");
		String issuetitle=request.getParameter("issuetitle");
		String comment=request.getParameter("comment");
		String status=request.getParameter("status");
		String issuedesc=request.getParameter("issuedesc");
		
		Issue i9=new Issue(rid, categoryname, issuetitle, issuedesc, comment, status,username);
		
		String msg9= new IssueDao().updateList(i9);
		if(msg9.equals(null))
		{
			response.sendRedirect("raisedticketlist.jsp");
		}else
		{
			out.print("<p>User not updated<p>");
			response.sendRedirect("raisedticketlist.jsp");
		
		}
	
		
	}

}
