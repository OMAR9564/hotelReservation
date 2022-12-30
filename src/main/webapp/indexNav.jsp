<%-- 
    Document   : indexNav
    Created on : Dec 10, 2022, 2:54:42 PM
    Author     : omerfaruk
--%>

<%@page import="com.omar.hotelreservation.hotelData"%>
<%@page import="com.omar.hotelreservation.mySql"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.omar.hotelreservation.getInfo"%>
<%--<%@page import="com.omar.hotelreservation.tags"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
                        System.out.println((String)session.getAttribute("readDefaultSessions")+"omeroemroemr4");
        if((String)session.getAttribute("readDefaultSessions") == null){
    session.setAttribute("loginTag", "Login");
    session.setAttribute("lgnUserName", "");
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
        }
                System.out.println((String)session.getAttribute("readDefaultSessions")+"omeroemroemr3");
        String loginTag = "";
        loginTag = (String)session.getAttribute("loginTag");
        
        String lgnUserName = "";
        lgnUserName=(String)session.getAttribute("lgnUserName");
        
        String lgnUserNameCss = "";
        lgnUserNameCss=(String)session.getAttribute("lgnUserNameCss");
        
        if(loginTag == null){
            session.setAttribute("loginTag", "Login");
            session.setAttribute("lgnUserName", "");
            session.setAttribute("lgnUserNameCss", "disable-link");
        }
        
ArrayList<getInfo> info;
mySql mysql = new mySql();
String sqlQuery = "SELECT * FROM `hotelSettings`";
info = mysql.readHotelSettings(sqlQuery);
hotelData.setHotelName(info.get(0).getHotelName());
    %>
    <!--For Cookie-->
    <%--<jsp:include page="checkPage.jsp" />--%> 
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.html"><%out.println(hotelData.getHotelName());%></a>
        <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <svg class="me-1 pb-1" xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 8 8"><path fill="gray" d="M0 1v1h8V1H0zm0 2.97v1h8v-1H0zm0 3v1h8v-1H0z"></path></svg>Menu
        </button>
      <div class="collapse navbar-collapse" id="ftco-nav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active"><a href="#home-section" class="nav-link">Home</a></li>
            <li class="nav-item"><a href="#rooms-section" class="nav-link">Rooms</a></li>
            <li class="nav-item"><a href="#restaurant-section" class="nav-link">Restaurant</a></li>
            <li class="nav-item"><a href="#about-section" class="nav-link">About</a></li>
            <li class="nav-item"><a href="#blog-section"" class="nav-link">Blog</a></li>
            <li class="nav-item"><a href="#contact-section" class="nav-link">Contact</a></li>
            <li class="nav-item <%out.println(lgnUserNameCss);%>"><a href="userPage.jsp" class="nav-link " >
                    <i class="gg-user <%out.println(lgnUserNameCss);%>">
                    </i><%out.println(lgnUserName);%></a>
            </li>
        <button class="nav-item"><a href="login.jsp" class="nav-link btn-login" id="btn-login"  ><%out.println(loginTag);%></a></button>
          
        </ul>
      </div>
    </div>
  </nav>
    </body>
    
</html>