package model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class CategoryDao {
	
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
	
	public String insertCategory(Category c)
	{
		getConnect();
		 
		 session.save(c);
		 tx.commit();
		 System.out.println("category inserted successfully.....!!");
		 
		 endConnect();
		return "data inserted";
		
	}
	
	public List<Category> retrieveData()
	{
		getConnect();
		Query q=session.createQuery("from Category");
		
		List<Category> ls1=q.list();
		endConnect();
		
		return ls1;
	}
	
	public boolean deleteCategory(String dc)
	{
		getConnect();
		Query q=session.createQuery("delete from Category where cid ="+dc);  
		
		int var=q.executeUpdate(); 
		if(var>0){
			endConnect();
		return true;
		}
		else {
			endConnect();
			return false;}
	}
	
	public Category categorySearch(String id){
		getConnect();
		Query q=session.createQuery(" from Category where cid ='"+id+"'");
		List<Category> ls=q.list();
		Category cat= ls.get(0);
		endConnect();
		return cat;

	}
	
	public String updateCategory(Category c)
	{
		getConnect();
		 session.update(c);
		 tx.commit();
		 System.out.println("data updated successfully.....!!");
		endConnect();
		
		return "category updated";
	}
	
	
	private void endConnect()
	{
		
		 session.close();
		 factory.close();
	}
 
	

}
