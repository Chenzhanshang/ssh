package cn.web.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import cn.entity.User;
import cn.service.UserService;

public class UserAction extends ActionSupport implements ModelDriven<User>{
	private UserService us;
	private User user;
	//用于修改删除的id
	private String oldId;
	private File photo;
	private String photoContentType;
	private String photoFileName;
	private String fileName;
	private InputStream inputStream;
	
	private String uniqueFileName(String FileName) {
		DateFormat format = new SimpleDateFormat("yyMMddHHmmss");
		String formatDate = format.format(new Date());
		int position = photoFileName.lastIndexOf(".");
		String extension = photoFileName.substring(position);
		return formatDate + extension;
	}
	public String changeLanguage() {
		return "changeSuccess";
	}
	public String login() throws Exception {
		User u = us.get(user);
		if(u == null) {
			ActionContext.getContext().getSession().put("InterceptorError", "用户名不存在，请注册！");
			return "toRegister";
		}
		if(user.getPwd().equals(u.getPwd())) {	
			ActionContext.getContext().getSession().put("user", u);
			if(photo != null)
			{
				String realPath = ServletActionContext.getServletContext().getRealPath("/photo");
				String realFileName = uniqueFileName(photoFileName);
				File real = new File(realPath,realFileName);
				String image = realFileName;
				System.out.println(image);
				ServletActionContext.getRequest().getSession().setAttribute("image", image);
				if(!real.getParentFile().exists())
					real.getParentFile().mkdirs();
				FileUtils.copyFile(photo, real);
			}
			return "loginSuccess";
			}
		else {
			ActionContext.getContext().put("error", "密码错误！");
			return "loginLose";
		}	
	}
	public String selectAll() throws Exception {
		List<User> list =  us.getAll();
		if(list != null)
		{
			ActionContext.getContext().put("list", list);
			return "selectAllSuccess";
		}
		else{
			ActionContext.getContext().put("SeleteError", "数据库数据为空");
			return "selectAllLose";
			}
	}
	
	public String register() throws Exception {
		us.save(user);
		ActionContext.getContext().put("RegisterError", "注册成功，请登录！");
		return "registerSuccess";
	}
	
	public String download() throws FileNotFoundException, UnsupportedEncodingException {
		String path = "H:/JAVAEE/images/" + fileName;
		inputStream = new FileInputStream(path);
		fileName = URLEncoder.encode(fileName,"UTF-8");
		return "download";
	}
	
	public String update() {
		
		if(ActionContext.getContext().getSession().get("myMessage").equals("true"))
			setOldId((String)( (User)ActionContext.getContext().getSession().get("user")).getId());
		else
			setOldId((String) ActionContext.getContext().getSession().get("oldId"));
		
		us.update(user, oldId);
		ActionContext.getContext().getSession().put("operate", "修改");
		return "update";
	}
	
	public String updatePassword() {
		setOldId((String)( (User)ActionContext.getContext().getSession().get("user")).getId());
		us.update(user, oldId);
		ActionContext.getContext().getSession().put("operate", "修改");
		return "update";
	}
	
	public String delete() {
		us.delete(oldId);
		ActionContext.getContext().getSession().put("operate", "删除");
		return "delete";
	}
	
	@Override
	public User getModel() {
		return user;
	}
	public void validateLogin() {
		if(user.getId().length()<3 || user.getId().length() > 11)
			this.addFieldError("idError","用户名不为空并且长度在3-11之间");
	}
	public File getPhoto() {
		return photo;
	}
	public void setPhoto(File photo) {
		this.photo = photo;
	}
	public String getPhotoContentType() {
		return photoContentType;
	}
	public void setPhotoContentType(String photoContentType) {
		this.photoContentType = photoContentType;
	}
	public String getPhotoFileName() {
		return photoFileName;
	}
	public void setPhotoFileName(String photoFileName) {
		this.photoFileName = photoFileName;
	}
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public InputStream getInputStream() {
		return inputStream;
	}
	public String getOldId() {
		return oldId;
	}
	public void setOldId(String oldId) {
		this.oldId = oldId;
	}
	
	
	public void setUs(UserService us) {
		this.us = us;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
}
