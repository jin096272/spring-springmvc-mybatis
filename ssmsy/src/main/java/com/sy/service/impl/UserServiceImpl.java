package com.sy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sy.dao.UserDao;
import com.sy.domain.User;
import com.sy.service.UserService;


@Service
public class UserServiceImpl implements UserService{
	@Autowired
	public UserDao userDao;
	
	@Transactional
	public void addUser(User user) {
		userDao.addUser(user);
	}

	@Override
	public List<User> selUser() {
		return userDao.selUser();
	}

}
