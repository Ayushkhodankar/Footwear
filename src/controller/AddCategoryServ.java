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


@WebServlet("/addcategoryserv")
public class AddCategoryServ extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String cname=request.getParameter("cname");
		String cdesc=request.getParameter("cdesc");
		
		Category c=new Category(cname, cdesc);
		
		String msg1= new CategoryDao().insertCategory(c);
		if(!msg1.equals(null))
		{
			out.print("<br/><br/><br/><p style='color:'green''>Category Added Successfully</p>");

			request.getRequestDispatcher("addcategory.jsp").include(request, response);
		}else
		{
			out.print("<br/><br/><br/><p style='color:'red''>please do not leave column empty</p>");
			request.getRequestDispatcher("addcategory.jsp").include(request, response);
		
		}
	}

}
