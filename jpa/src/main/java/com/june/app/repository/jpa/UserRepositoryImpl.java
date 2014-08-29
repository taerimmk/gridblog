package com.june.app.repository.jpa;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.june.app.model.UserInfo;
import com.june.app.repository.UserRepository;

@Transactional
@Repository
public class UserRepositoryImpl implements UserRepository {
	private static final Logger logger = LoggerFactory.getLogger(UserRepositoryImpl.class);
    @PersistenceContext
    private EntityManager em;

    @Override
	public UserInfo getUser(String userId) {
		Query query = this.em.createQuery("SELECT userInfo FROM UserInfo userInfo WHERE userInfo.userId =:userId");
		query.setParameter("userId", userId);
		
		return (UserInfo) query.getSingleResult();
	}
    
    @Override
	public UserInfo getUserByLogin(String userId) {
		Query query = this.em.createQuery("SELECT userInfo FROM UserInfo userInfo left join fetch userInfo.userRoleInfos WHERE userInfo.userId =:userId");
		query.setParameter("userId", userId);
		
		return (UserInfo) query.getSingleResult();
	}

  
}
