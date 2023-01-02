<%@page import="com.omar.hotelreservation.getInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.omar.hotelreservation.mySql"%>
<%@page import="com.omar.hotelreservation.hotelData"%>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.mysql.fabric.jdbc.FabricMySQLConnectionProxy" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%--<%@page import="com.omar.hotelreservation.tags"%>--%>

<% try {


  if((((String)session.getAttribute("lgnUserName")).length() > 1)){
  String custName = "";
  int infoRevCount = 0;

  ArrayList<getInfo> infoRev;

  mySql mysql = new mySql();
  Class.forName("com.mysql.jdbc.Driver");
  Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup9?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup9", "9564");


    String loginTag = "Log Out";
    ArrayList<getInfo> info;


    String sqlQuery = "SELECT * FROM `customer` WHERE `id` = ?";
    String id = (String) session.getAttribute("lgnUserId");

    PreparedStatement ps2 = con.prepareStatement(sqlQuery);
    ps2.setString(1, id);
    ResultSet rls2 = ps2.executeQuery();


    info = mysql.readCustomersData(rls2);
    session.setAttribute("CustName", info.get(0).getCustName());
    session.setAttribute("CustMail", info.get(0).getCustMail());
    session.setAttribute("CustPhone", info.get(0).getCustPhone());


    custName = (String) session.getAttribute("CustName");

    String custMail = (String)session.getAttribute("CustMail");

    String sqlQueryq = "SELECT * FROM `reverasyonlar` WHERE `email` = ? ORDER BY `id` DESC";

    PreparedStatement ps3 = con.prepareStatement(sqlQueryq);
    ps3.setString(1, custMail);

    mySql mysql1 = new mySql();
    ResultSet rls3 = ps3.executeQuery();

    info = mysql1.readReversaionData(rls3);
    session.setAttribute("infRevCount", Integer.toString(info.size()));



session.setAttribute("whosePage", "userLogin");
session.setAttribute("isLogin", "false");
session.setAttribute("isLogOut", "true");



%>
<html lang="tr">
<head>
  <meta charset="utf-8">
  <META HTTP-EQUIV="Content-language" CONTENT="tr">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link rel="stylesheet" href="css/userPage.css"/>  
</head>
<body>
  <div class="main-content">
    <!-- Top navbar -->
    <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
      <div class="container-fluid">
        <!-- Brand -->
        <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" target="_blank">User Page</a>
        
        <!-- User -->
        <ul class="navbar-nav align-items-center d-none d-md-flex">
          <li class="nav-item dropdown">
            <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <div class="media align-items-center">
                <div class="media-body ml-2 d-none d-lg-block">
                    <span class="mb-0 text-sm  font-weight-bold"><%out.println((String)session.getAttribute("CustName"));%></span>
                </div>
              </div>
            </a>
          </li>
        </ul>
      </div>
    </nav>
    <!-- Header -->
    <div class="header pb-8 pt-5 pt-lg-8 d-flex align-items-center" style="min-height: 600px; background-image: url(img/xbg_1.jpg.pagespeed.ic.AclQK41gjJ.webp); background-size: cover; background-position: center top;">
      <!-- Mask -->
      <span class="mask bg-gradient-default opacity-8"></span>
      <!-- Header container -->
      <div class="container-fluid d-flex align-items-center">
        <div class="row">
          <div class="col-lg-7 col-md-10">
              <h1 class="display-2 text-white">Hello <%out.println(custName.substring(0, custName.indexOf(' ')));%></h1>
            <p class="text-white mt-0 mb-5">This is your profile page. You can see the progress you've made with your work and manage your projects or assigned tasks</p>
            <a href="index.jsp" class="btn btn-success">Ana Sayfa</a>
            <a href="login.jsp" class="btn btn-danger">Log Out</a>
          </div>
        </div>
      </div>
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--7">
      <div class="row">
        
        <div class=" order-xl-1">
          <div class="card bg-secondary shadow">
            <div class="card-header bg-white border-0">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">Profilim</h3>
                </div>
                <div class="col-4 text-right">
                  <a href="#!" class="btn btn-sm btn-primary">Düzenle</a>
                </div>
              </div>
            </div>
            <div class="card-body">
              <form>
                <h6 class="heading-small text-muted mb-4">Kullanıcı Bilgileri</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-email">Email adresi</label>
                        <input type="email" id="input-email" class="form-control form-control-alternative" placeholder="bya@example.com" value="<%out.println((String)session.getAttribute("CustMail"));%>">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-first-name">Name</label>
                        <input type="text" id="input-first-name" class="form-control form-control-alternative" placeholder="Name" value="<%out.println((String)session.getAttribute("CustName"));%>">
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group focused">
                        <label class="form-control-label" for="input-first-name">Phone</label>
                        <input type="text" id="input-first-name" class="form-control form-control-alternative" placeholder="Phone" value="<%out.println((String)session.getAttribute("CustPhone"));%>">
                      </div>
                    </div>

                  </div>
                </div>
                <hr class="my-4">
                <!-- Address -->
                <h6 class="heading-small text-muted mb-4">Reversayonlarım</h6>
                <table class="table ">
                <thead>
                <tr>
                  <th scope="col">Ad Soyad</th>
                  <th scope="col">Kişi Sayısı</th>
                  <th scope="col">Giriş Tarihi</th>
                  <th scope="col">Çıkış Tarihi</th>
                  <th scope="col">Oda</th>
                  <th scope="col">Durum</th>

                </tr>
                </thead>
                  <tbody>
                  <%
                  try {
                    for(int i = 0; i < Integer.parseInt((String)session.getAttribute("infRevCount")); i++){
                      session.setAttribute("userPage-CustName", info.get(i).getCustName());
                      session.setAttribute("userPage-CustCount", info.get(i).getCustCount());
                      session.setAttribute("userPage-gTarihi", info.get(i).getGirisTarihi());
                      session.setAttribute("userPage-cTarihi", info.get(i).getCikisTarihi());
                      session.setAttribute("userPage-roomId", info.get(i).getRoomName());
                      int userPageRoomId = Integer.parseInt((String)session.getAttribute("userPage-roomId"));
                      session.setAttribute("userPage-revStatus", info.get(i).getDurum());
                      session.setAttribute("userPage-isDatePast", (info.get(i).getIsDatePast()));

                      String sqlQuery3 = "SELECT * FROM `room` WHERE `id` = ?";
                      PreparedStatement ps4 = con.prepareStatement(sqlQuery3);
                      ps4.setInt(1, (userPageRoomId));
                      ResultSet rls4 = ps4.executeQuery();

                      infoRev = mysql.readRoomsData(rls4);
                      session.setAttribute("userPage-RoomName", infoRev.get(0).getRoomName());


//                      String tableColor = "table-secondary";
                      String roomName = (String)session.getAttribute("userPage-RoomName");
                  %>
                  <tr >
<%--                    <th scope="row"><%out.println(i + 1);%></th>--%>
                    <td><%out.println(session.getAttribute("userPage-CustName"));%></td>
                    <td><%out.println(session.getAttribute("userPage-CustCount"));%></td>
                    <td class="text-danger"><%out.println(session.getAttribute("userPage-gTarihi"));%></td>
                    <td class="text-danger"><%out.println(session.getAttribute("userPage-cTarihi"));%></td>
                    <td class="text-primary"><%out.println(session.getAttribute("userPage-RoomName"));%></td>
                    <%
                      String strisDatePase = (String) session.getAttribute("userPage-isDatePast");
                      if( strisDatePase.equals("0")){
                    %>
                    <td class="badge bg-success"><%out.println(session.getAttribute("userPage-revStatus"));%></td>
                    <%
                      }else{ %><td class="badge bg-danger"><%out.println("Geçmiş");%></td>
                    <%}%>
                  </tr>

                <%
//                    tableColor = "table-light";
                  }
                  }catch (Exception e){
                    out.println(e);
                  }
                %>
                </tbody>

              </table>
                <hr class="my-4">
                <!-- Description -->
                
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

</body>
</html>
<%}
else{
    response.sendRedirect("index.jsp");
}
}catch (Exception e){
  response.sendRedirect("index.jsp");

}
%>