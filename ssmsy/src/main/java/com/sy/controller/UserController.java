package com.sy.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sy.domain.User;
import com.sy.service.UserService;


@Controller
@RequestMapping(value = "user")
public class UserController {
	@Autowired
	private UserService userService;

	@RequestMapping("addUser.do")
	public String addUser(User user) {
		userService.addUser(user);
		return "/login";
	}
	@RequestMapping("selUser.do")
	public void selUser(HttpServletResponse response,User user) throws IOException{
		System.out.println(user.getName());
		response.setContentType("application/x-json");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		ArrayList<User> aList = (ArrayList<User>) userService.selUser();
		JSONArray jsonArray = new JSONArray();
		jsonArray.add(aList);
		out.write(jsonArray.toString());
	}

}
