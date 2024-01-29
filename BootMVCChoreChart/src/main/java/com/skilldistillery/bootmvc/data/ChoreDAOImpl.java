package com.skilldistillery.bootmvc.data;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpachorechart.entities.Chore;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
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

    @Override
    public Chore createChore(Chore chore) {
        em.persist(chore);
        return chore;
    }

    @Override
    @Transactional 
    public Chore updateChore(Chore chore) {
        Chore managed = em.find(Chore.class, chore.getId());

        if (managed != null) {
            managed.setTitle(chore.getTitle());
            managed.setRoom(chore.getRoom());
            managed.setFrequencyWeekday(chore.getFrequencyWeekday());
            managed.setDifficultyRanking(chore.getDifficultyRanking());
            managed.setTool(chore.getTool());
            managed.setInstructions(chore.getInstructions());
            managed.setDescription(chore.getDescription());
            managed.setAdditionalInformation(chore.getAdditionalInformation());

            System.out.println("Chore with ID " + chore.getId() + " updated successfully.");
        } else {
            System.out.println("Chore not found with ID: " + chore.getId());
        }

        return managed;
    }

    @Override
    @Transactional
    public boolean destroy(int id) {
        Chore choreToDelete = findById(id);

        if (choreToDelete != null) {
            try {
                em.remove(choreToDelete);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return false;
    }
}
