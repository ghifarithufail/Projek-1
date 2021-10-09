/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.MotorTuaMuseum.controllers;

import com.spboot.MotorTuaMuseum.interfaces.RsvInterface;
import com.spboot.MotorTuaMuseum.models.Rsv;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;



/**
 *
 * @author Asus
 */
@Controller
public class MainController {

    @Autowired
    private RsvInterface rsvInterface;
    
    @GetMapping("/rsv/{id}/edit")
public String edit(@PathVariable(value = "id") long id, Model model) {
  Rsv rsv = rsvInterface.getById(id);

  model.addAttribute("rsv", rsv);
  return "edit";
}

@PostMapping("/rsv/{id}/delete")
public String delete(@PathVariable(value = "id") long id) {
  rsvInterface.delete(id);
  return "redirect:/";
}

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("list", rsvInterface.getAll());
        return "index";
    }

    @GetMapping("/rsv/create")
    public String create(Model model) {
        
        Rsv rsv = new Rsv();
        model.addAttribute("rsv", rsv);
        
        return "create";
    }

    @PostMapping("/rsv/store")
    public String store(@ModelAttribute("rsv") Rsv rsv) {
        rsvInterface.store(rsv);
        return "redirect:/";
    }
    
}
