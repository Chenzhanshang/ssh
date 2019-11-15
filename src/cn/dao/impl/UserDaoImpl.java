package cn.dao.impl;

import java.util.List;


import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
import cn.dao.UserDao;
import cn.entity.User;
public class UserDaoImpl extends HibernateDaoSupport implements UserDao{
	
	@Override
	public void save(User user) {
		getHibernateTemplate().save(user);
	}

	
	@Override
	public User get(User user) {
		User u = getHibernateTemplate().get(User.class, user.getId());	
		return u;
	}
	
	@Override
	public List<User> getAll(){
		List<User> list = (List<User>) getHibernateTemplate().find("from User");
		return list;
	}
	
	@Override
	public void update(User user,String oldId) {
		User u = getHibernateTemplate().get(User.class, oldId);
		if(user.getPwd()!=null && !user.getPwd().equals(""))
			u.setPwd(user.getPwd());
		if(user.getAge()!=null && user.getAge()!=0)
			u.setAge(user.getAge());
		if(user.getEmail()!=null && !user.getEmail().equals(""))
			u.setEmail(user.getEmail());
		if(user.getBirthday()!=null)
			u.setBirthday(user.getBirthday());
		
		getHibernateTemplate().saveOrUpdate(u);
		System.out.println(u);
		
	}
	
	@Override
	public void delete(String oldId) {
		User u = getHibernateTemplate().get(User.class, oldId);
		getHibernateTemplate().delete(u);
	}


	@Override
	public User getbyId(String id) {
		return getHibernateTemplate().execute(new HibernateCallback<User>() {

			@Override
			public User doInHibernate(Session session) throws HibernateException {
				String hql = "from User where id = ?";
				Query query = (Query) session.createQuery(hql);
				query.setParameter(0, id);
				User user = (User) query.uniqueResult();
				return user;
			}
		});
		
	}

}


