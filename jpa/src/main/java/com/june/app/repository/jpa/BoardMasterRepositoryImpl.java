package com.june.app.repository.jpa;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import com.june.app.model.BoardMaster;
import com.june.app.repository.BoardMasterRepository;

@Repository
public class BoardMasterRepositoryImpl implements BoardMasterRepository {

    @PersistenceContext
    private EntityManager em;
    
    
    //@Cacheable(value = "boardMaster")
    @Override
	public BoardMaster getboardMaster(Integer bbsId) {
        Query query = this.em.createQuery("SELECT boardMaster FROM BoardMaster boardMaster WHERE boardMaster.id =:id");
        query.setParameter("id", bbsId);
        return (BoardMaster) query.getSingleResult();
    }
    
 
}
