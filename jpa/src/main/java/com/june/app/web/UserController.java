package com.june.app.web;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.june.app.model.UserInfo;
import com.june.app.service.UserService;


@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String userList(UserInfo userInfo, BindingResult result,
			Map<String, Object> model) {
		String userId = "admin";
		UserInfo results = userService.getUser(userId);

		model.put("results", results);
		return "board/boardList";

	}

}
