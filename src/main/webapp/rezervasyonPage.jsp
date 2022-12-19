<%-- 
    Document   : rezervasyonPage
    Created on : 17 Ara 2022, 15:42:25
    Author     : hakkimertpeyk
--%>

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
  <div class="title">Rezervasyon Kayıt</div>
  <form action="#">
    <div class="user__details">
      <div class="input__box">
        <span class="details">İsim Soyisim</span>
        <input type="text" placeholder="Mert Peyk" required>
      </div>
      <div class="input__box">
        <span class="details">Misafir Sayısı</span>
        <input type="number" placeholder="3" min="1" max="6" required >
      </div>
         <div class="input__box">
        <span class="details">Giriş Tarihi</span>
        <input type="date" placeholder="14.11.2022" required>
      </div>
         <div class="input__box">
        <span class="details">Çıkış Tarihi</span>
        <input type="date" placeholder="18.11.2022" required>
      </div>
      <div class="input__box">
        <span class="details">Email</span>
        <input type="email" placeholder="mert@hotmail.com" required>
      </div>
      <div class="input__box">
        <span class="details">Telefon No</span>
        <input type="tel" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" placeholder="012-345-6789" required>
      </div>
      <div class="input__box">
        <span class="details">Şifre</span>
        <input type="password" placeholder="********" required>
      </div>
      <div class="input__box">
        <span class="details">choose a car:</span>
  <select id="oda" name="oda">
    <option value="suit">Süit oda</option>
    <option value="aile">Aile Oda</option>
    <option value="lux">Lüx Oda</option>
    <option value="luxury">Lüxery Oda</option>
      <option value="superior">Superior Oda</option>
  </select>
      </div>

    </div>
    <div class="gender__details">
      <input type="radio" name="gender" id="dot-1">
      <input type="radio" name="gender" id="dot-2">
      <input type="radio" name="gender" id="dot-3">
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
        <label for="dot-3">
          <span class="dot three"></span>
          <span>Belirtmek İstemiyorum</span>
        </label>
      </div>
    </div>
    <div class="button">
      <input type="submit" value="Kaydet">
    </div>
  </form>
</div>
</body>
</html>
