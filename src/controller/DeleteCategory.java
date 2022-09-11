package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CategoryDao;
import model.Category;

/**
 * Servlet implementation class DeleteCategory
 */
@WebServlet("/deletecategory")
public class DeleteCategory extends HttpServlet {
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String dc=request.getParameter("cid");
		System.out.println("value"+dc);
		
		boolean b1=new CategoryDao().deleteCategory(dc);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("categorylist.jsp");
		
		if(b1=true)
		{out.print("<br/><br/><br/><p style='color:'green''>Category deleted Successfully</p>");
			dispatcher.include(request, response);
		}
		else{
			response.sendRedirect("categorylist.jsp");
		}
		}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	

}
