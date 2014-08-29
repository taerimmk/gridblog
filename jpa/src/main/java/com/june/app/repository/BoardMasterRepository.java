package com.june.app.repository;

import org.springframework.dao.DataAccessException;

import com.june.app.model.BoardMaster;

public interface BoardMasterRepository {

	BoardMaster getboardMaster(Integer bbdId) throws DataAccessException;

}
