package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import model.UserDao;

@WebServlet("/updateuserserv")
public class UpdateUserServ extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int id=Integer.parseInt((request.getParameter("id")));
		String fullname=request.getParameter("fullname");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String pass=request.getParameter("pass");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		
		
		
		User u=new User(id,fullname, username, email, mobile, pass, dob, gender);
		
		String msg5= new UserDao().updateUser(u);
		if(msg5.equals(null))
		{
			response.sendRedirect("admin.jsp");
		}else
		{
			out.print("<p>User not updated<p>");
			response.sendRedirect("admin.jsp");
		
		}
	}

}
