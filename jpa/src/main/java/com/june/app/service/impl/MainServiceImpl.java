package com.june.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.june.app.model.Board;
import com.june.app.repository.MainRepository;
import com.june.app.service.MainService;

@Service
public class MainServiceImpl implements MainService {

	@Autowired
	private MainRepository mainRepository;

	@Override
	@Transactional(readOnly = true)
	public Board boardLast(Integer bbsId) throws DataAccessException {
		return mainRepository.boardLast(bbsId);
	}

}
