package com.niit.ShoppingCartBackend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.ShoppingCartBackend.dao.ShippingaddressDAO;
import com.niit.ShoppingCartBackend.dao.CartDAO;
import com.niit.ShoppingCartBackend.dao.CategoryDAO;
import com.niit.ShoppingCartBackend.dao.ProductDAO;
import com.niit.ShoppingCartBackend.dao.RoleDAO;
import com.niit.ShoppingCartBackend.dao.SupplierDAO;
import com.niit.ShoppingCartBackend.dao.UserDAO;
import com.niit.ShoppingCartBackend.daoimpl.ShippingaddressDAOImpl;
import com.niit.ShoppingCartBackend.daoimpl.CartDAOImpl;
import com.niit.ShoppingCartBackend.daoimpl.CategoryDAOImpl;
import com.niit.ShoppingCartBackend.daoimpl.ProductDAOImpl;
import com.niit.ShoppingCartBackend.daoimpl.RoleDAOImpl;
import com.niit.ShoppingCartBackend.daoimpl.SupplierDAOImpl;
import com.niit.ShoppingCartBackend.daoimpl.UserDAOImpl;
import com.niit.ShoppingCartBackend.domain.Shippingaddress;
import com.niit.ShoppingCartBackend.domain.Cart;
import com.niit.ShoppingCartBackend.domain.Category;
import com.niit.ShoppingCartBackend.domain.Product;
import com.niit.ShoppingCartBackend.domain.Role;
import com.niit.ShoppingCartBackend.domain.Supplier;
import com.niit.ShoppingCartBackend.domain.User;

@Configuration
@ComponentScan("com.niit.ShoppingCartBackend")
@EnableTransactionManagement

public class ApplicationContextConfig 
{
	@Autowired
	@Bean(name = "dataSource")
	public DataSource getH2DataSource() {

		DriverManagerDataSource dataSource = new DriverManagerDataSource();
			
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/ShoppingCart");

		dataSource.setDriverClassName("org.h2.Driver");

		dataSource.setUsername("sa");
		dataSource.setPassword("");
		
		
		return dataSource;
}

	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.hbm2ddl.auto", "update");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.format_sql", "true");
		return properties;
}
	@Autowired
	@Bean(name = "sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) {

		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		sessionBuilder.addAnnotatedClass(User.class);
		sessionBuilder.addAnnotatedClass(Supplier.class);
		sessionBuilder.addAnnotatedClass(Product.class);
		sessionBuilder.addAnnotatedClass(Category.class);
		sessionBuilder.addAnnotatedClass(Role.class);
		sessionBuilder.addAnnotatedClass(Shippingaddress.class);
		sessionBuilder.addAnnotatedClass(Cart.class);
		//add all other domain object classes
		//Instead of adding individual domain objects to sesssionBuilder
		//u can add All the domain objects using single statement 
		
	
		
	
		return sessionBuilder.buildSessionFactory();
	}

	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);

		return transactionManager;
}
	@Autowired(required =true)
	@Bean(name="UserDAO")
	public UserDAO getUserDAO(SessionFactory sessionFactory)
	{
		return new UserDAOImpl(sessionFactory);
	}
	@Autowired(required=true)
	@Bean(name="SupplierDAO")
	public SupplierDAO getSupplierDAO(SessionFactory sessionFactory)
	{
		return new SupplierDAOImpl(sessionFactory);
		}

	@Autowired(required=true)
		@Bean(name="ProductDAO")
		public ProductDAO getProductDAO(SessionFactory sessionFactory)
		{
			return new ProductDAOImpl(sessionFactory);
			}
		@Autowired(required=true)
		@Bean(name="CategoryDAO")
		public CategoryDAO getCategoryDAO(SessionFactory sessionFactory)
		{
			return new CategoryDAOImpl(sessionFactory);
			}
		/*@Autowired(required=true)
			@Bean(name="CartDAO")
			public CartDAO getCartDAO(SessionFactory sessionFactory)
			{
				return new CartDAOImpl(sessionFactory);
				
			
			}*/
		@Autowired(required=true)
		@Bean(name="ShippingddressDAO")
		public ShippingaddressDAO getShippingddressDAO(SessionFactory sessionFactory)
		{
			return new ShippingaddressDAOImpl(sessionFactory);
			
		
	}
		@Autowired(required=true)
		@Bean(name="RoleDAO")
		public RoleDAO getRoleDAO(SessionFactory sessionFactory)
		{
			return new RoleDAOImpl(sessionFactory);
			
		
	}
		@Autowired(required=true)
		@Bean(name="CartDAO")
		public CartDAO getCartDAO(SessionFactory sessionFactory)
		{
			return new CartDAOImpl(sessionFactory);
			
		
	}
}
