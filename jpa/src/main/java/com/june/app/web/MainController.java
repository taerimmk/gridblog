package com.june.app.web;

import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.june.app.model.Board;
import com.june.app.service.MainService;

@Controller
public class MainController extends CommonController {
	
	@Autowired
	private MainService mainService;
	/**
	 * 메인 페이지
	 */
	@RequestMapping(value = {"/main","/"}, method = RequestMethod.GET)
	public String boardList(Locale locale, Map<String, Object> model) {
		int bbsId = 1;
		Board board = mainService.boardLast(bbsId);
		model.put("board", board);
		return "main/main";

	}
	@RequestMapping(value = "/sub", method = RequestMethod.GET)
	public String sub(Locale locale, Map<String, Object> model) {

		return "main/main";

	}

}
