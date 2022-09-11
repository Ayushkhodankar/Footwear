package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import model.UserDao;


@WebServlet("/deleteserv")
public class DeleteServ extends HttpServlet {
	
	
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String d=request.getParameter("id");
		System.out.println("value"+d);
		
		boolean b=new UserDao().deleteUser(d);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("admin.jsp");
		
		if(b=true)
		{out.print("<br/><br/><br/><p style='color:'green''>Username deleted Successfully</p>");
			dispatcher.include(request, response);
		}
		else{
			response.sendRedirect("admin.jsp");
		}
		}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doPost(req, resp);
	}
	}


