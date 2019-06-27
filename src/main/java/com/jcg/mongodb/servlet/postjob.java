package com.jcg.mongodb.servlet;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSInputFile;

@WebServlet("/postjobServlet")

public class postjob extends HttpServlet{



	private static final long serialVersionUID = 3;
	// This method is called by the servlet container to process a 'post' request
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException 
	{
		// Mongodb initialization parameters.
				int port_no = 27017;
				String host_name = "localhost", db_name = "mycustomers", db_coll_name = "login_page";

				// Mongodb connection string.
				String client_url = "mongodb://" + host_name + ":" + port_no + "/" + db_name;
				MongoClientURI uri = new MongoClientURI(client_url);

				// Connecting to the mongodb server using the given client uri.
				MongoClient mongo_client = new MongoClient(uri);

				// Fetching the database from the mongodb.
				MongoDatabase db = mongo_client.getDatabase(db_name);

				// Fetching the collection from the mongodb.
				MongoCollection<Document> coll = db.getCollection(db_coll_name);

				String param1 = req.getParameter("job_type_id"), 
						param2 = req.getParameter("jobtitle"),
						param3 = req.getParameter("qual"), 
						param4 = req.getParameter("city"),
						param5 = req.getParameter("state"),
						param6 = req.getParameter("skill"),
						param7 = req.getParameter("startyear"), 
						param8 = req.getParameter("endyear"),
						param9 = req.getParameter("startyr"),
						param10 = req.getParameter("min"),
						param11 = req.getParameter("max"), 
						param12 = req.getParameter("per"),
						param13 = req.getParameter("description"),
						param14 = req.getParameter("date"),
						param15= req.getParameter("vacancies"),
						param16= req.getParameter("process");
			   	
			   	
				
		// Reading post parameters from the request
	   
	   	if(param1.isEmpty() || param2.isEmpty())
		{
	   		req.setAttribute("Message", "Please enter all the text fields");
	   		req.getRequestDispatcher("employerhomepage.jsp").forward(req, resp);
		}
		else
		{
			BasicDBObject match = new BasicDBObject();
			String user=   (String) getServletContext().getAttribute("user");
		       
			match.put( "Email", user );	
			
			BasicDBObject emp1 = new BasicDBObject();
			
			/*
			 * addressSpec.put( "_id", address.getId() );
			 * 
			 * addressSpec.put( "type", address.getType() );
			 * 
			 * addressSpec.put( "street", address.getStreet() );
			 * 
			 * addressSpec.put( "city", address.getCity() );
			 * 
			 * addressSpec.put( "state", address.getState() );
				
		   	Document emp1 = new Document(); */
			emp1.put("type", param1);
			emp1.put("title", param2);
			emp1.put("qualification",param3);
			emp1.put("city", param4);
			emp1.put("state", param5);
			emp1.put("skill",param6);
			emp1.put("startyear", param7);
			emp1.put("endyear", param8);
			emp1.put("Experience",param9);
			emp1.put("min", param10);
			emp1.put("max", param11);
			emp1.put("salary_per",param12);
			emp1.put("description", param13);
			emp1.put("date", param14);
			emp1.put("vacancies",param15);
			emp1.put("process", param16);
			BasicDBObject update = new BasicDBObject();

			update.put( "$push", new BasicDBObject( "jobs_posted", emp1 ) );
			coll.updateOne( match, update );
			//coll.updateMany( match, update );		

			req.getRequestDispatcher("employerhomepage.jsp").forward(req, resp);
		}
	}
}
 
