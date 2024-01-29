package com.skilldistillery.bootmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.bootmvc.data.ChoreDAO;
import com.skilldistillery.jpachorechart.entities.Chore;

@Controller

public class ChoreController {
	@Autowired
	private ChoreDAO choreDAO;

	@RequestMapping(path = { "", "/", "home.do" })
	public String index(Model model) {
		List<Chore> chores = choreDAO.findAll();
		model.addAttribute("chores", chores);
		return "home";
	}

	@RequestMapping("/choreList")
	public String showChoreList(Model model) {
		List<Chore> chores = choreDAO.findAll();
		model.addAttribute("chores", chores);
		return "choreList";
	}

	@GetMapping(path = "getChore.do", params = "choreId")
	public String getChoreById(@RequestParam("choreId") int id, Model model) {
		System.out.println("getChoreById method called with ID: " + id);

		Chore chore = choreDAO.findById(id);

		if (chore != null) {
			model.addAttribute("chore", chore);
			return "chore/show";
		} else {
			System.out.println("Chore not found with ID: " + id);
			return "chore/notFound";
		}
	}

	@GetMapping("/add")
	public String addChoreForm(Model model) {
		model.addAttribute("chore", new Chore());
		model.addAttribute("choreAdded", false);
		return "chore/add";
	}

	@PostMapping("/addChore")
	public String addChore(Chore chore, Model model) {
		try {
			Chore newChore = choreDAO.createChore(chore);

			if (newChore != null) {
				model.addAttribute("choreAdded", true);
				model.addAttribute("newChore", newChore);
			} else {
				model.addAttribute("choreAdded", false);
			}

			return "chore/add";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("error", "An unexpected error occurred.");
			return "error";
		}
	}

	@GetMapping("/choreAdded")
	public String showChoreAddedPage(@ModelAttribute("choreAdded") Boolean choreAdded,
			@ModelAttribute("newChore") Chore newChore, Model model) {
		model.addAttribute("choreAdded", choreAdded);
		model.addAttribute("newChore", newChore);

		System.out.println("choreAdded: " + choreAdded);
		System.out.println("newChore: " + newChore);

		return "chore/addSuccess";
	}

	@GetMapping("/edit/{id}")
	public String editChoreForm(@PathVariable(name = "id") int id, Model model) {
		try {
			Chore chore = choreDAO.findById(id);

			if (chore != null) {
				model.addAttribute("editedChore", chore);

				System.out.println("Chore Title: " + chore.getTitle());
				System.out.println("Chore Room: " + chore.getRoom());

				return "chore/edit";
			} else {
				System.out.println("Chore not found with ID: " + id);
				return "chore/notFound";
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Exception occurred in editChoreForm: " + e.getMessage());
			return "error";
		}
	}

	@PostMapping("/submitEditChore")
	public String submitEditChore(@ModelAttribute Chore updatedChore, Model model) {
		try {
			System.out.println("Submit Edit Chore method called");

			int choreId = updatedChore.getId();
			System.out.println("Chore ID being updated: " + choreId);

			Chore existingChore = choreDAO.findById(choreId);

			if (existingChore != null) {
				System.out.println("Existing Chore found with ID: " + existingChore.getId());
				existingChore.setTitle(updatedChore.getTitle());
				existingChore.setRoom(updatedChore.getRoom());
				existingChore.setDescription(updatedChore.getDescription());
				existingChore.setFrequencyWeekday(updatedChore.getFrequencyWeekday());
				existingChore.setDifficultyRanking(updatedChore.getDifficultyRanking());
				existingChore.setTool(updatedChore.getTool());
				existingChore.setInstructions(updatedChore.getInstructions());
				existingChore.setAdditionalInformation(updatedChore.getAdditionalInformation());

				Chore editedChore = choreDAO.updateChore(existingChore);

				if (editedChore != null) {
					System.out.println("Chore successfully edited. Setting choreEdited attribute to true.");
					model.addAttribute("choreEdited", true);
					model.addAttribute("editedChore", editedChore);
				} else {
					System.out.println("Chore edit failed. Setting choreEdited attribute to false.");
					model.addAttribute("choreEdited", false);
				}
			} else {
				System.out.println("Chore not found in the database. Setting choreEdited attribute to false.");
				model.addAttribute("choreEdited", false);
			}

			return "chore/editSuccess";
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Exception occurred during chore edit. Setting choreEdited attribute to false.");
			model.addAttribute("choreEdited", false);
			return "chore/editSuccess";
		}
	}

	@GetMapping("/delete/{id}")
	public String deleteChoreForm(@PathVariable(name = "id") int id, Model model) {
		try {
			Chore choreToDelete = choreDAO.findById(id);

			if (choreToDelete != null) {
				model.addAttribute("deleteChore", choreToDelete);

				System.out.println("Chore Title: " + choreToDelete.getTitle());
				System.out.println("Chore Room: " + choreToDelete.getRoom());

				return "chore/delete";
			} else {
				System.out.println("Chore not found with ID: " + id);
				return "chore/notFound";
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Exception occurred in deleteChoreForm: " + e.getMessage());
			return "error";
		}
	}

	@PostMapping("/deleteChore")
	public String deleteChore(@RequestParam("id") int id, Model model) {
		try {
			boolean isDeleted = choreDAO.destroy(id);

			if (isDeleted) {
				model.addAttribute("choreDeleted", true);
				model.addAttribute("deleteChore", choreDAO.findById(id));
			} else {
				model.addAttribute("choreDeleted", false);
				model.addAttribute("errorMessage", "Chore not found or deletion failed.");
			}

			return "chore/deleteSuccess";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("choreDeleted", false);
			model.addAttribute("errorMessage", "Exception occurred during chore deletion: " + e.getMessage());

			return "chore/error";
		}
	}
}