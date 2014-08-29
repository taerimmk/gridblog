package com.june.app.repository;

import java.util.Collection;

import org.springframework.dao.DataAccessException;

import com.june.app.model.Board;

public interface BoardRepository {

	Collection<Board> boardList(Integer bbdId) throws DataAccessException;

	long boardListCnt(Integer bbdId) throws DataAccessException;

	void saveBoard(Board board) throws DataAccessException;

	Board findBoardById(int id) throws DataAccessException;

	Collection<Board> boardListObj(Board vo) throws DataAccessException;

	long boardListObjCnt(Board vo) throws DataAccessException;
}
