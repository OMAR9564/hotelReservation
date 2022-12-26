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
    private static String lgnUserNameCss = "disable-link";
    private static Boolean isLogOut = false;
    private static Boolean isLogin = false;
    private static String loginIsValid = "hidden";
    private static String howsLogin = "";
    private static String isAdmin = "0";
    private static String adminName = "";
    private static String adminMail = "";
    private static String whosePage = "";
    
    
    
    public static void resetLoginTags(){
        loginTag = "Login";
        lgnUserName = "";
        lgnUserNameCss = "disable-link";
        isLogOut = false;
        isLogin = false;
        loginIsValid = "hidden";
        howsLogin = "";
        isAdmin = "0";
        adminName = "";
        adminMail = "";
        whosePage = "";

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
    
    public static void setLoginIsValid(String _loginIsValid){
        loginIsValid = _loginIsValid;
    }
    public static String getLoginIsValid(){
        return loginIsValid;
    }
    public static void setHowsLogin(String _howsLogin){
        howsLogin = _howsLogin;
    }
    public static String getHowsLogin(){
        return howsLogin;
    }
    public static void setIsAdmin(String _isAdmin){
        isAdmin = _isAdmin;
    }
    public static String getIsAdmin(){
        return isAdmin;
    }
     
    public static void setAdminName(String _adminName){
        adminName = _adminName;
    }
    public static String getAdminName(){
        return adminName;
    }
    public static void setAdminMail(String _adminMail){
        adminMail = _adminMail;
    }
    public static String getAdminMail(){
        return adminMail;
    }
    public static void setWhosePage(String _whosePage){
        whosePage = _whosePage;
    }
    public static String getWhosePage(){
        return whosePage;
    } 

    
    
}
