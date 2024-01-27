package com.skilldistillery.bootmvc.data;

import java.util.List;

import com.skilldistillery.jpachorechart.entities.Chore;

public interface ChoreDAO {

	Chore findById(int choreid);

	List<Chore> findAll();
	
	Chore createChore(Chore chore);

    Chore updateChore(Chore chore);

    boolean deleteChore(int id);

}
