<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %><%--
    Document   : rezervasyonPage
    Created on : 17 Ara 2022, 15:42:25
    Author     : hakkimertpeyk
--%>

<%--<%@page import="com.omar.hotelreservation.tags"%>--%>
<%
String passInputs = "";
if((String)session.getAttribute("isLogOut") == "true"){

    passInputs = "hidden";
    }
    
                  session.setAttribute("revEmoji", "hidden");
                  session.setAttribute("roomRevAvabilve", null);

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/rezervasyonPageCss.css"/>
    <title>JSP Page</title>
<%--    <<script src="js/main.js"></script>--%>
</head>
<body>
    <div class="container">
        <section class="card">
  <div class="title">Rezervasyon Kayıt</div>
  <form action="checkPage.jsp" method="post">
      <%  session.setAttribute("whosePage", "revPage");%>
    <div class="user__details">
      <div class="input__box">
        <span class="details">İsim Soyisim</span>
        <input type="text" placeholder="Mert Peyk" required name="name" id="name" >
      </div>
      <div class="input__box">
        <span class="details">Misafir Sayısı</span>
        <input type="number" placeholder="3" min="1" max="6" required name="custCount" id="custCount" >
      </div>
         <div class="input__box">
        <span class="details">Giriş Tarihi</span>
        <input type="date" placeholder="14.11.2022" required name="gTarihi" id="gTarihi" >
      </div>
         <div class="input__box">
        <span class="details">Çıkış Tarihi</span>
        <input type="date" placeholder="18.11.2022" required name="cTarihi" id="cTarihi">
      </div>
      <div class="input__box" <%out.println(passInputs);%>>
        <span class="details">Email</span>
        <input type="email" placeholder="mert@hotmail.com" required name="mail" value="">
      </div>

      <div class="input__box" <%out.println(passInputs);%>>
        <span class="details">Password</span>
        <input type="password" placeholder="**********" required name="pass" min="7">
      </div>
      <div class="input__box">
        <span class="details">Telefon No</span>
        <input type="tel" pattern="[1-9]{3}[0-9]{3}[0-9]{4}" placeholder="5124567890" required name="phone">
      </div>
      <div class="select__box">
        <span class="details">choose a room:</span>
        <select name="room" id="room">
            <option value="1">Süit oda</option>
            <option value="2">Aile Oda</option>
            <option value="3">Lüx Oda</option>
            <option value="4">Lüxery Oda</option>
            <option value="5">Superior Oda</option>
        </select>
      </div>

    </div>
    <div class="gender__details">
        <input type="radio" name="gander" id="dot-1" value="erkek">
        <input type="radio" name="gander" id="dot-2" value="kadin">
        <input type="radio" name="gander" id="dot-3" value="null">
      <span class="gender__title">Cinsiyet</span>
      <div class="category">
        <label for="dot-1">
          <span class="dot one"></span>
          <span>Erkek</span>
        </label>
        <label for="dot-2">
          <span class="dot two"></span>
          <span>Kadın</span>
        </label>
        
      </div>
    </div>
    <div class="button">
      <input type="submit" value="Kaydet">
    </div>
  </form>
  </section>
</div>
</body>
</html>
<script>

    var today = new Date();
    var tomorrow = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1; //January is 0!
    var yyyy = today.getFullYear();

    if (dd < 10) {
        dd = '0' + dd;
    }

    if (mm < 10) {
        mm = '0' + mm;
    }
// burda kaldım 13.18;
    today = yyyy + '-' + mm + '-' + dd;
    
    document.getElementById("gTarihi").setAttribute("min", today);
    document.getElementById("gTarihi").value= today;
    document.getElementById("cTarihi").value = today;
    document.getElementById("cTarihi").setAttribute("min", today);
</script>