<%-- 
    Document   : indexNav
    Created on : Dec 10, 2022, 2:54:42 PM
    Author     : omerfaruk
--%>

<%@page import="com.omar.hotelreservation.tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%

        String loginTag = tags.getLoginTag();
        
        String lgnUserName = tags.getLgnUserName();
        
        String lgnUserNameCss = tags.getLgnUserNameCss();

    %>
    <!--For Cookie-->
    <%--<jsp:include page="checkPage.jsp" />--%> 
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
      <a class="navbar-brand" href="index.html">Rihana</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="oi oi-menu"></span> Menu
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
