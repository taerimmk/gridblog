package com.june.app.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.june.app.model.UserInfo;
import com.june.app.repository.UserRepository;
import com.june.app.service.UserService;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
    private UserRepository userRepository;
    
    @Override
    @Transactional(readOnly = true)
    public UserInfo getUser(String userId) throws DataAccessException {
        return userRepository.getUser(userId);
    }


}
