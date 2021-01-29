package com.user.daoimpl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.user.model.User;
import com.user.dao.UserDao;

@Repository("userDao")
public class UserDaoImpl implements UserDao{
	@Autowired
	private SessionFactory sf;
	
	public List<User> getAll() {
	Session s=sf.openSession();	
	Transaction t = s.beginTransaction();
	List<User> list = new ArrayList<User>();
	try {

		list = s.createQuery("FROM User").list();

		t.commit();
	} catch (Exception e) {
		t.rollback();
		e.printStackTrace();
	} finally {
		s.close();
	}	
		
		
	
		return list;
	}

	public long saveUser(User user) {
		Session ss=sf.openSession();
		Transaction t=ss.beginTransaction();
		boolean result=false;
		try{
			
			ss.save(user);
			t.commit();
			result =true;
			}
		catch (Exception e) {
		t.rollback();	
		e.printStackTrace();	
		}
		finally {
		ss.close();
		}
		
		return 0;
	}
	
	public List<User> getByQuery(final String query) {
		Session ss=sf.openSession();
		try {
			
			Query queryResult = ss.createQuery(query);
			return queryResult.list();
		} catch (HibernateException e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}

		return Collections.emptyList();
	}
	
	
	public User logincheck(User user) {
		
		String query = "FROM User where email='" + user.getEmail() + "' and password='" + user.getPassword() + "'";
		
		Session ss=sf.openSession();
		List<User> list = getByQuery(query);
		try{
			if (list.size() == 0) {
			return null;
			}
		return list.get(0);
		}
		finally{
		ss.close();
		}
		
		
	}
	
}
