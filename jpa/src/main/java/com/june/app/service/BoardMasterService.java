package com.june.app.service;

import org.springframework.dao.DataAccessException;

import com.june.app.model.BoardMaster;

public interface BoardMasterService {

	BoardMaster getboardMaster(Integer bbsId) throws DataAccessException;

}
