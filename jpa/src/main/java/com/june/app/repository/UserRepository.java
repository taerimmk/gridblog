package com.june.app.repository;

import org.springframework.dao.DataAccessException;

import com.june.app.model.UserInfo;
import com.june.app.model.UserRoleInfo;

public interface UserRepository {

	UserInfo getUser(String username) throws DataAccessException;

	UserInfo getUserByLogin(String username) throws DataAccessException;

	Long selectUserId(String userId) throws DataAccessException;

	UserInfo registerUser(UserInfo userInfo) throws DataAccessException;

	UserRoleInfo registerRole(UserRoleInfo vo) throws DataAccessException;

}
