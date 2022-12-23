<%-- 
    Document   : rezervasyonPage
    Created on : 17 Ara 2022, 15:42:25
    Author     : hakkimertpeyk
--%>

<%@page import="com.omar.hotelreservation.tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/rezervasyonPageCss.css"/>
    <title>JSP Page</title>
</head>
<body>
    <div class="container">
        <section class="card">
  <div class="title">Rezervasyon Kayıt</div>
  <form action="checkPage.jsp" method="post">
      <%tags.setWhosePage("revPage");%>
    <div class="user__details">
      <div class="input__box">
        <span class="details">İsim Soyisim</span>
        <input type="text" placeholder="Mert Peyk" required name="name">
      </div>
      <div class="input__box">
        <span class="details">Misafir Sayısı</span>
        <input type="number" placeholder="3" min="1" max="6" required name="custCount">
      </div>
         <div class="input__box">
        <span class="details">Giriş Tarihi</span>
        <input type="date" placeholder="14.11.2022" required name="gTarihi">
      </div>
         <div class="input__box">
        <span class="details">Çıkış Tarihi</span>
        <input type="date" placeholder="18.11.2022" required name="cTarihi">
      </div>
      <div class="input__box">
        <span class="details">Email</span>
        <input type="email" placeholder="mert@hotmail.com" required name="mail">
      </div>
      <div class="input__box">
        <span class="details">Telefon No</span>
        <input type="tel" pattern="[1-9]{3}[0-9]{3}[0-9]{4}" placeholder="5124567890" required name="phone">
      </div>
      <div class="select__box">
        <span class="details">choose a room:</span>
        <select name="room">
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
