/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.MotorTuaMuseum.services;

import com.spboot.MotorTuaMuseum.interfaces.DataDiriInterface;
import com.spboot.MotorTuaMuseum.models.DataDiri;
import com.spboot.MotorTuaMuseum.repositories.DataDiriRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Asus
 */
@Service
public class DataDiriService implements DataDiriInterface {

    @Autowired
    private DataDiriRepository data_diriRepository;
    
    @Override
    public List<DataDiri> getAll() {
        return data_diriRepository.findAll();
    }

    @Override
    public void store(DataDiri data_diri) {
        this.data_diriRepository.save(data_diri);
    }
}
