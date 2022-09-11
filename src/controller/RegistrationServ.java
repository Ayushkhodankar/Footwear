package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import model.UserDao;

@WebServlet("/registrationserv")
public class RegistrationServ extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String fullname=request.getParameter("fullname");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String pass=request.getParameter("pass");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		
		User u=new User(fullname, username, email, mobile, pass, dob, gender);
		
		String msg= new UserDao().insertUser(u);
		if(msg.equals(null))
		{
			response.sendRedirect("register.jsp");
		}else
		{
			out.print("<script type='text/javascript' >alert('I am an alert box!');</script>");
			response.sendRedirect("index.jsp");
		
		}
		
	}

}
