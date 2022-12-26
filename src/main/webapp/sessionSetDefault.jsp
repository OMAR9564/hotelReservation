<%-- 
    Document   : sessionSetDefault
    Created on : Dec 25, 2022, 2:28:33 AM
    Author     : omerfaruk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//    private static String loginTag = "Login";
//    private static String lgnUserName = "";
//    private static String lgnUserNameCss = "disable-link";
//    private static Boolean isLogOut = false;
//    private static Boolean isLogin = false;
//    private static String loginIsValid = "hidden";
//    private static String howsLogin = "";
//    private static String isAdmin = "0";
//    private static String adminName = "";
//    private static String adminMail = "";
//    private static String whosePage = "";

    session.setAttribute("loginTag", "Login");
    session.setAttribute("lgnUserName", " ");
    session.setAttribute("lgnUserNameCss", "disable-link");
    session.setAttribute("isLogOut", "false");
    session.setAttribute("isLogin", "false");
    session.setAttribute("loginIsValid", "hidden");
    session.setAttribute("howsLogin", "");
    session.setAttribute("isAdmin", "0");
    session.setAttribute("adminName", "");
    session.setAttribute("adminMail", "");
    session.setAttribute("whosePage", "");
    session.setAttribute("readDefaultSessions", "1");
    System.out.println("sessionSetDeualt");
    response.sendRedirect("index.jsp");

%>