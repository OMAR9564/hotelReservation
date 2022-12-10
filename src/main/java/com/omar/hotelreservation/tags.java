/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.omar.hotelreservation;

/**
 *
 * @author omerfaruk
 */
public class tags {
    private static String loginTag = "Login";
    private static String lgnUserName;
    
    public static void setLoginTag(String _loginTag){
        loginTag = _loginTag;
    }
    public static String getLoginTag(){
        return loginTag;
    }
    
    public static void setLgnUserName(String _lgnUserName){
        lgnUserName = _lgnUserName;
    }
    public static String getLgnUserName(){
        return lgnUserName;
    }
}
