package com.june.app.service.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.june.app.model.Board;
import com.june.app.repository.BoardRepository;
import com.june.app.service.BoardService;


@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
    private BoardRepository boardRepository;
    
    @Override
    @Transactional(readOnly = true)
    public Collection<Board> boardList(Integer bbsId) throws DataAccessException {
        return boardRepository.boardList(bbsId);
    }
    
    @Override
    @Transactional(readOnly = true)
    public long boardListCnt(Integer bbsId) throws DataAccessException {
        return boardRepository.boardListCnt(bbsId);
    }

    @Override
    @Transactional
    public void saveBoard(Board board) throws DataAccessException {
        boardRepository.saveBoard(board);
    }
    
    @Override
    @Transactional(readOnly = true)
    public Board findBoardById(int id) throws DataAccessException {
    	return boardRepository.findBoardById(id);
    }
    
    @Override
	@Transactional(readOnly = true)
	public Map<?,?> boardListObj(Board vo) throws DataAccessException {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("boardList", boardRepository.boardListObj(vo));
		map.put("boardListCnt", boardRepository.boardListObjCnt(vo));
		return map;
	}
}
