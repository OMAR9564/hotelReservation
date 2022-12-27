<%-- 
    Document   : pages-rooms
    Created on : Dec 23, 2022, 8:18:33 PM
    Author     : omerfaruk
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.omar.hotelreservation.mySql"%>
<%@page import="com.omar.hotelreservation.getInfo"%>
<%@page import="com.omar.hotelreservation.hotelData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
//    customers data
    ArrayList<getInfo> info;
    mySql mysql = new mySql();

    String sqlQuery = "SELECT * FROM `room`";

    info = mysql.readRoomsData (sqlQuery);
    
    hotelData.setRoomTotalCount(info.size());


%>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Pages / Rooms - Admin Page</title>
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
  
  <script>
      
</script>

</head>

<body>

    <jsp:include page="adminHeader.jsp" flush="true"/>
    
    <jsp:include page="adminSidebar.jsp" flush="true"/>



  <main id="main" class="main">
    <div class="pagetitle">
      <h1>Rooms</h1>
      <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="pages-customers.jsp">Home</a></li>
          <li class="breadcrumb-item active">Rooms</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    <section class="section dashboard">
    <div class="row">

        <!-- Left side columns -->
        <div class="">
            <div class="row">
            <!-- Recent Sales -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">


                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                        <h5 class="card-title">Rooms</h5>
                        </div>
                        <div class='col-md-2 ms-auto mt-3 d-grid gap-3 me-5 mb-3' >
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addModal">Add</button>
                        </div>
                    </div>
                  <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">Fotoğraf</th>
                        <th scope="col">Adı</th>
                        <th scope="col">Satış Adedi</th>
                        <th scope="col">Oda Sayısı</th>
                        <th scope="col">Ücreti</th>
                        <th scope="col">İndirimli Ücreti</th>
                        <th scope="col">İndirim Aktif</th>
                        <th scope="col">Oda Aktif</th>
                        <th scope="col">Düzenle</th>
                        <th scope="col">Sil</th>
                      </tr>
                    </thead>
                    <tbody>
                        <%
                            for(int i = 0; i < hotelData.getRoomTotalCount(); i++){
                            System.out.println(hotelData.getRoomCount());
                                hotelData.setRoomId(info.get(i).getCustId());
                                hotelData.setRoomImg(info.get(i).getRoomImg());
                                hotelData.setRoomSoldCount(info.get(i).getRoomSoldCount());
                                hotelData.setRoomName(info.get(i).getRoomName());
                                hotelData.setRoomPrice(info.get(i).getRoomPrice());
                                hotelData.setRoomSalePrice(info.get(i).getRoomSalePrice());
                                hotelData.setRoomSaleActive(info.get(i).getRoomSaleActive());
                                hotelData.setRoomCount(info.get(i).getRoomCount());
                                hotelData.setRoomAvabilve(info.get(i).getRoomAvabilve());
                                System.out.println(hotelData.getCustMail()+ "omeroemreormeormmr8 ");
                        %>
                      <tr>
                        <th scope="row"><a href="#"><%out.println(hotelData.getRoomImg());%></a></th>
                        <td><%out.println(hotelData.getRoomName());%></td>
                        <td><a href="#" class="text-primary"><%out.println(hotelData.getRoomSoldCount());%></a></td>
                        <td><span class="badge" style="color:black; font-size: 12px;"><%out.println(hotelData.getRoomCount());%></span></td>
                        <td><span class="badge" style="color:red; font-size: 14px;">₺<%out.println(hotelData.getRoomPrice());%></span></td>
                        <td><span class="badge" style="color:red; font-size: 14px;">₺<%out.println(hotelData.getRoomSalePrice());%></span></td>
                        <td><span class="badge" style="color:blueviolet; font-size: 14px;"><%out.println(hotelData.getRoomSaleActive());%></span></td>
                        <td><span class="badge" style="color:black; font-size: 12px;"><%out.println(hotelData.getRoomAvabilve());%></span></td>
                        <td><button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#editModal" data-bs-id="<%out.println(hotelData.getCustId());%>" data-bs-name="<%out.println(hotelData.getCustName());%>" data-bs-mail="<%out.println(hotelData.getCustMail());%>" data-bs-phone="<%out.println(hotelData.getCustPhone());%>"><i class="bi bi-info-circle" ></i></button></td>
                        <td><button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteModal" data-bs-idDel="<%out.println(hotelData.getCustId());%>"><i class="bi bi-x-octagon"></i></button></td>
                      </tr>
                      <%}%>
                    </tbody>
                  </table>
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
                                  <input type="text" class=" idInput" name="id" hidden>
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
                                <input type="text" value="customerEdit" name="iam" hidden>
                              </div>
                            
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
            </div><!-- End Recent Sales -->
            </div>   
        </div> 
    </div> 
    </div> 
    </div> 
    </section>
    
  </main><!-- End #main -->



  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
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
  <script>
      `use strict`;
    var exampleModal = document.getElementById('editModal');
    
    exampleModal.addEventListener('show.bs.modal', function (event) {
  var button = event.relatedTarget;
  var name = button.getAttribute('data-bs-name');
  var id = button.getAttribute('data-bs-id');
  var mail = button.getAttribute('data-bs-mail');
  var phone = button.getAttribute('data-bs-phone');

  var modalBodyInputName = exampleModal.querySelector('.modal-body .nameInput');
  var modalBodyInputId = exampleModal.querySelector('.modal-body .idInput');
  var modalBodyInputPhone = exampleModal.querySelector('.modal-body .phoneInput');
  var modalBodyInputMail = exampleModal.querySelector('.modal-body .mailInput');


  modalBodyInputName.value = name;
  modalBodyInputId.value = id;
  modalBodyInputPhone.value = phone;
  modalBodyInputMail.value = mail;


});
   var deleteModal = document.getElementById('deleteModal');

      deleteModal.addEventListener('show.bs.modal', function (event) {
            var button = event.relatedTarget;

  var delId = button.getAttribute('data-bs-idDel'); 
  var modalBodyInputDelId = deleteModal.querySelector('.modal-body .delIdInput');
    modalBodyInputDelId.value = delId;

});

  </script>



</body>

</html>