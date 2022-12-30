<%-- 
    Document   : login
    Created on : Dec 10, 2022, 7:48:10 PM
    Author     : omerfaruk
--%>

<%--<%@page import="com.omar.hotelreservation.tags"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%session.setAttribute("whosePage", "");%>
<jsp:include page="checkPage.jsp" flush="false"/>
<%if((String)session.getAttribute("loginTag") != "Log Out"){ 
//if((String)session.getAttribute("loginIsValid") == null) session.setAttribute("loginIsValid", "hidden");
String revCustMail = "";
if((String)session.getAttribute("revCustMail") != null){
    revCustMail = (String)session.getAttribute("revCustMail");
    
    }
    System.out.println((String)session.getAttribute("loginTag"));

session.setAttribute("whosePage", "userLogin");

%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>LOG IN >> SIGN UP</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css">
  <link rel="stylesheet" href="css/loginPage.css" />
</head>

<body>

  <div class="section">
    <div class="container">
      <div class="row full-height justify-content-center">
        <div class="col-12 text-center align-self-center py-5">
          <div class="section pb-5 pt-5 pt-sm-2 text-center">
            <h6 class="mb-0 pb-3"><span>Giriş Yap</span><span>Mutlu Ol</span></h6>
            <input class="checkbox" type="checkbox" id="reg-log" name="reg-log" />
            <label for="reg-log"></label>
            <div class="card-3d-wrap mx-auto">
              <div class="card-3d-wrapper">
                <div class="card-front">
                  <div class="center-wrap">
                    <div class="section text-center">
                      <h4 class="mb-4 pb-3">Log In</h4>
                      <p class="wrong-pass" <%out.println((String)session.getAttribute("loginIsValid"));%>>‼️Giriş başarısız ‼️</p>
                      <form action="checkPage.jsp" method="POST" id="loginform">
                        <div class="form-group">
                          <input type="email" name="logemail" class="form-style" placeholder="Your Email"
                                 autocomplete="off" required value = <%out.println(revCustMail);%>>
                          <i class="input-icon uil uil-at"></i>
                        </div>
                        <div class="form-group mt-2">
                          <input type="password" name="logpass" class="form-style" placeholder="Your Password"
                             autocomplete="off" required>
                          <i class="input-icon uil uil-lock-alt"></i>
                        </div>
                        <a href="#" class="btn mt-4" onclick="document.getElementById('loginform').submit();">Login</a>
                        <p class="mb-0 mt-4 text-center"><a href="#0" class="link">Forgot your
                            password?</a></p>
                      </form>
                    </div>
                  </div>
                </div>
                <div class="card-back">
                  <div class="center-wrap">
                    <div class="section text-center">
                      <div class="form-group">


                      <div class="form-group mt-2">
                        <span style='font-size:250px;'>&#128518;</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
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
    session.invalidate();
    
    response.sendRedirect("index.jsp");
}
%>