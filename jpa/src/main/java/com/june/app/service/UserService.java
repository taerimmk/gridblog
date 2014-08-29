
package com.june.app.service;

import org.springframework.dao.DataAccessException;

import com.june.app.model.UserInfo;

public interface UserService {

	UserInfo getUser(String userId) throws DataAccessException;

}
