package com.june.app.repository;

import org.springframework.dao.DataAccessException;

import com.june.app.model.UserInfo;

public interface UserRepository {

    UserInfo getUser(String username) throws DataAccessException;
    UserInfo getUserByLogin(String username) throws DataAccessException;
  
    

}
