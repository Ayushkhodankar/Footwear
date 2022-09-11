package model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

public class UserDao {
	
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
	
	public String insertUser(User u)
	{
		getConnect();
		 
		 session.save(u);
		 tx.commit();
		 System.out.println("data inserted successfully.....!!");
		 
		 endConnect();
		return "data inserted";
		
	}
	
	public boolean checkUser(String user,String upass){
		getConnect();
		
		Query q=session.createQuery("from User u where u.username=:q and u.pass=:p");
		q.setParameter("q", user);
		q.setParameter("p", upass);
      //User u=(User)q.uniqueResult();
      List<User> ls=q.list();
      for(User u2:ls)
		{
			if(user.equals(u2.getUsername()) && upass.equals(u2.getPass()))
			{
				return true;
			}
		}
	
		endConnect();
		return false;
		
	
		
	}
	public List<User> retrieveData()
	{
		getConnect();
		Query q=session.createQuery("from User");
		
		List<User> ls=q.list();
		endConnect();
		
		return ls;
	}
	
	public boolean deleteUser(String d)
	{
		getConnect();
		Query q=session.createQuery("delete from User where id ="+d);  
		
		int var=q.executeUpdate(); 
		if(var>0){
			endConnect();
		return true;
		}
		else {
			endConnect();
			return false;}
	}
	
	public User userSearch(String i){
		getConnect();
		Query q=session.createQuery(" from User where id ='"+i+"'");
		List<User> ls=q.list();
		User u= ls.get(0);
		endConnect();
		return u;
		
	}
	
	public User userSearchPro(String i){
		getConnect();
		Query q=session.createQuery(" from User where username ='"+i+"'");
		List<User> ls=q.list();
		User u= ls.get(0);
		endConnect();
		return u;
		
	}
	
	public String updateUser(User u)
	{
		getConnect();
		 session.update(u);
		 tx.commit();
		 System.out.println("data updated successfully.....!!");
		endConnect();
		
		return "user updated";
	}
	
	public String updateUserPro(User u8)
	{
		getConnect();
		 session.update(u8);
		 tx.commit();
		 System.out.println("data updated successfully.....!!");
		endConnect();
		
		return "user updated";
	}
	
	private void endConnect()
	{
		
		 session.close();
		 factory.close();
	}
 
	
	 
	  
	
	  
	


}
