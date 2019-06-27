package servlet;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import servlet.conf_util;


/**
 * A servlet that takes message details from user and send it as a new e-mail
 * through an SMTP server.
 * 
 */
@WebServlet("/emailServlet")
public class Email extends HttpServlet {
	
	private static final long serialVersionUID = 4L;
	private String host;
	private String port;
	private String user;
	private String pass;
	String pin="";
	public void init() {
		// reads SMTP server setting 
		host = "smtp.gmail.com";
		port = "587";
		user = "greenlandfuture2019@gmail.com";
		pass = "Fusteps19";
	}
 String generatePIN() 
	   {

	        //generate a 4 digit integer 1000 <10000
	        int randomPIN = (int)(Math.random()*9000)+1000;
	        pin = String.valueOf(randomPIN);
	      	return pin;
	    }
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// reads form fields
		String recipient = request.getParameter("recipient");
		try {
		boolean isUserFound = conf_util.searchUserInDb(recipient);
		if(isUserFound) {				
		String resultMessage = ""; 
			String otp=generatePIN();
			ServletContext sc =getServletContext();
			sc.setAttribute("realotp", otp);
			sc.setAttribute("recipient", recipient);
			EmailUtil.sendEmail(host, port, user, pass, recipient, otp);
			resultMessage = "The e-mail was sent successfully";
			getServletContext().getRequestDispatcher("/Result.jsp").forward(
					request, response);
		}
		else {
			request.setAttribute("error_message", " Please Enter valid Email-id");
			request.getRequestDispatcher("/EmailForm.jsp").forward(request, response);
		}
	}
	catch (Exception ex) {
		ex.printStackTrace();
	} 
	}
}