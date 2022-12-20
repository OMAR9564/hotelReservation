<%-- 
    Document   : login
    Created on : Dec 10, 2022, 7:48:10 PM
    Author     : omerfaruk
--%>

<%@page import="com.omar.hotelreservation.tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="checkPage.jsp" flush="false"/>
<%if(!tags.getLoginTag().equals("Log Out")){ System.out.println(tags.getLoginTag()+"ooooooooo"); %>
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
            <h6 class="mb-0 pb-3"><span>Log In</span><span>Sign Up</span></h6>
            <input class="checkbox" type="checkbox" id="reg-log" name="reg-log" />
            <label for="reg-log"></label>
            <div class="card-3d-wrap mx-auto">
              <div class="card-3d-wrapper">
                <div class="card-front">
                  <div class="center-wrap">
                    <div class="section text-center">
                      <h4 class="mb-4 pb-3">Log In</h4>
                      <p class="wrong-pass" <%out.println(tags.getLoginIsValid());%>>‼️ ️Giriş başarısız ‼️</p>
                      <form action="checkPage.jsp" method="POST" id="loginform">
                        <div class="form-group">
                          <input type="email" name="logemail" class="form-style" placeholder="Your Email" id="logemail"
                            autocomplete="off">
                          <i class="input-icon uil uil-at"></i>
                        </div>
                        <div class="form-group mt-2">
                          <input type="password" name="logpass" class="form-style" placeholder="Your Password"
                            id="logpass" autocomplete="off">
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
                      <h4 class="mb-4 pb-3">Sign Up</h4>
                      <div class="form-group">
                        <input type="text" name="logname" class="form-style" placeholder="Your Full Name" id="logname"
                          autocomplete="off">
                        <i class="input-icon uil uil-user"></i>
                      </div>
                      <div class="form-group mt-2">
                        <input type="date" name="logpass" class="form-style" placeholder="Check-In Date" id="logpass"
                          autocomplete="off">
                        <i class="input-icon uil uil-calender"></i>
                      </div>
                      <div class="form-group mt-2">
                        <input type="date" name="logpass" class="form-style" placeholder="Check-Out Date" id="logpass"
                          autocomplete="off">
                        <i class="input-icon uil uil-calendar-slash"></i>
                      </div>
                      <div class="form-group mt-2">
                        <input type="email" name="logemail" class="form-style" placeholder="Your Email" id="logemail"
                          autocomplete="off">
                        <i class="input-icon uil uil-at"></i>
                      </div>

                      <div class="form-group mt-2">
                        <input type="password" name="logpass" class="form-style" placeholder="Your Password"
                          id="logpass" autocomplete="off">
                        <i class="input-icon uil uil-lock-alt"></i>
                      </div>
                      <%tags.setHowsLogin("userLogin");%>
                      <a href="#" class="btn mt-4">submit</a>
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
    tags.resetLoginTags();

    response.sendRedirect("index.jsp");

}
%>