package com.june.app.web;

import java.util.Locale;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController extends CommonController {

	/**
	 * 메인 페이지
	 */
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String boardList(Locale locale, Map<String, Object> model) {

		return "main/main";

	}
	@RequestMapping(value = "/sub", method = RequestMethod.GET)
	public String sub(Locale locale, Map<String, Object> model) {

		return "main/main";

	}

}
