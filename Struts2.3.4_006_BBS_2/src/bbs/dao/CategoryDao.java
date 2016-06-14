package bbs.dao;

import java.util.ArrayList;
import java.util.List;

import bbs.model.Category;
import bbs.util.HibernateUtil;

public class CategoryDao {
	public void add(Category category) {
		HibernateUtil.getSession().beginTransaction();
		
		HibernateUtil.getSession().save(category);
		
		HibernateUtil.getSession().getTransaction().commit();
	}
	
	public void deleteById(int id) {
		HibernateUtil.getSession().beginTransaction();
		
		HibernateUtil.getSession().createQuery("delete from Category c where c.id=" + id).executeUpdate();
		
		HibernateUtil.getSession().getTransaction().commit();
	}
	public List<Category> list() {
		List<Category> list = new ArrayList<Category>();
		HibernateUtil.getSession().beginTransaction();
		
		list = HibernateUtil.getSession().createQuery("from Category").list();
		HibernateUtil.getSession().close();
		
		return list;
	}
	
	public void update(Category category) {
		HibernateUtil.getSession().beginTransaction();
		
		HibernateUtil.getSession().update(category);
		
		HibernateUtil.getSession().getTransaction().commit();
	}

	public Category loadById(int id) {
		HibernateUtil.getSession().beginTransaction();
		
		Category c = (Category)HibernateUtil.getSession().createQuery("from Category c where c.id=" + id).uniqueResult();
		HibernateUtil.getSession().close();
		
		return c;
	}
}
