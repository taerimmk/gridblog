package com.june.app.repository;

import org.springframework.dao.DataAccessException;

import com.june.app.model.Board;

public interface MainRepository {

	Board boardLast(Integer bbdId) throws DataAccessException;

}
