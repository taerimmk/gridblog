package com.june.app.repository.jpa;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.june.app.model.Board;
import com.june.app.repository.BoardRepository;
import com.june.app.repository.MainRepository;

@Repository
public class MainRepositoryImpl implements MainRepository {
	private static final Logger logger = LoggerFactory
			.getLogger(BoardRepository.class);
	@PersistenceContext
	private EntityManager em;

	public Board boardLast(Integer bbsId) {
		Query query = this.em
				.createQuery("SELECT board FROM Board board left join fetch board.userInfoReg left join fetch board.userInfoUpt WHERE board.bbsId =:bbsId order by board.regiDate desc");
		query.setParameter("bbsId", bbsId);
		return (Board) query.setMaxResults(1).getSingleResult();
	}


}
