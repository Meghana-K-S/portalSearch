package com.jcg.mongodb.servlet;

import java.io.IOException;
import java.sql.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.log4j.xml.DOMConfigurator;
import org.bson.Document;

import com.google.gson.Gson;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.Mongo;
import com.mongodb.MongoClient;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.search.servlet.Search;

@WebServlet("/loginServlet")
public class Login extends HttpServlet {

	private static final long serialVersionUID = 1L;
	static Logger log = Logger.getLogger(Search.class);
	Object title, qualification, city, skill,Experience, salary_per, date, vacancies, process;
    public void init(ServletConfig config) throws ServletException {
	    super.init(config);
	    String initial = config.getInitParameter("list");
	    try {
	       Integer.parseInt(initial);
	    }
	    catch (NumberFormatException e) {
	    log.info(e);
	    }
	  }
	// This method is called by the servlet container to process a 'post' request
    public Object getTitle() {
		return title;
	}


	public void setTitle(Object title) {
		this.title = title;
	}


	public Object getQualification() {
		return qualification;
	}


	public void setQualification(Object qualification) {
		this.qualification = qualification;
	}


	public Object getCity() {
		return city;
	}


	public void setCity(Object city) {
		this.city = city;
	}


	public Object getSkill() {
		return skill;
	}


	public void setSkill(Object skill) {
		this.skill = skill;
	}


	public Object getExperience() {
		return Experience;
	}


	public void setExperience(Object experience) {
		Experience = experience;
	}


	public Object getSalary_per() {
		return salary_per;
	}


	public void setSalary_per(Object salary_per) {
		this.salary_per = salary_per;
	}


	public Object getDate() {
		return date;
	}


	public void setDate(Object date) {
		this.date = date;
	}


	public Object getVacancies() {
		return vacancies;
	}


	public void setVacancies(Object vacancies) {
		this.vacancies = vacancies;
	}


	public Object getProcess() {
		return process;
	}


	public void setProcess(Object process) {
		this.process = process;
	}

	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		handleRequest(req, resp);
	}

	@SuppressWarnings("unchecked")
	public void handleRequest(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		// Reading post parameters from the request
		String param1 = req.getParameter("login_id"), 
				param2 = req.getParameter("login_pwd");
		DOMConfigurator.configure("log4j.xml");
		MongoClient mongo = new MongoClient("localhost", 27017);

		log.debug("Connected to the database successfully");
		// Accessing the database
		MongoDatabase database = mongo.getDatabase("mycustomers");

		// Retrieving a collection
		MongoCollection<Document> coll = database.getCollection("login_page");
		log.debug("Collection myCollection selected successfully");
		ServletContext sc =getServletContext();
		// Checking for null and empty values
		if(param1 == null || param2 == null || "".equals(param1) || "".equals(param2)) {
			req.setAttribute("error_message", "Please enter login id and password");
			req.getRequestDispatcher("/index.jsp").forward(req, resp);
		} else {

			boolean isUserFound = Util.searchUserInDb(param1, param2);
			if(isUserFound) {
				sc.setAttribute("user", param1);
				BasicDBObject match = new BasicDBObject();
				
				match.put( "Email", param1 );
				String keytext = param1;
				Document ob1=null;
				log.debug( " Keyword gaven is   " + keytext);
				log.debug("Parameters from jsp to servlet assigned");
				List<Login> documents = new ArrayList<>();
				
				//db.login_page.find({Email:"abc@gmail.com"}).pretty();
					 FindIterable<Document> fi = coll.find(new Document("Email", param1));
			        // MongoCursor<Document> cursor= fi.iterator();
						log.debug("Document iterated");
						for (Document employee : fi) {
							 
							List<Object> courses = (List<Object>) employee.get("jobs_posted");
						//FindIterable<Document> job=	(FindIterable<Document>) ob1.get( "jobs_posted" );
				List<Document> documen = new ArrayList<Document>();
				if(courses!=null)
				{
				for (Object cursor : courses) {
	
					// log.info(cursor.next().toJson());
					Login obj=new Login();
					title =  ((Document) cursor).getString("title");
					((Login) obj).setTitle(title);
					qualification =((Document) cursor).getString("qualification");
					((Login) obj).setQualification(qualification);
					city =((Document) cursor).getString("city");
					((Login) obj).setCity(city);
					skill = ((Document) cursor).getString("skill");
					((Login) obj).setSkill(skill);
					Experience = ((Document) cursor).getString("Experience");
					((Login) obj).setExperience(Experience);
					salary_per = ((Document) cursor).getString("salary_per");
					((Login) obj).setSalary_per(salary_per);
					date =  ((Document) cursor).getString("date");
					((Login) obj).setDate(date);
					vacancies = ((Document) cursor).getString("vacancies");
					((Login)obj).setVacancies(vacancies);
					process =((Document) cursor).getString("process");
					( (Login) obj).setProcess(process);
					Gson gson = new Gson();
					 Document docum = Document.parse(gson.toJson(obj));
					//documen.add(docum);
					documents.add(obj);
				}
				log.info("Inside the DB object");
				//sc.setAttribute("list1", documen);
				req.setAttribute("list", documents);
						}
						}
						
				req.getRequestDispatcher("employerhomepage.jsp").forward(req, resp);
				
				
				} else {
				req.setAttribute("error_message", "You are not an authorised user. Please check with administrator.");
				req.getRequestDispatcher("/index.jsp").forward(req, resp);
			}	
		}		
	}
}