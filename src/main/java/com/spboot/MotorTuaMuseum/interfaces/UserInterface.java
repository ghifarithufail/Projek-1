/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.MotorTuaMuseum.interfaces;

import com.spboot.MotorTuaMuseum.models.User;

/**
 *
 * @author bungaaaph
 *
 */
public interface UserInterface {
    User auth(String email, String password) throws Exception;

    public void register(User user);

}
