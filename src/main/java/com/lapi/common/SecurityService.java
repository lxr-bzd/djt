package com.lapi.common;


import java.util.HashMap;
import java.util.Map;
import org.apache.commons.codec.digest.DigestUtils;

import com.app.appsession.AppSession;
import com.app.appsession.AppSessionUtils;
import com.app.appsession.Subject;


public abstract class SecurityService{
	
	
	
	public abstract Subject checkUser(Subject subject);
	
	
	
	public void login(Subject subject) {
		String token = createToken(subject);
		
		subject.setToken(token);
		
		AppSessionUtils.getSession().setSubject(subject);

	}
	
	
	
	public void logout(){
		
		AppSessionUtils.getSession().invalidat();
		
	}
	
	
	
	
	
	public boolean isLogin() {
		 AppSession appSession = AppSessionUtils.getSession(false);
		
		if(appSession==null)return false;
		
		if(appSession.getSubject()!=null)return true;
		
		 return false;

	}
	
	
	
	
	
	private Subject getSubject() {
		 AppSession appSession = AppSessionUtils.getSession(false);
			
			if(appSession==null)return null;
			
			return appSession.getSubject();

	}
	
	

	
	
	public Object getSubjectId(){
		
		return getSubject().getId();
	}
	
	
	
	private String createToken(Subject subject) {
		return DigestUtils.md5Hex(subject.getAccount()+System.currentTimeMillis());
	}
	
	



	
	
}
