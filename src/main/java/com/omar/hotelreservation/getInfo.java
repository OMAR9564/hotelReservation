/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.omar.hotelreservation;

import javax.persistence.Convert;

/**
 *
 */
public class getInfo {
    int id;
    String isim_soyisim;
    String email;
    String sifre;
    String isAdmin;
    String kisiSayisi;
    String girisTarihi;
    String cikisTarihi;
    String telefon;
    String odaAdi;
    int totalOdaSayisi;
    String durum;
    String reverasyonSayisi;
    int reverasyonId;
    
    int roomId = 0;
    String roomName = "";
    int roomPrice = 0;
    int roomSalePrice = 0;
    int roomSaleActive = 0;
    String roomImg = "";
    int roomSoldCount = 0;
    int roomCount = 0;
    int roomAvablive = 0;
    
    int custID = 0;
    String custName = "";
    String custMail = "";
    String custPhone = "";
    int custCount = 0;
    String gander = "";
    
    int settingId = 0;
    String hotelName = "";
    

    
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
    public void setIsAdmin(String isAdmin){
        this.isAdmin = isAdmin;
    }
    public String getIsAdmin(){
        return isAdmin;
    }
    public void setKisiSayisi(String kisiSayisi){
        this.kisiSayisi = kisiSayisi;
    }
    public String getKisiSayisi(){
        return kisiSayisi;
    }
    public void setGirisTarihi(String girisTarihi){
        this.girisTarihi = girisTarihi;
    }
    public String getGirisTarihi(){
        return girisTarihi;
    }
    public void setCikisTarihi(String cikisTarihi){
        this.cikisTarihi = cikisTarihi;
    }
    public String getCikisTarihi(){
        return cikisTarihi;
    }
    public void setTelefon(String telefon){
        this.telefon = telefon;
    }
    public String getTelefon(){
        return telefon;
    }
    public void setOdaAdi(String odaAdi){
        this.odaAdi = odaAdi;
    }
    public String getOdaAdi(){
        return odaAdi;
    }
    public void setTotalOdaSayisi(int totalOdaSayisi){
        this.totalOdaSayisi = totalOdaSayisi;
    }
    public int getTotalOdaSayisi(){
        return totalOdaSayisi;
    }
    public void setDurum(String durum){
        this.durum = durum;
    }
    public String getDurum(){
        return durum;
    }
    public void setReverasyonSayisi(String reverasyonSayisi){
        this.reverasyonSayisi = reverasyonSayisi;
    }
    public String getReverasyonSayisi(){
        return reverasyonSayisi;
    }
    public void setReverasyonId(int reverasyonId){
        this.reverasyonId = (reverasyonId);
    }
    public int getReverasyonId(){
        return reverasyonId;
    }
    public void setRoomId(int roomId){
        this.roomId = roomId;
    }
    public int getRoomId(){
        return roomId;
    }
    public void setRoomName(String roomName){
        this.roomName = roomName;
    }
    public String getRoomName(){
        return roomName;
    }
    public void setRoomPrice(int roomPrice){
        this.roomPrice = roomPrice;
    }
    public int getRoomPrice(){
        return roomPrice;
    }
    public void setRoomImg(String roomImg){
        this.roomImg = roomImg;
    }
    public String getRoomImg(){
        return roomImg;
    }
    public void setRoomSoldCount(int roomSoldCount){
        this.roomSoldCount = roomSoldCount;
    }
    public int getRoomSoldCount(){
        return roomSoldCount;
    }
    public void setRoomCount(int roomCount){
        this.roomCount = roomCount;
    }
    public int getRoomCount(){
        return roomCount;
    }
    public void setCustId(int custID){
        this.custID = custID;
    }
    public int getCustId(){
        return custID;
    }
    public void setCustName(String custName){
        this.custName = custName;
    }
    public String getCustName(){
        return custName;
    }
    public void setCustMail(String custMail){
        this.custMail = custMail;
    }
    public String getCustMail(){
        return custMail;
    }
    public void setCustPhone(String custPhone){
        this.custPhone = custPhone;
    }
    public String getCustPhone(){
        return custPhone;
    }
    public void setCustCount(int custCount){
        this.custCount = custCount;
    }
    public int getCustCount(){
        return custCount;
    }
    public void setGander(String custCount){
        this.gander = gander;
    }
    public String getGander(){
        return gander;
    }
    public void setRoomSalePrice(int roomSalePrice){
        this.roomSalePrice = roomSalePrice;
    }
    public int getRoomSalePrice(){
        return roomSalePrice;
    }
    public void setRoomAvabilve(int roomAvablive){
        this.roomAvablive = roomAvablive;
    }
    public int getRoomAvabilve(){
        return roomAvablive;
    }
    public void setSettingId(int settingId){
        this.settingId = settingId;
    }
    public int getSettingId(){
        return settingId;
    }
    public void setHotelName(String hotelName){
        this.hotelName = hotelName;
    }
    public String getHotelName(){
        return hotelName;
    }
    public void setRoomSaleActive(int roomSaleActive){
        this.roomSaleActive = roomSaleActive;
    }
    public int getRoomSaleActive(){
        return roomSaleActive;
    }
}
