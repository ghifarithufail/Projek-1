/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.MotorTuaMuseum.controllers;

import com.spboot.MotorTuaMuseum.interfaces.Data_diriInterface;
import com.spboot.MotorTuaMuseum.interfaces.RsvInterface;
import com.spboot.MotorTuaMuseum.models.Data_diri;
import com.spboot.MotorTuaMuseum.models.Rsv;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;



/**
 *
 * @author Asus
 */
@Controller
public class MainController {

    @Autowired
    private RsvInterface rsvInterface;
    
       @Autowired
    private Data_diriInterface data_diriInterface;
    
    
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

           @GetMapping("/data_diri/creates")
    public String creates(Model model){
        Data_diri data_diri = new Data_diri();
        model.addAttribute("data_diri", data_diri);
        
        return "data_diri";
    }
    
    @PostMapping("/data_diri/store")
    public String store(@ModelAttribute("data_diri")  Data_diri data_diri) {
        data_diriInterface.store(data_diri);
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
    
    @GetMapping("/gallery")
    public String gallery (Model model) {
        
        return "gallery";
    }
    
    @GetMapping("/home")
    public String home (Model model) {
        
        return "home";
    }
    
    @GetMapping("/about")
    public String about (Model model) {
        
        return "about";
    }
}
