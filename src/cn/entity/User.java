package cn.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="user_tb")
public class User {
	@Id
	private String id;
	private String pwd;
	private Date birthday;
	private Integer age;
	private String email;
	
	
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public void setId(String id) {
		this.id=id;
	}
	public String getId() {
		return this.id;
	}
	public void setPwd(String pwd) {
		this.pwd=pwd;
	}
	public String getPwd() {
		return this.pwd;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", pwd=" + pwd + ", birthday=" + birthday + ", age=" + age + ", email=" + email + "]";
	}
	
}
