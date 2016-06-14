package bbs.dao;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import bbs.dao.CategoryDao;
import bbs.model.Category;
import bbs.util.HibernateUtil;


public class CategoryDaoTest extends CategoryDao {
	@Test
	public void testAdd() {
		Category c = new Category();
		c.setDescription("descr:aaa");
		c.setName("name:aaa");
		new CategoryDao().add(c);
	}
	@Test
	public void testDeleteById() {
		Category c = new Category();
		c.setDescription("descr:aaa");
		c.setName("name:aaa");
		new CategoryDao().add(c);
		
		new CategoryDao().deleteById(1);
	}
	
	@Test
	public void testList() {
		Category c = new Category();
		c.setDescription("descr:aaa");
		c.setName("name:aaa");
		new CategoryDao().add(c);
		Category c2 = new Category();
		c2.setDescription("descr:bbb");
		c2.setName("name:bbb");
		new CategoryDao().add(c2);
		Category c3 = new Category();
		c3.setDescription("descr:ccc");
		c3.setName("name:ccc");
		new CategoryDao().add(c3);
		
		List<Category> list = new CategoryDao().list();
		assertEquals(3, list.size());
	}
	@Test
	public void TestUpdate() {
//		Category c = new Category();
//		c.setDescription("aaa");
//		c.setName("bbb");
//		new CategoryDao().add(c);
//		c.setName("ccc");
		Category c = new CategoryDao().loadById(5);
		c.setName("5");
		new CategoryDao().update(c);
	}
}
