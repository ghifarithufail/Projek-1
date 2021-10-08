/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.MotorTuaMuseum.interfaces;

import com.spboot.MotorTuaMuseum.models.Rsv;
import java.util.List;

/**
 *
 * @author Asus
 */
public interface RsvInterface {
    List<Rsv> getAll();
    void store(Rsv rsv);
    Rsv getById(long id);
    void delete(long id);
}

