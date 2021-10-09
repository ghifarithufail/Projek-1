/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.MotorTuaMuseum.controllers;

import com.spboot.MotorTuaMuseum.interfaces.DataDiriInterface;
import com.spboot.MotorTuaMuseum.models.DataDiri;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Asus
 */
@Controller
public class DataDiriController {

    @Autowired
    private DataDiriInterface data_diriInterface;

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("list", data_diriInterface.getAll());
        return "index";
    }

    @GetMapping("/data_diri/create")
    public String create(Model model) {
        
        DataDiri data_diri = new DataDiri();
        model.addAttribute("data_diri", data_diri);
        
        return "create";
    }

    @PostMapping("/data_diri/store")
    public String store(@ModelAttribute("data_diri") DataDiri data_diri) {
        data_diriInterface.store(data_diri);
        return "redirect:/";
    }
}