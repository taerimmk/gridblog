package com.june.app.service;

import java.util.Collection;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.june.app.model.Board;

public interface BoardService {

	Collection<Board> boardList(Integer bbsId) throws DataAccessException;

	long boardListCnt(Integer bbsId) throws DataAccessException;

	void saveBoard(Board board) throws DataAccessException;
	
	Board findBoardById(int id) throws DataAccessException;
	
	public Map<?,?> boardListObj(Board vo) throws DataAccessException;
}
