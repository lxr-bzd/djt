package com.park.api.service.impl;

import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.lxr.commons.exception.ApplicationException;
import com.park.api.ServiceManage;
import com.park.api.service.UserService;

@Service
public class UserServiceImpl implements UserService{

	@Override
	public Map<String, Object> getByAccount(String account) {
		
		if(StringUtils.isBlank(account))throw new ApplicationException("账号不能为空");
		try {
			return ServiceManage.jdbcTemplate.queryForMap("select djt_u_id id,djt_u_name account,djt_u_password pwd from djt_user where djt_u_name = ?", account);
	  }catch (EmptyResultDataAccessException e) {  
          return null;  
      }  
		
	}

	@Override
	public boolean isLock(String account) {
	
		Integer islock = ServiceManage.jdbcTemplate.queryForObject("select djt_islock from djt_user where djt_u_name = ?",Integer.class, account);
		
		if(islock!=null&&islock==2)return true;
		
		
		return false;
	}

}
