package com.jcg.java.mongodb;

import org.apache.log4j.Logger;
import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

public class Demo {

	private static Logger log = Logger.getLogger(Demo.class);

	// Fetching all documents from the mongo collection.
	private static void getAllDocuments(MongoCollection<Document> col) {
		log.info("Fetching all documents from the collection");

		// Performing a read operation on the collection.
		FindIterable<Document> fi = col.find();
		MongoCursor<Document> cursor = fi.iterator();
		try {
			while(cursor.hasNext()) {
				log.info(cursor.next().toJson());
			}
		} finally {
			cursor.close();
		}
	}

	// Fetch a single document from a collection.
	private static void getSelectiveDocument(MongoCollection<Document> col) {
		log.info("Fetching a particular document from the collection");

		// Performing a read operation on the collection.
		String state="Chandigarh";
		String qual = "BE/B.tech";
		String srch_name = "System Engineer";
		FindIterable<Document> fi = col.find(Filters.and(Filters.eq("state", state), Filters.eq("job_interests", srch_name), Filters.eq("qual", qual)));		
		MongoCursor<Document> cursor = fi.iterator();
		try {
			while(cursor.hasNext()) {
				log.info(cursor.next().toJson());
			}
		} finally {
			cursor.close();
		}
	}

	// Fetching the documents from the mongodb based on the not_in clause.
	private static void getDocumentsWithNotInClause(MongoCollection<Document> col) {
		log.info("Fetching the documents from the collection based on the 'not_in' clause");

		// Performing a read operation on the collection.
		String srch_not_in_string = "tech_1001";
		FindIterable<Document> fi = col.find(Filters.ne("unit_tag_code", srch_not_in_string));		
		MongoCursor<Document> cursor = fi.iterator();
		try {
			while(cursor.hasNext()) {
				log.info(cursor.next().toJson());
			}
		} finally {
			cursor.close();
		}
	}

	@SuppressWarnings("resource")
	public static void main(String[] args) {
		// Mongodb initialization parameters.
		int port_no = 27017;
		String host_name = "localhost", db_name = "Jobseeker", db_coll_name = "fusteps";

		// Mongodb connection string.
		String client_url = "mongodb://" + host_name + ":" + port_no + "/" + db_name;
		MongoClientURI uri = new MongoClientURI(client_url);

		// Connecting to the mongodb server using the given client uri.
		MongoClient mongo_client = new MongoClient(uri);

		// Fetching the database from the mongodb.
		MongoDatabase db = mongo_client.getDatabase(db_name);

		// Fetching the collection from the mongodb.
		MongoCollection<Document> coll = db.getCollection(db_coll_name);

		// Fetching all the documents from the mongodb.
		getAllDocuments(coll);

		log.info("\n");

		// Fetching a single document from the mongodb based on the search parameters.
		getSelectiveDocument(coll);

		log.info("\n");

		// Fetching the documents from the mongodb based on the not_in clause.
		getDocumentsWithNotInClause(coll);
	}
}
