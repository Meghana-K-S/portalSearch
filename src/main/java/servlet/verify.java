package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/otpServlet")
public class verify extends HttpServlet {

	private static final long serialVersionUID = 5L;

	// This method is called by the servlet container to process a 'post' request
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		handleRequest(req, resp);
	}

	public void handleRequest(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		// Reading post parameters from the request
		String param1 = req.getParameter("otpval");
		System.out.println("OTP value from JSP page"+param1);
		String realotp = (String) getServletContext().getAttribute("realotp");

		System.out.println("Real otp from Mail generated"+realotp);
		// Checking for null and empty values
		 if((realotp.equals(param1))==true){
			 	System.out.println(realotp.equals(param1));
			 	getServletContext().getRequestDispatcher("/resetpass.jsp").forward(req, resp);

		}	else
		{
			req.setAttribute("error_message", "Invalid OTP, Please ensure that you entered the correct otp");
			req.getRequestDispatcher("/Result.jsp").forward(req, resp);
		}
	}
}