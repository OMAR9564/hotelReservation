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
    private static String lgnUserName = "";
    private static String lgnUserNameCss = "hidden";
    private static Boolean isLogOut = false;
    private static Boolean isLogin = false;
    
    
    public static void resetLoginTags(){
        loginTag = "Login";
        lgnUserName = "";
        lgnUserNameCss = "hidden";

    }
    public static void setLoginTag(String _loginTag){
        loginTag = _loginTag;
    }
    public static String getLoginTag(){
        return loginTag;
    }
    
    public static void setLgnUserName(String _lgnUserName){
//        if(_lgnUserName.equals("null")){
//            lgnUserName = "";
//        }
        lgnUserName = _lgnUserName;
    }
    public static String getLgnUserName(){
        
        return lgnUserName;
    }
    
    public static void setLgnUserNameCss(String _lgnUserNameCss){
        lgnUserNameCss = _lgnUserNameCss;
    }
    public static String getLgnUserNameCss(){
        return lgnUserNameCss;
    }

    public static void setIsLogOut(Boolean _isLogOut){
        isLogOut = _isLogOut;
    }
    public static Boolean getIsLogOut(){
        return isLogOut;
    }
    
    public static void setIsLogin(Boolean _isLogin){
        isLogin = _isLogin;
    }
    public static Boolean getIsLogin(){
        return isLogin;
    }

    
    
}
