package com.june.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.june.app.model.BoardMaster;
import com.june.app.repository.BoardMasterRepository;
import com.june.app.service.BoardMasterService;


@Service
public class BoardMasterServiceImpl implements BoardMasterService {

	@Autowired
    private BoardMasterRepository boardMasterRepository;
    
    @Override
    @Transactional(readOnly = true)
    public BoardMaster getboardMaster(Integer bbsId) throws DataAccessException {
        return boardMasterRepository.getboardMaster(bbsId);
    }
 


}
