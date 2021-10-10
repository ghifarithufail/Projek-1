/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.MotorTuaMuseum.interfaces;

import com.spboot.MotorTuaMuseum.models.Data_diri;
import java.util.List;

/**
 *
 * @author Asus
 */
public interface Data_diriInterface {
    List<Data_diri> getAll();
    void store(Data_diri data_diri);
}
