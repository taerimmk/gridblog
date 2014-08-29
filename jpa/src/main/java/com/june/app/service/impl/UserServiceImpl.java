package com.june.app.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.june.app.model.UserInfo;
import com.june.app.model.UserRoleInfo;
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

	@Override
	@Transactional(readOnly = true)
	public Long selectUserId(String userId) throws DataAccessException {
		return userRepository.selectUserId(userId);
	}

	@Override
	@Transactional(readOnly = true)
	public UserInfo registerUser(UserInfo userInfo) throws DataAccessException {

		userInfo.setStatus("A");
		String userPass = userInfo.getPassword();
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(userPass);
		userInfo.setPassword(hashedPassword);
		UserInfo userInfoResult = userRepository.registerUser(userInfo);

		UserRoleInfo userRoleInfo = new UserRoleInfo();
		userRoleInfo.setRole(2);
		userRoleInfo.setUser(userInfoResult.getId());
		userRoleInfo.setRegiDate(new Date());
		userRepository.registerRole(userRoleInfo);
		return userInfoResult;

	}
}
