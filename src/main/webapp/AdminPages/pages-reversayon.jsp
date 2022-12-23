<%-- 
    Document   : pages-reversayon
    Created on : Dec 22, 2022, 5:21:03 AM
    Author     : omerfaruk
--%>

<%@page import="com.omar.hotelreservation.mySql"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.omar.hotelreservation.getInfo"%>
<%@page import="com.omar.hotelreservation.hotelData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//    customers data
    ArrayList<getInfo> info;
    mySql mysql = new mySql();

    String sqlQuery = "SELECT * FROM `reverasyonlar`";

    info = mysql.readReversaionData(sqlQuery);
    hotelData.setReverasionCount(info.size());

//    rooms data

    ArrayList<getInfo> infoRoom;

    sqlQuery = "SELECT * FROM `room`";

    infoRoom = mysql.readRoomsData(sqlQuery);
    hotelData.setRoomCount(infoRoom.size());


%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin Page</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

</head>
    <body>

    <jsp:include page="adminHeader.jsp" flush="true"/>

    <jsp:include page="adminSidebar.jsp" flush="true"/>
      <main id="main" class="main">

    <div class="pagetitle">
      <h1>Reverasions</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.jsp">Customerts</a></li>
          <li class="breadcrumb-item active">Reverasions</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
        <div class="row">
            <div class="card-body">
                  <h5 class="card-title">Oda Reverasyonlari <span>| Today</span></h5>

                  <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Musteri</th>
                        <th scope="col">Oda</th>
                        <th scope="col">Giriş Tarihi</th>
                        <th scope="col">Çikiş Tarihi</th>
                        <th scope="col">Durum</th>
                        <th scope="col">Düzenle</th>
                        <th scope="col">Sil</th>
                      </tr>
                    </thead>
                    <tbody>
                        <%
                            for(int i = 0; i < hotelData.getReverasionCount(); i++){
                                hotelData.setReverasyonId(info.get(i).getReverasyonId());
                                System.out.println(hotelData.getReverasyonId() + "ssssssssssss");
                                hotelData.setCustomerName(info.get(i).getCustName());
                                hotelData.setCustCount(info.get(i).getCustCount());
                                hotelData.setGirisTarihi(info.get(i).getGirisTarihi());
                                hotelData.setCikisTarihi(info.get(i).getCikisTarihi());                               
                                hotelData.setCustMail(info.get(i).getCustMail());
                                hotelData.setCustPhone(info.get(i).getCustPhone());
                                hotelData.setRoomName(info.get(i).getRoomName());
                                hotelData.setReversayonStatus(info.get(i).getDurum());
                        %>
                      <tr>
                        <th scope="row"><a href="#">#<%out.println(hotelData.getReverasyonId());%></a></th>
                        <td><%out.println(hotelData.getCustomerName());%></td>
                        <td><a href="#" class="text-primary"><%out.println(hotelData.getRoomName());%></a></td>
                        <td><a href="#" class="text-primary"><%out.println(hotelData.getGirisTarihi());%></a></td>
                        <td><a href="#" class="text-primary"><%out.println(hotelData.getCikisTarihi());%></a></td>
                        <td><span class="badge bg-success"><%out.println(hotelData.getReversayonStatus());%></span></td>
                        <td><button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#editModal" data-bs-id="<%out.println(hotelData.getCustId());%>" data-bs-name="<%out.println(hotelData.getCustName());%>" data-bs-mail="<%out.println(hotelData.getCustMail());%>" data-bs-phone="<%out.println(hotelData.getCustPhone());%>"><i class="bi bi-info-circle" ></i></button></td>
                        <td><button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal" data-bs-idDel="<%out.println(hotelData.getCustId());%>"><i class="bi bi-x-octagon"></i></button></td>
                      </tr>
                      <%}%>
                    </tbody>
                  </table>

                </div>
                    <!--edit modal-->
                    <div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
                      <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="editModalLabel">Edit</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                          </div>
                          <div class="modal-body">
                              <form method="post" action="adminSqlCon.jsp">
                                  <input type="text" class=" idInput" name="id" >
                              <div class="row">  
                              <div class="mb-3 col-md-6">
                                <label for="name" class="col-form-label">Musteri Adı:</label>
                                <input type="text" class="form-control nameInput" name="custName" id="name">
                              </div>
                              <div class="mb-3 col-md-6 ms-auto">
                                <label for="custCount" class="col-form-label">Kişi Sayısı:</label>
                                <input type="number" min="0" max="6" class="form-control " id="custCount" name="custCount"></input>
                              </div>
                              </div>
                              <div class="row">                                    
                                <div class="mb-3 col-md-6">
                                <label for="gTarihi" class="col-form-label">Giriş Tarihi:</label>
                                <input type="date" class="form-control" name="gTarihi" id="gTarihi">
                              </div>
                                <div class="mb-3 col-md-6 ms-auto">
                                <label for="cTarihi" class="col-form-label">Çıkuş Tarihi:</label>
                                <input type="date" class="form-control" name="cTarihi" id="cTarihi">
                              </div>
                              </div>                                  
                              <div class="row">                                    
                                <div class="mb-3 col-md-6">
                                <label for="mail" class="col-form-label">E-Mail:</label>
                                <input type="email" class="form-control" name="mail" id="mail">
                              </div>
                                <div class="mb-3 col-md-6 ms-auto">
                                <label for="phone" class="col-form-label">Telefon:</label>
                                <input type="tel" class="form-control" name="phone" id="phone">
                              </div>
                              </div>                                  
                              <div class="row">                                    
                                <div class="mb-3 col-md-6">
                                <label for="roomName" class="col-form-label">Oda Adı:</label>
                                <select class="form-control" name="roomName" id="roomName">
                                    <%
                                        for(int i = 0; i < hotelData.getRoomCount(); i++){
                                    %>
                                       <option value="<%out.println(hotelData.getRoomName());%>"><%out.println(hotelData.getRoomName());%></option>
                                       <%}%>
                                </select>
                              </div>
                                <div class="mb-3 col-md-6 ms-auto">
                                <label for="phone" class="col-form-label">Telefon:</label>
                                <input type="tel" class="form-control" name="phone" id="phone">
                              </div>
                              </div>                                  
                                <input type="text" value="customerEdit" name="iam" hidden>
                            
                          <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <input type="submit" class="btn btn-primary" value="Edit">
                          </div>
                        </form>
                        </div>
                      </div>
                    </div>
                    </div>
                    <!--Delete modal-->
                    <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="deleteModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <h5 class="modal-title" id="deleteModalLabel">Silmek istediğinizden eminmisiniz?</h5>
                              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="mb-3">
                                    Bu kullanıcının tüm bilgilerini silenecektir!!
                                </div>
                              
                              <form method="post" action="adminSqlCon.jsp">
                                  <input type="text" class="delIdInput" name="id" hidden>
                              
                                <input type="text" value="customerDelete" name="iam" hidden>
                                <div class="modal-footer">
                              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                              <input type="submit" class="btn btn-danger" value="Delete this customer">
                              
                            </div>
                              </form>
                        </div>
                      </div>
                </div>

              </div>
                    <!--add modal-->
                    <div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
                      <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="addModalLabel">ADD</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                          </div>
                          <div class="modal-body">
                              <form method="post" action="adminSqlCon.jsp">
                              <div class="row">  
                              <div class="mb-3 col-md-6">
                                <label for="name" class="col-form-label">Name:</label>
                                <input type="text" class="form-control nameInput" name="name" id="name">
                              </div>
                              <div class="mb-3 col-md-6 ms-auto">
                                <label for="Mail" class="col-form-label">E-Mail:</label>
                                <input class="form-control mailInput" id="Mail" name="mail"></input>
                              </div></div>
                                <div class="mb-3 col-md-6">
                                <label for="phone" class="col-form-label">Phone:</label>
                                <input type="text" class="form-control phoneInput" name="phone" id="phone">
                                <input type="text" value="customerAdd" name="iam" hidden>
                              </div>
                            <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <input type="submit" class="btn btn-success" value="Add">
                          </div>
                        </form>
                          </div>
                          

                        </div>
                      </div>
                    </div>
        </div>
    </section>
      </main>
    
    
    </body>
</html>
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.min.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>