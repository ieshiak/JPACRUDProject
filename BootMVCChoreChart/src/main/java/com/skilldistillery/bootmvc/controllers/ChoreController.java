package com.skilldistillery.bootmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
        model.addAttribute("choreAdded", false); // Initialize choreAdded attribute
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
                                     @ModelAttribute("newChore") Chore newChore,
                                     Model model) {
        model.addAttribute("choreAdded", choreAdded);
        model.addAttribute("newChore", newChore);
        
        System.out.println("choreAdded: " + choreAdded);
        System.out.println("newChore: " + newChore);

        return "chore/add";
    }
}


//    @GetMapping("/edit/{id}")
//    public String editChoreForm(@PathVariable int id, Model model) {
//        Chore chore = choreDAO.findById(id);
//        model.addAttribute("chore", chore);
//        return "chore/edit";
//    }
//
//    @PostMapping("/edit/{id}")
//    public String editChore(@PathVariable int id, @ModelAttribute Chore chore) {
//        chore.setId(id);
//        choreDAO.updateChore(chore);
//        return "redirect:/choreList";
//    }
//
//    @GetMapping("/delete/{id}")
//    public String deleteChore(@PathVariable int id) {
//        choreDAO.deleteChore(id);
//        return "redirect:/choreList";
//    }
//
//}