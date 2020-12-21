package com.xcompany.dao;

import java.util.List;

public interface Dao <T>{
	
	void create(T t);
	
	List<T> readAll();
	
	void update(T t);
	
	void delete(T t);	
}
