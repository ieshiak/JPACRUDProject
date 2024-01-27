package com.skilldistillery.bootmvc.data;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpachorechart.entities.Chore;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;

@Service
@Transactional
public class ChoreDAOImpl implements ChoreDAO {

    @PersistenceContext
    private EntityManager em;

	@Override
    public Chore findById(int id) {
    	Chore managed = em.find(Chore.class, id);
        return managed;
    }
    
	@Override
	public List<Chore> findAll() {
	    String jpql = "SELECT c FROM Chore c";
	    TypedQuery<Chore> query = em.createQuery(jpql, Chore.class);
	    return query.getResultList();
	}
    } 