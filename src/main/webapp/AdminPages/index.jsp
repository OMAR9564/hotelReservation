<%@page import="java.util.ArrayList"%>
<%@page import="com.omar.hotelreservation.getInfo"%>
<%@page import="com.omar.hotelreservation.mySql"%>
<%@page import="com.omar.hotelreservation.hotelData"%>
<%@page import="com.omar.hotelreservation.tags"%>
<%if((tags.getAdminName().length() > 1)){ System.out.println(tags.getLoginTag()+"ooooooooo"); 
    
//    reversaion data
    ArrayList<getInfo> infoRev;
    mySql mysql = new mySql();
    String sqlQuery = "SELECT * FROM `reverasyonlar`";

    infoRev = mysql.readReversaionData(sqlQuery);
    hotelData.setReverasionCount(infoRev.size());

    
//    rooms data
    sqlQuery = "SELECT * FROM `room`";

    ArrayList<getInfo> infoRoom = mysql.readRoomsData(sqlQuery);
    

    hotelData.setRoomCount(infoRoom.size());
    
//    customers data
    sqlQuery = "SELECT * FROM `customer`";

    ArrayList<getInfo> infoCust = mysql.readCustomersData(sqlQuery);
    
    hotelData.setCustCount(infoCust.size());

       
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
      <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Bugün</a></li>
                    <li><a class="dropdown-item" href="#">Bu Ay</a></li>
                    <li><a class="dropdown-item" href="#">Bu Yil</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Revarasyonlar <span>| Bugün</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                        <h6><%out.println(hotelData.getReverasionCount());%></h6>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Odalar <span>| This Month</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6><%out.println(hotelData.getRoomCount());%></h6>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Müsteriler <span>| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6><%out.println(hotelData.getCustCount());%></h6>

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->

            <!-- Reports -->
            <div class="col-12">
              <div class="card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

             

            <!-- Recent Sales -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Oda Reverasyonlari <span>| Today</span></h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Musteriler</th>
                        <th scope="col">Odalar</th>
                        <th scope="col">Durum</th>
                      </tr>
                    </thead>
                    <tbody>
                        <%
                            for(int i = 0; i < hotelData.getReverasionCount(); i++){
                            hotelData.setReverasyonId(infoRev.get(i).getReverasyonId());
                            hotelData.setCustomerName(infoRev.get(i).getCustName());
                            hotelData.setRoomName(infoRev.get(i).getRoomName());
                            hotelData.setReversayonStatus(infoRev.get(i).getDurum());
                            hotelData.setRoomTotalCount(infoRev.get(i).getTotalOdaSayisi());
                        %>
                      <tr>
                        <th scope="row"><a href="#">#<%out.println(i + 1);%></a></th>
                        <td><%out.println(hotelData.getCustomerName());%></td>
                        <td><a href="#" class="text-primary"><%out.println(hotelData.getRoomName());%></a></td>
                        <td><span class="badge bg-success"><%out.println(hotelData.getReversayonStatus());%></span></td>
                      </tr>
                      <%}%>
                    </tbody>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->

            <!-- Top Selling -->
            <div class="col-12">
              <div class="card top-selling overflow-auto">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body pb-0">
                  <h5 class="card-title">En Çok Seçilen Odalar <span>| Today</span></h5>

                  <table class="table table-borderless">
                    <thead>
                      <tr>
                        <th scope="col">Preview</th>
                        <th scope="col">Product</th>
                        <th scope="col">Price</th>
                        <th scope="col">Sold</th>
                        <th scope="col">Revenue</th>
                      </tr>
                    </thead>
                    <tbody>
                        <%for(int i = 0; i < hotelData.getRoomCount(); i++){
                            hotelData.setRoomId(infoRoom.get(i).getRoomId());
                            hotelData.setRoomName(infoRoom.get(i).getRoomName());
                            hotelData.setRoomPrice(infoRoom.get(i).getRoomPrice());
                            hotelData.setRoomImg(infoRoom.get(i).getRoomImg());
                            hotelData.setRoomSoldCount(infoRoom.get(i).getRoomSoldCount());
                        %>
                      <tr>
                        <th scope="row"><a href="#"><img src="<%out.println(hotelData.getRoomImg());%>" alt=""></a></th>
                        <td><a href="#" class="text-primary fw-bold"><%out.println(hotelData.getRoomName());%></a></td>
                        <td><%out.println(hotelData.getRoomPrice());%></td>
                        <td class="fw-bold"><%out.println(hotelData.getRoomSoldCount());%></td>
                        <td><%out.println(hotelData.getRoomSoldCount() * hotelData.getRoomPrice());%></td>
                      </tr>
                      <%}%>
                    </tbody>
                  </table>

                </div>

              </div>
            </div><!-- End Top Selling -->

          </div>
        </div><!-- End Left side columns -->

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

</body>

</html>

<%}
else{

    response.sendRedirect("index.jsp");

}
%>