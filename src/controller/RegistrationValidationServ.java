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

import model.User;
import model.UserDao;
import net.bytebuddy.agent.builder.AgentBuilder.InitializationStrategy.Dispatcher;


@WebFilter("/registrationserv")
public class RegistrationValidationServ implements Filter {

    
    public RegistrationValidationServ() { }
	public void destroy() {}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		String fullname=request.getParameter("fullname");
		String username=request.getParameter("username");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String pass=request.getParameter("pass");
		String dob=request.getParameter("dob");
		String gender=request.getParameter("gender");
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("register.jsp");
	/*	User u1= new UserDao().userSearch(username);
		String uname=u1.getUsername();*/
		if(fullname.equals(" ") || username.equals(" ") || email.equals(" ") || mobile.equals(" ") ||pass.equals(" ") ||dob.equals(" ") ||gender.equals(" ") || fullname.equals(null) || username.equals(null) || email.equals(null) || mobile.equals(null) ||pass.equals(null) ||dob.equals(null) ||gender.equals(null) )
		{
			out.print("<br/><br/><br/><p style='color:'red''>Please Do Not Leave Any Column Empty</p>");
			dispatcher.include(request, response);
		}
		/*if(username.equals(uname))
		{
			out.print("<br/><br/><br/><p style='color:'red''>Username already available,please add another username</p>");
			dispatcher.include(request, response);
		}*/
		
		else{
			chain.doFilter(request, response);
		}
		
		
	}

	
	public void init(FilterConfig fConfig) throws ServletException { }

}
