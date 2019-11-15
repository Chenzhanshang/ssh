package cn.service.impl;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.Transaction;

import cn.dao.UserDao;
import cn.entity.User;
import cn.service.UserService;

public class UserServiceImpl implements UserService{
	private UserDao ud;
	@Override
	public void save(User user) {
			ud.save(user);

	}
	
	@Override
	public User get(User user) {
		User u = ud.get(user);
		return u;
	}
	
	@Override
	public List<User> getAll() {
		List<User> list = ud.getAll();
		return list;
	}
	
	@Override
	public void update(User user,String oldId) {
		ud.update(user, oldId);
	}
	
	
	@Override
	public void delete(String oldId) {
		ud.delete(oldId);
	}
	
	public void setUserDao(UserDao ud) {
		this.ud = ud;
	}
	
}
