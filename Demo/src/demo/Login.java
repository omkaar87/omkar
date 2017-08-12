package demo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String uname=request.getParameter("username");
		String password=request.getParameter("pwd");
		
		if(uname.equals("omkar") && password.equals("password"))
		{
			HttpSession session=request.getSession();
			session.setAttribute("user", uname);
			
			response.sendRedirect("homepage.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
	}

}
