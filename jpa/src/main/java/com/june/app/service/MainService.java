package com.june.app.service;

import org.springframework.dao.DataAccessException;

import com.june.app.model.Board;

public interface MainService {

	Board boardLast(Integer bbsId) throws DataAccessException;

}
