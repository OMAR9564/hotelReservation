/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.omar.hotelreservation;

/**
 *
 */
public class getInfo {
    int id;
    String isim_soyisim;
    String email;
    String sifre;
    
    public void setId(int id){
        this.id = id;
    }
    public int getId(){
        return id;
    }
    
    public void setIsim_Soyisim(String isim_soyisim){
        this.isim_soyisim = isim_soyisim;
    }
    public String getIsim_Soyisim(){
        return isim_soyisim;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    public String getEmail(){
        return email;
    }
    
    public void setSifre(String sifre){
        this.sifre = sifre;
    }
    public String getSifre(){
        return sifre;
    }
}
