package com.park.api.controller;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.lapi.common.BaseController;
import com.lapi.common.bean.JsonResult;
import com.lapi.common.bean.Subject;
import com.park.api.ServiceManage;

/**
 * 登录授权
 * @author Administrator
 */
@RequestMapping
@Controller
public class AuthenticationController extends BaseController{

	Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@RequestMapping("login")
	@ResponseBody
	public Object login(String account,String pwd) {
		Subject subject = new Subject();
		subject.setAccount(account);
		subject.setPwd(pwd);
		ServiceManage.securityService.checkUser(subject);
		ServiceManage.securityService.login(subject);
		return JsonResult.getSuccessResult("登录成功");
	}
	
	@RequestMapping("test1")
	public Object test(HttpServletRequest request) {
		Map map= request.getParameterMap();
		return new ModelAndView(new RedirectView("test2.do"), map);
	}
	@RequestMapping("test2") 
	@ResponseBody
	public Object test2(HttpServletRequest request) {
		return JsonResult.getSuccessResult(request.getParameterMap());
	}
	
	@RequestMapping("logout")
	@ResponseBody
	public Object logout() {
		ServiceManage.securityService.logout();
		return JsonResult.getSuccessResult("登出成功");
	}
	

	
	
	
}
