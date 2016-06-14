package bbs.model;

import static org.junit.Assert.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import bbs.model.Category;

public class CategoryTest extends Category {

private static SessionFactory sessionFactory;
	
@Test
	public void testTeacherSchemaExport() {//通过程序实现自动创表
		//自动生成表
		//第一个bool变量表示是否显示语句,第二个是表示是否执行
		new SchemaExport(new AnnotationConfiguration().configure()).create(false, true);
		
	}
}
