package com.june.app.repository.jpa;

import java.util.Collection;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.june.app.model.Board;
import com.june.app.repository.BoardRepository;

@Repository
public class BoardRepositoryImpl implements BoardRepository {
	private static final Logger logger = LoggerFactory
			.getLogger(BoardRepository.class);
	@PersistenceContext
	private EntityManager em;

	@SuppressWarnings("unchecked")
	public Collection<Board> boardList(Integer bbsId) {
		Query query = this.em
				.createQuery("SELECT board FROM Board board left join fetch board.userInfoReg left join fetch board.userInfoUpt WHERE board.bbsId =:bbsId");
		query.setParameter("bbsId", bbsId);
		return query.getResultList();
	}

	@Override
	public long boardListCnt(Integer bbsId) {
		Query query = this.em
				.createQuery("SELECT count(board) FROM Board board WHERE board.bbsId =:bbsId");
		query.setParameter("bbsId", bbsId);
		return (long) query.getSingleResult();
	}

	@Override
	public Board findBoardById(int id) {
		// using 'join fetch' because a single query should load both owners and
		// pets
		// using 'left join fetch' because it might happen that an owner does
		// not have pets yet
		Query query = this.em
				.createQuery("SELECT board FROM Board board left join fetch board.userInfoReg left join fetch board.userInfoUpt WHERE board.id =:id");
		query.setParameter("id", id);
		return (Board) query.getSingleResult();
	}

	@Override
	public void saveBoard(Board board) {
		if (board.getId() == null) {
			this.em.persist(board);
		} else {
			this.em.merge(board);
		}
	}

	@Override
	@SuppressWarnings("unchecked")
	public Collection<Board> boardListObj(Board vo) {
		String queryString = "SELECT board FROM Board board left join fetch board.userInfoReg left join fetch board.userInfoUpt WHERE board.useAt ='Y'";
		int bbsId = vo.getBbsId();
		if (bbsId > 0) {
			queryString += "and board.bbsId =:bbsId";
		}
		Query query = this.em.createQuery(queryString);
		if (bbsId > 0) {
			query.setParameter("bbsId", bbsId);
		}
		int pageSize = vo.getPageSize();
		int pageNumber = (int) vo.getPageIndex();
		query.setFirstResult((pageNumber - 1) * pageSize);
		query.setMaxResults(pageSize);
		return query.getResultList();
	}
	
	@Override
    public long boardListObjCnt(Board vo) {
    	
		String queryString = "SELECT count(board) FROM Board board WHERE board.useAt ='Y'";
		int bbsId = vo.getBbsId();
		if (bbsId > 0) {
			queryString += "and board.bbsId =:bbsId";
		}
		Query query = this.em.createQuery(queryString);
		if (bbsId > 0) {
			query.setParameter("bbsId", bbsId);
		}
        return (long) query.getSingleResult();

    }

}
