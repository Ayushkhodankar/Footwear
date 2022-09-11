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


@WebServlet("/updatecategoryserv")
public class UpdateCategoryServ extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int cid=Integer.parseInt((request.getParameter("cidc")));
		String cname=request.getParameter("cname");
		String cdesc=request.getParameter("cdesc");
		
		Category c3=new Category(cid,cname, cdesc);
		
		String msg6= new CategoryDao().updateCategory(c3);
		
		if(msg6.equals(null))
		{
			response.sendRedirect("categorylist.jsp");
		}else
		{
			out.print("<p>User not updated<p>");
			response.sendRedirect("categorylist.jsp");
		
		}
	}

}
