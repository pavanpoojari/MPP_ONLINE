package com.niit.backend.DAOImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.backend.DAO.UserDAO;
import com.niit.backend.entity.User;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<User> list() {
		String hql = " FROM USER ";
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}

	@Override
	@Transactional
	public User get(int id) {
		return(User)sessionFactory.getCurrentSession().get(User.class, id);
	}

	@Override
	@Transactional
	public boolean create(User user) {
		
		try {
			
			user.setRole("USER");
			user.setEnable(true);
			
			sessionFactory.getCurrentSession().save(user);
			return true;
		} catch (HibernateException e) {
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean delete(User user) {
		
		try {
			sessionFactory.getCurrentSession().delete(user);
			return true;
		} catch (HibernateException e) {
			return false;
		}
		
	}

	@Override
	@Transactional
	public boolean saveOrUpdate(User user) {
		
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(user);
			return true;
		} catch (HibernateException e) {
			return false;
		}
		
	}

	@Override
	public boolean isValidate(String userName, String password) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	@Transactional
	public User getByuserName(String userName) {
		
		String hql = "FROM USER WHERE USERNAME = :uname";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setParameter("uname", userName);
		List<User> listUser = query.getResultList();
		if(listUser != null && !listUser.isEmpty()){
			return listUser.get(0);
		}
		return null;
	}

}
