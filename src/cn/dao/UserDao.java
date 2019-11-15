package cn.dao;

import java.util.List;

import cn.entity.User;

public interface UserDao {
	public void save(User user);
	public User get(User user);
	public List<User> getAll();
	public void update(User user,String oldId);
	public void delete(String oldId);
	public User getbyId(String id);
}
