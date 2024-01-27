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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
        return "chore/add";
    }

    @PostMapping("/add")
    public String addChore(@ModelAttribute Chore chore, Model model) {
        Chore newChore = choreDAO.createChore(chore);
        model.addAttribute("chore", newChore);
        return "redirect:/choreList";
    }



    @GetMapping("/edit/{id}")
    public String editChoreForm(@PathVariable int id, Model model) {
        Chore chore = choreDAO.findById(id);
        model.addAttribute("chore", chore);
        return "chore/edit";
    }

    @PostMapping("/edit/{id}")
    public String editChore(@PathVariable int id, @ModelAttribute Chore chore) {
        chore.setId(id);
        choreDAO.updateChore(chore);
        return "redirect:/choreList";
    }

    @GetMapping("/delete/{id}")
    public String deleteChore(@PathVariable int id) {
        choreDAO.deleteChore(id);
        return "redirect:/choreList";
    }

}