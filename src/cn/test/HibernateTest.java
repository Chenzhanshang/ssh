package cn.test;


import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.dao.UserDao;
import cn.entity.User;
import cn.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class HibernateTest {
	@Resource(name="sessionFactory")
	private SessionFactory sf;
	
	@Resource(name="userDao")
	private UserDao ud;
	
	@Resource(name="userService")
	private UserService us;
	
	@Test
	public void fun1() {
		
		User u = new User();
		u.setId("clo");
		u.setPwd("123456");
		us.save(u);
	}
	
	@Test
	public void fun2() {
		User u = new User();
		u.setId("clo");
		u.setPwd("123456");
		us.delete("clo");
	}
	
	@Test
	public void fun3() {
		
		List<User> list = us.getAll();
		for(User u:list)
			System.out.println(u.toString());
	}
	
	@Test
	public void fun4() {
		User u = new User();
		u.setId("clb");
		User user = us.get(u);
		System.out.println(user.toString());
	}
	@Test
	public void fun5() {
		User u = new User();
		u.setId("clb");
		u.setPwd("123456");
		u.setAge(20);
		us.update(u, "clb");
	}
	
	@Test
	public void getByIdTest() {
		
		User user = ud.getbyId("clb");
		System.out.println(user);
	}
}
