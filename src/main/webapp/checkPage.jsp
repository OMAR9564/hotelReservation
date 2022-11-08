<%-- 
    Document   : checkPage
    Created on : Nov 8, 2022, 11:19:35 AM
    Author     : omerfaruk
--%>
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
            String sqlQuery = "SELECT * FROM `omar_lab`";

            ArrayList<getInfo> info = mysql.sqlCon(sqlQuery);

            for (int i = 0; i < info.size(); i++) {
                out.println(info.size());
                if (info.get(i).getEmail().equals(email)) {
                    out.println("omerererere");
        %>
        <jsp:include page="userPage.jsp" flush="true"/>
        <%
            break;
        } 
        else {
            out.println("123123");

        %>
        <jsp:include page="login.html" flush="true"/>
        <%                }
            }

        %>
    </body>
</html>
