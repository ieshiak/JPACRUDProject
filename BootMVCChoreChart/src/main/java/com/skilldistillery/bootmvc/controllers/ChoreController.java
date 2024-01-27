package com.skilldistillery.bootmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
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
        Chore chore = choreDAO.findById(id);

        if (chore != null) {
            model.addAttribute("chore", chore);
            return "chore/show";
        } else {
            return "redirect:/error/choreNotFound";
        }
    }
}
