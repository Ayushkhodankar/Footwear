package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;


@WebFilter("/loginserv")
public class ValidationLogin implements Filter {

  
    public ValidationLogin() { }

	
	public void destroy() { }

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String username=request.getParameter("username");
		String pass=request.getParameter("pass");
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("login.jsp");
		
		if(username.equals(null) || pass.equals(null))
		{
			out.print("<br/><br/><br/><p style='color:'red''>Please Do Not Leave Any Column Empty</p>");
			dispatcher.include(request, response);

		}
		else{
			chain.doFilter(request, response);
		}
		
	}

	
	public void init(FilterConfig fConfig) throws ServletException { }

}
