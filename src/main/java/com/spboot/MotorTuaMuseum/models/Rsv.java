/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spboot.MotorTuaMuseum.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Asus
 */
@Entity
@Table(name="rsv")
public class Rsv {
    
     @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private long id;
    
    @Column(name="id_user")
    private int id_user;
    
    @Column(name="count")
    private String count;
    
    @Column(name="tipe_tiket")
    private String tipe_tiket;
    
    @Column(name="dateR")
    private String dateR;
    
    @Column(name="total_harga")
    private long total_harga;

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public long getId_user() {
        return id_user;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public String getCount() {
        return count;
    }
    
     public void setTipe_tiket(String tipe_tiket) {
        this.tipe_tiket = tipe_tiket;
    }

    public String getTipe_tiket() {
        return tipe_tiket;
    }
    
    public void setDateR(String dateR) {
        this.dateR = dateR;
    }

    public String getDateR() {
        return dateR;
    }

    public void setTotal_harga(long total_harga) {
        this.total_harga = total_harga;
    }

    public long getTotal_harga() {
        return total_harga;
    }
}
