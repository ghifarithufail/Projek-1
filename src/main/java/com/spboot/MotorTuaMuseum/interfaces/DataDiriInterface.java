/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.MotorTuaMuseum.interfaces;

import com.spboot.MotorTuaMuseum.models.DataDiri;
import java.util.List;

/**
 *
 * @author Asus
 */
public interface DataDiriInterface {
    List<DataDiri> getAll();
    void store(DataDiri data_diri);
}
