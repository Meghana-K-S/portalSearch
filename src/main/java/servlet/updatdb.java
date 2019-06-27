package servlet;


import com.mongodb.client.FindIterable; 
import com.mongodb.client.MongoCollection; 
import com.mongodb.client.MongoDatabase; 
import com.mongodb.client.model.Filters; 
import com.mongodb.client.model.Updates;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import org.bson.Document;

import com.mongodb.BasicDBObject;
import com.mongodb.MongoClient; 
import com.mongodb.MongoCredential; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/pwdServlet")
public class updatdb extends HttpServlet { 
	private static final long serialVersionUID = 6L;
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException 
	{
      // Creating a Mongo client 
      MongoClient mongo = new MongoClient( "localhost" , 27017 ); 
     
      System.out.println("Connected to the database successfully");  
      String recipient = (String) getServletContext().getAttribute("recipient");
      // Accessing the database 
      MongoDatabase database = mongo.getDatabase("mycustomers"); 

      // Retrieving a collection 
      MongoCollection<Document> collection = database.getCollection("login_page");
      System.out.println("Collection myCollection selected successfully"); 
      String param1 = req.getParameter("npassword"), 
				param2 = req.getParameter("cpassword");
      //collection.updateOne(Filters.eq("Email", recipient), Updates.set("password", 150));       
      System.out.println("Document update successfully...");  
      // Retrieving the documents after updation 
      // Getting the iterable object
		collection.updateMany(
			    Filters.eq("Email", recipient),
			    Updates.combine(
			        Updates.set("password", param1),
			        Updates.set("cpassword", param2)
			    ));
		getServletContext().getRequestDispatcher("/emplogin.jsp").forward(req, resp);

      FindIterable<Document> iterDoc = collection.find(); 
      int i = 1; 

      // Getting the iterator 
      Iterator it = iterDoc.iterator(); 

      while (it.hasNext()) {  
         System.out.println(it.next());  
         i++; 
      }     
   }  
}