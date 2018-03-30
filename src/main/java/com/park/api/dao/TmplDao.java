package com.park.api.dao;

import java.util.List;

import com.park.api.entity.Tmpl;

public interface TmplDao {

	
	 Integer getTmplNum();
	
	 
	 List<Tmpl> findTmpl();
	 
}
