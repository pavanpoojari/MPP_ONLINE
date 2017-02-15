package com.niit.backend.DAOImpl;

import javax.persistence.NoResultException;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.backend.DAO.AddressDAO;
import com.niit.backend.DAO.UserDAO;
import com.niit.backend.entity.Address;
import com.niit.backend.entity.User;

@Repository("addressDAO")
public class AddressDAOImpl implements AddressDAO {

	@Autowired
	private User user;

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private Address address;

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public Address getAddress(int id) {
		return sessionFactory.getCurrentSession().get(Address.class, id);
	}

	@Override
	@Transactional
	public Address getByUserId(int userId) {
		try {
			String hql = "FROM ADDRESS WHERE USER_ID =:userId";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			query.setParameter("userId", userId);

			return (Address) query.getSingleResult();
		} catch (NoResultException nr) {
			nr.printStackTrace();
			return null;
		}
	}

	@Override
	@Transactional
	public boolean create(Address address) {
		try {
			sessionFactory.getCurrentSession().save(address);
			return true;
		} catch (HibernateException e) {
			return false;
		}
	}

	@Override
	@Transactional
	public boolean delete(Address address) {
		try {
			sessionFactory.getCurrentSession().delete(address);
			return true;
		} catch (HibernateException e) {
			return false;
		}
	}

	@Override
	@Transactional
	public boolean saveOrUpdate(Address address) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(address);
			return true;
		} catch (HibernateException e) {
			return false;
		}
	}

}
