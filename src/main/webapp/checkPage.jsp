<%-- 
    Document   : checkPage
    Created on : Nov 8, 2022, 11:19:35 AM
    Author     : omerfaruk
--%>
<%@page import="com.omar.hotelreservation.tags"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.omar.hotelreservation.getInfo"%>
<%@page import="com.omar.hotelreservation.mySql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email = request.getParameter("logemail");
            String pass = request.getParameter("logpass");
            out.println(email);
            mySql mysql = new mySql();
            String sqlQuery = "SELECT * FROM `omar_lab` WHERE `email` = '"+email+"' AND `sifre` = '"+pass+"'";

            ArrayList<getInfo> info = mysql.sqlCon(sqlQuery);

            if(info.size() == 1){
                tags.setLoginTag("Log Out");
                tags.setLgnUserName(info.get(0).getIsim_Soyisim());
                response.sendRedirect("index.jsp");
                

            }
          
         
        else {
            response.sendRedirect("login.html");
                       
            }
            

        %>
    </body>
</html>
