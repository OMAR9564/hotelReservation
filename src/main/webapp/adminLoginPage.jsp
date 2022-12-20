<%-- 
    Document   : adminLoginPage
    Created on : Dec 20, 2022, 9:42:30 PM
    Author     : omerfaruk
--%>

<%@page import="com.omar.hotelreservation.tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/adminLoginPageCss.css"/>
        <title>Admin Login Page</title>
    </head>
    <body>
    <div class="container">
        <h1>Please Login</h1>
        <p class="wrong-pass" <%out.println(tags.getLoginIsValid());%>>‼️ ️Giriş başarısız ‼️</p>

        <form method="POST" action="checkPage.jsp">
            <div class="form-control">
                <input type="text" name = "logemail" required> <label>Email</label>
            </div>
            <div class="form-control">
                <input type="password" name = "logpass" required> <label>Password</label>
            </div> 
            <%tags.setHowsLogin("adminLogin");%>
            <button class="btn">Login</button>
            <p></p>
        </form>

    </div>
        <script src="js/adminLoginPage.js"></script>
    </body>
</html>
