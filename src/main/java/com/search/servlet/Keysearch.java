package com.search.servlet;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.mongodb.MongoClient; 
import com.mongodb.MongoCredential;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.bson.Document;

import com.google.gson.Gson;
import com.mongodb.BasicDBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
@WebServlet("/keyServlet")
public class Keysearch extends HttpServlet{
	public Object getName1() {
		return name1;
	}

	public void setName1(Object name1) {
		this.name1 = name1;
	}

	public Object getDob1() {
		return Dob1;
	}

	public void setDob1(Object dob1) {
		Dob1 = dob1;
	}

	public Object getQualif1() {
		return qualif1;
	}

	public void setQualif1(Object qualif1) {
		this.qualif1 = qualif1;
	}

	public Object getJobi1() {
		return jobi1;
	}

	public void setJobi1(Object jobi1) {
		this.jobi1 = jobi1;
	}

	public Object getExp1() {
		return exp1;
	}

	public void setExp1(Object exp1) {
		this.exp1 = exp1;
	}

	public Object getStat1() {
		return stat1;
	}

	public void setStat1(Object stat1) {
		this.stat1 = stat1;
	}

	public Object getCont1() {
		return cont1;
	}

	public void setCont1(Object cont1) {
		this.cont1 = cont1;
	}
	public void init(ServletConfig config) throws ServletException {
	    super.init(config);
	    String initial = config.getInitParameter("listsofkeyword");
	    try {
	       Integer.parseInt(initial);
	    }
	    catch (NumberFormatException e) {
	    log.info(e);
	    }
	  }
	private static final long serialVersionUID = 3L;
	
	static Logger log = Logger.getLogger(Search.class);
	Object name1, Dob1, qualif1, jobi1, exp1, stat1, cont1;
    
	@SuppressWarnings("unchecked")
	public void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {

    	 int port_no = 27017;
		String host_name = "localhost", db_name = "Jobseeker";
		String keytext=null;
		// Mongodb connection string.
		String client_url = "mongodb://" + host_name + ":" + port_no + "/" + db_name;
		MongoClientURI uri = new MongoClientURI(client_url);

		// Connecting to the mongodb server using the given client uri.
		MongoClient mongo_client = new MongoClient(uri);
		 response.setIntHeader("Keysearch", 6);
		// Fetching the database from the mongodb.
		MongoDatabase db = mongo_client.getDatabase(db_name);
		MongoCollection<Document> collection = db.getCollection("temporary");

	      // Dropping a Collection 
	    collection.drop(); 
		// Fetching the collection from the mongodb.
		MongoCollection<Document> coll = db.getCollection("temporary");
		List<Document> documents=  (List<Document>) getServletContext().getAttribute("list1");
       
		coll.insertMany(documents); 
		for(Document d:documents)
		{
			log.debug(d);
		}
		coll.createIndex(new BasicDBObject("$**","text"));
        System.out.println("Collection created successfully"); 
        List<Keysearch> doc = new ArrayList<>();
        keytext = req.getParameter("key");
	 try {
         FindIterable<Document> fi = coll.find(new Document("$text", new Document("$search", keytext)));
         MongoCursor<Document> cursor= fi.iterator();
			log.debug("Document iterated");
			
			while (cursor.hasNext()) {
				// log.info(cursor.next().toJson());
				Keysearch obj=new Keysearch();
				Document obj2 = cursor.next();
				name1 = obj2.get("name");
				((Keysearch) obj).setName1(name1);
				Dob1 = obj2.get("Dob");
				((Keysearch) obj).setDob1(Dob1);
				qualif1 =obj2.get("qualif");
				((Keysearch) obj).setQualif1(qualif1);
				jobi1 = obj2.get("jobi");
				((Keysearch) obj).setJobi1(jobi1);
				exp1 = obj2.get("exp");
				((Keysearch) obj).setExp1(exp1);
				stat1 = obj2.get("stat");
				((Keysearch) obj).setStat1(stat1);
				cont1 =  obj2.get("cont");
				((Keysearch) obj).setCont1(cont1);
				
				doc.add(obj);
			}
			log.info("Inside the DB object");
			for (Object d : doc) {
				log.info(d);
			}
			ServletContext sc1 =getServletContext();
			sc1.setAttribute("keytext",keytext);
			req.setAttribute("listsofkeyword", doc);
			req.getRequestDispatcher("searchkeyword.jsp").forward(req, response);

         cursor.close();
    } catch (Exception e) {
        e.printStackTrace();
    } 
}
}