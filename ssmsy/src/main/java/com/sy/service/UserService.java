package com.sy.service;

import java.util.List;

import com.sy.domain.User;

public interface UserService {
	public void addUser(User user);
	public List<User> selUser();
}
