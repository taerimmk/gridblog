package com.june.app.web;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory
			.getLogger(LoginController.class);

	@RequestMapping(value = "/user/welcome", method = RequestMethod.GET)
	public String printWelcomeUser() {
		return "hello";
	}

	@RequestMapping(value = "/admin/welcome", method = RequestMethod.GET)
	public String printWelcomeAdmin() {
		return "admin";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String getLoginPage(Model model,
			@RequestParam(value = "fail", required = false, defaultValue="0") String fail) {
		model.addAttribute("fail", fail);
		return "login/login";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String getHomePage(Model model) {
		return "hello";
	}

	@RequestMapping(value = "/accessdenied", method = RequestMethod.GET)
	public String getFailurePage(Model model) {
		return "login/failure";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String getLogoutPage(Model model, HttpServletRequest req) {
		req.getSession().invalidate();
		return "logout";
	}

}
