package com.skilldistillery.jpachorechart.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Chore {

	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 @Column(name = "id")
	 	private int id;

	    private String title;

	    private String description;

	    @Column(name = "room")
	    private String room;
	    
	    @Column(name = "frequency_weekday")
	    private String frequencyWeekday;

	    @Column(name = "difficulty_ranking")
	    private String difficultyRanking;
	    
	    private String tool;

		private String instructions;

	    @Column(name = "additional_information")
	    private String additionalInformation;
	    
	    public Chore() {
	    	
	    }

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public String getRoom() {
			return room;
		}

		public void setRoom(String room) {
			this.room = room;
		}

		public String getFrequencyWeekday() {
			return frequencyWeekday;
		}

		public void setFrequencyWeekday(String frequencyWeekday) {
			this.frequencyWeekday = frequencyWeekday;
		}

		public String getDifficultyRanking() {
			return difficultyRanking;
		}

		public void setDifficultyRanking(String difficultyRanking) {
			this.difficultyRanking = difficultyRanking;
		}

		public String getTool() {
			return tool;
		}

		public void setTool(String tool) {
			this.tool = tool;
		}

		public String getInstructions() {
			return instructions;
		}

		public void setInstructions(String instructions) {
			this.instructions = instructions;
		}

		public String getAdditionalInformation() {
			return additionalInformation;
		}

		public void setAdditionalInformation(String additionalInformation) {
			this.additionalInformation = additionalInformation;
		}

		@Override
		public String toString() {
			return "Chore [id=" + id + ", title=" + title + ", description=" + description + ", room=" + room
					+ ", frequencyWeekday=" + frequencyWeekday + ", difficultyRanking=" + difficultyRanking + ", tool="
					+ tool + ", instructions=" + instructions + ", additionalInformation=" + additionalInformation
					+ "]";
		}

}