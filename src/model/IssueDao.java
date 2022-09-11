package model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class IssueDao {

	
	Configuration cfg;
	SessionFactory factory;
	Session session;
	Transaction tx;
	
	private void getConnect()
	{
		  cfg = new Configuration();
		 cfg.configure("hibernate.cfg.xml"); 
		  
		 
		  factory= cfg.buildSessionFactory();
		   session = factory.openSession();
		 
		 tx = session.beginTransaction();
	}
	
	public String insertIssue(Issue issue)
	{
		getConnect();
		 
		 session.save(issue);
		 tx.commit();
		 System.out.println("issue inserted successfully.....!!");
		 
		 endConnect();
		return "issue inserted";
		
	}
	
	public List<Issue> retrieveData()
	{
		getConnect();
		Query q1=session.createQuery("from Issue");
		
		List<Issue> ls1=q1.list();
		endConnect();
		
		return ls1;
	}
	public List<Issue> retrieveData1(String username)
	{
		getConnect();
		Query q2=session.createQuery("from Issue where username = '"+username+"'");
		
		List<Issue> ls2=q2.list();
		for(Issue i:ls2)
		{
			System.out.println(i.getCategoryname());
		}
		endConnect();
		
		
		return ls2;
	}
	
	public boolean deleteIssue(String d)
	{
		getConnect();
		Query q=session.createQuery("delete from Issue where rid ="+d);  
		
		int var1=q.executeUpdate(); 
		if(var1>0){
			endConnect();
		return true;
		}
		else {
			endConnect();
			return false;}
	}
	
	public Issue issueSearch(String iid){
		getConnect();
		Query q=session.createQuery(" from Issue where rid ='"+iid+"'");
		List<Issue> ls=q.list();
		
		Issue iss=ls.get(0);
		endConnect();
		return iss;

	}
	
	public String updateList(Issue ii)
	{
		getConnect();
		 session.update(ii);
		 tx.commit();
		 System.out.println("data updated successfully.....!!");
		endConnect();
		
		return "list updated";
	}
	private void endConnect()
	{
		
		 session.close();
		 factory.close();
	}
}
