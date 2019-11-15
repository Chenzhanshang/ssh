package cn.web.inter;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import cn.entity.User;

public class SelectInterceptor extends MethodFilterInterceptor{

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		User user = (User)ServletActionContext.getRequest().getSession().getAttribute("user");
		if(user == null)
		{
			ActionSupport actionSupport = (ActionSupport) invocation.getAction();
			actionSupport.addActionError("未登录，没有权限执行此操作！");
			return actionSupport.LOGIN;
		}
		return invocation.invoke();
	}

}
