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

    %>
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
          <li class="nav-item active"><a href="index.html" class="nav-link">Home</a></li>
          <li class="nav-item"><a href="rooms.html" class="nav-link">Rooms</a></li>
          <li class="nav-item"><a href="restaurant.html" class="nav-link">Restaurant</a></li>
          <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
          <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>
          <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>
          <li class="nav-item"><a href="contact.html" class="nav-link <%%>"></a><%out.println(lgnUserName);%></li>
          <li class="nav-item"><a href="login.html" class="nav-link btn-login" id="btn-login"><%out.println(loginTag);%></a></li>
        </ul>
      </div>
    </div>
  </nav>
    </body>
</html>
