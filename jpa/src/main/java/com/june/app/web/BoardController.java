package com.june.app.web;

import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.june.app.model.Board;
import com.june.app.model.BoardMaster;
import com.june.app.model.Login;
import com.june.app.service.BoardMasterService;
import com.june.app.service.BoardService;

@Controller
@SessionAttributes(types = Board.class)
public class BoardController extends CommonController {

	@Autowired
	private BoardService boardService;

	@Autowired
	private BoardMasterService boardMasterService;

	/**
	 * 게시판 리스트
	 */
	@RequestMapping(value = "/bbs/{bbsId}/list/{pageIndex}", method = RequestMethod.GET)
	public String boardList(Board board, Locale locale,
			@PathVariable int bbsId, @PathVariable int pageIndex,
			BindingResult result, Map<String, Object> model,
			HttpServletRequest request) {

		Login logininfo = (Login) request.getSession()
				.getAttribute("loginInfo");
		logger.debug("========] logininfo [===== {}", logininfo);
		/** 페이지당 보여주는 게시물 수 */
		board.setPageSize(9);
		/** 현재 페이지 */
		board.setPageIndex(pageIndex);
		/** 게시판 ID */
		board.setBbsId(bbsId);

		BoardMaster bbsMst = boardMasterService.getboardMaster(bbsId);

		Map<?, ?> boardList = boardService.boardListObj(board);
		long bbsListCnt = (long) boardList.get("boardListCnt");
		board.setTotalCnt(bbsListCnt);
		/*
		 * Collection<Board> bbsList = boardService.boardList(bbsId); long
		 * bbsListCnt = boardService.boardListCnt(bbsId);
		 */
		model.put("bbsList", boardList.get("boardList"));
		model.put("bbsListCnt", bbsListCnt);
		model.put("bbsMst", bbsMst);
		// return "board/boardList"+bbsMst.getBbsTyCode();
		return "board/boardList";

	}

	/**
	 * 게시물 등록화면으로 이동
	 */
	//@Secured({"ROLE_USER", "ROLE_ADMIN"})
	@RequestMapping(value = "/bbs/{bbsId}/new", method = RequestMethod.GET)
	public String insertForm(Locale locale, @PathVariable int bbsId,
			Map<String, Object> model) {
		Board board = new Board();

		BoardMaster bbsMst = boardMasterService.getboardMaster(bbsId);
		model.put("board", board);
		model.put("bbsMst", bbsMst);
		return "board/createOrUpdateBoardForm";

	}

	/**
	 * 게시물 등록
	 */
	//@Secured({"ROLE_USER", "ROLE_ADMIN"})
	@RequestMapping(value = "/bbs/{bbsId}/new", method = RequestMethod.POST)
	public String insertProc(Locale locale, @PathVariable int bbsId,
			@Valid Board board, BindingResult result, SessionStatus status,
			HttpServletRequest request) {
		if (result.hasErrors()) {
			return "board/createOrUpdateBoardForm";
		} else {
			Login logininfo = (Login) request.getSession().getAttribute(
					"loginInfo");
			int userId = 1;
			if (!StringUtils.isEmpty(logininfo)) {
				userId = logininfo.getUserInfo().getId();
			}
			board.setBbsId(bbsId);
			board.setUseAt("Y");
			board.setRegiId(userId);
			board.setUpdtId(userId);
			this.boardService.saveBoard(board);
			status.setComplete();
			return "redirect:/bbs/" + board.getId();
		}

	}

	/**
	 * 게시물 상세
	 */
	@RequestMapping(value = "/bbs/{bbsId}/{id}")
	public ModelAndView showBoard(@PathVariable("id") int id,
			@PathVariable("bbsId") int bbsId) {
		ModelAndView mav = new ModelAndView("board/boardDetail");
		mav.addObject(this.boardService.findBoardById(id));
		return mav;
	}

	/**
	 * 게시물 수정
	 */
	//@PreAuthorize("isAuthenticated()")
	@RequestMapping(value = "/bbs/{bbsId}/{id}/edit", method = RequestMethod.GET)
	public String editBoard(@PathVariable("id") int id,
			@PathVariable("bbsId") int bbsId, Model model) {
		BoardMaster bbsMst = boardMasterService.getboardMaster(bbsId);
		Board board = this.boardService.findBoardById(id);
		logger.info("========] board [===== {}", board.isNew());
		model.addAttribute(board);
		model.addAttribute(bbsMst);
		return "board/createOrUpdateBoardForm";
	}
	
	//@Secured({"ROLE_USER", "ROLE_ADMIN"})
	@RequestMapping(value = "/bbs/{bbsId}/{id}/edit", method = RequestMethod.PUT)
	public String editBoardProc(@PathVariable("id") int id,
			@PathVariable int bbsId, @Valid Board board, BindingResult result,
			SessionStatus status, HttpServletRequest request) {

		if (result.hasErrors()) {
			return "board/createOrUpdateBoardForm";
		} else {

			Login logininfo = (Login) request.getSession().getAttribute(
					"loginInfo");
			int userId = 1;
			if (!StringUtils.isEmpty(logininfo)) {
				userId = logininfo.getUserInfo().getId();
			}
			board.setBbsId(bbsId);
			board.setId(id);
			board.setUpdtId(userId);
			this.boardService.saveBoard(board);
			status.setComplete();
			return "redirect:/bbs/{bbsId}/{id}";
		}

	}

}
