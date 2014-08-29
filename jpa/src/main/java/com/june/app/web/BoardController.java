package com.june.app.web;

import java.util.Locale;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.june.app.model.Board;
import com.june.app.model.BoardMaster;
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
			BindingResult result, Map<String, Object> model) {

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
		/*Collection<Board> bbsList = boardService.boardList(bbsId);
		long bbsListCnt = boardService.boardListCnt(bbsId);*/
		model.put("bbsList", boardList.get("boardList"));
		model.put("bbsListCnt", bbsListCnt);
		model.put("bbsMst", bbsMst);
		// return "board/boardList"+bbsMst.getBbsTyCode();
		return "board/boardList";

	}

	/**
	 * 게시물 등록화면으로 이동
	 */
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
	@RequestMapping(value = "/bbs/{bbsId}/new", method = RequestMethod.POST)
	public String insertProc(Locale locale, @PathVariable int bbsId,
			@Valid Board board, BindingResult result, SessionStatus status) {
		if (result.hasErrors()) {
			return "board/createOrUpdateBoardForm";
		} else {
			board.setBbsId(bbsId);
			board.setUseAt("Y");
			board.setRegiId(1);
			board.setUpdtId(2);
			this.boardService.saveBoard(board);
			status.setComplete();
			return "redirect:/bbs/" + board.getId();
		}

	}

	/**
	 * 게시물 상세
	 */
	@RequestMapping("/bbs/{id}")
	public ModelAndView showBoard(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView("board/boardDetail");
		mav.addObject(this.boardService.findBoardById(id));
		return mav;
	}

}
