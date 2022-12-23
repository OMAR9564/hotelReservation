/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.omar.hotelreservation;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.temporal.ChronoField;

/**
 *
 * @author omerfaruk
 */
public class hotelData {
    private static int reverasionCount = 0;
    private static int reverasyonId = 0;
    private static String customerName = "";
    private static String roomName = "";
    private static String girisTarihi = "";
    private static String cikisTarihi = "";
    private static String reversayonStatus = "";
    
    private static int roomId = 0;
    private static int roomPrice = 0;
    private static int roomSalePrice = 0;
    private static int roomSaleActive = 0;
    private static String roomImg = "";
    private static int roomSoldCount = 0;
    private static int roomCount = 0;
    private static int roomAvabilve = 0;
    private static int roomTotalCount = 0;
    
    private static int custID = 0;
    private static String custName = "";
    private static String custMail = "";
    private static String custPhone = "";
    private static int custCount = 0;
    private static String gander = "";
    
    private static String adminName = "";
    private static String adminMail = "";

    private static int settingId  = 0;
    private static String hotelName  = "";
    

    
    
    public static void setReverasionCount(int _reverasionCount){
        reverasionCount = _reverasionCount;
    }
    public static int getReverasionCount(){
        return reverasionCount;
    }
    public static void setRoomTotalCount(int _roomTotalCount){
        roomTotalCount = _roomTotalCount;
    }
    public static int getRoomTotalCount(){
        return roomTotalCount;
    }

    public static void setReverasyonId(int _reverasyonId){
        reverasyonId = _reverasyonId;
    }
    public static int getReverasyonId(){
        return reverasyonId;
    }
    public static void setCustomerName(String _customerName){
        customerName = _customerName;
    }
    public static String getCustomerName(){
        return customerName;
    }
    public static void setRoomName(String _roomName){
        roomName = _roomName;
    }
    public static String getRoomName(){
        return roomName;
    }
    public static void setReversayonStatus(String _status){
        reversayonStatus = _status;
    }
    public static String getReversayonStatus(){
        return reversayonStatus;
    }
    public static void setRoomId(int _roomId){
        roomId = _roomId;
    }
    public static int getRoomId(){
        return roomId;
    }
    public static void setRoomPrice(int _roomPrice){
        roomPrice = _roomPrice;
    }
    public static int getRoomPrice(){
        return roomPrice;
    }
    public static void setRoomSalePrice(int _roomSalePrice){
        roomSalePrice = _roomSalePrice;
    }
    public static int getRoomSalePrice(){
        return roomSalePrice;
    }
    public static void setRoomImg(String _roomImg){
        roomImg = _roomImg;
    }
    public static String getRoomImg(){
        return roomImg;
    }
    public static void setRoomSoldCount(int _roomSoldCount){
        roomSoldCount = _roomSoldCount;
    }
    public static int getRoomSoldCount(){
        return roomSoldCount;
    }
    public static void setRoomCount(int _roomCount){
        roomCount = _roomCount;
    }
    public static int getRoomCount(){
        return roomCount;
    }
    public static void setRoomAvabilve(int _roomAvabilve){
        roomAvabilve = _roomAvabilve;
    }
    public static int getRoomAvabilve(){
        return roomAvabilve;
    }
    public static void setCustId(int _custID){
        custID = _custID;
    }
    public static int getCustId(){
        return custID;
    }
    public static void setCustName(String _custName){
        custName = _custName;
    }
    public static String getCustName(){
        return custName;
    }
    public static void setCustMail(String _custMail){
        custMail = _custMail;
    }
    public static String getCustMail(){
        return custMail;
    }
    public static void setCustPhone(String _custPhone){
        custPhone = _custPhone;
    }
    public static String getCustPhone(){
        return custPhone;
    }
    public static void setCustCount(int _custCount){
        custCount = _custCount;
    }
    public static int getCustCount(){
        return custCount;
    }
    public static void setGirisTarihi(String _girisTarihi){
        girisTarihi = _girisTarihi;
    }
    public static String getGirisTarihi(){
        return girisTarihi;
    }
    public static void setCikisTarihi(String _cikisTarihi){
        cikisTarihi = _cikisTarihi;
    }
    public static String getCikisTarihi(){
        return cikisTarihi;
    }
    public static void setGander(String _gander){
        gander = _gander;
    }
    public static String getGander(){
        return gander;
    }
    public static void setSettingId(int _settingId){
        settingId = _settingId;
    }
    public static int getSettingId(){
        return settingId;
    }
    public static void setHotelName(String _hotelName){
        hotelName = _hotelName;
    }
    public static String getHotelName(){
        return hotelName;
    }
    public static void setRoomSaleActive(int _roomSaleActive){
        roomSaleActive = _roomSaleActive;
    }
    public static int getRoomSaleActive(){
        return roomSaleActive;
    }



    public static boolean isWeekend()
    {
        LocalDate today = LocalDate.now();
        DayOfWeek day = DayOfWeek.of(today.get(ChronoField.DAY_OF_WEEK));
        return day == DayOfWeek.SUNDAY || day == DayOfWeek.SATURDAY;
    }
}
    
    
    
    
    
    
    
}
