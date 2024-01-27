package com.skilldistillery.jpachorechart.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class ChoreTest {

	private static EntityManagerFactory emf;
    private EntityManager em;
    private Chore chore;

    @BeforeAll
    static void setUpBeforeClass() throws Exception {
        emf = Persistence.createEntityManagerFactory("ChoreChart");
    }

    @AfterAll
    static void tearDownAfterClass() throws Exception {
        emf.close();
    }

    @BeforeEach
    void setUp() throws Exception {
        em = emf.createEntityManager();
        chore = em.find(Chore.class, 1);
    }

    @AfterEach
    void tearDown() throws Exception {
    	chore = null;
        em.close();
    }

    @Test
    void test_Chore_entity_mapping() {
        assertNotNull(chore);
        assertEquals(1, chore.getId());
        assertEquals("Clean Shower", chore.getTitle());
    }
}
