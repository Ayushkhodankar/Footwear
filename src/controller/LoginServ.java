package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserDao;

@WebServlet("/loginserv")
public class LoginServ extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String user=request.getParameter("username");
		String upass=request.getParameter("pass");
		
		if(new UserDao().checkUser(user, upass))
		{
			  HttpSession session=request.getSession();  
		       session.setAttribute("uname",user);  
		       session.setAttribute("upass",upass); 
		       
			response.sendRedirect("user.jsp");
		}
		if(user.equals("admin")&& upass.equals("abc123") )
		{
			HttpSession session1=request.getSession();  
	       session1.setAttribute("uname",user);  
	       session1.setAttribute("upass",upass); 
			response.sendRedirect("admin.jsp");
		}
		
		else
		{
			out.print("User not valid");
			request.getRequestDispatcher("login.jsp").include(request, response);
		}
		
		
		
	}
}
