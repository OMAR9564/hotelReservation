<%-- 
    Document   : adminPage
    Created on : Dec 20, 2022, 11:07:34 PM
    Author     : omerfaruk
--%>

<%@page import="com.omar.hotelreservation.tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%if(tags.getAdminName().length() > 1 && tags.getIsAdmin().equals("1")){ %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
<%}
else{
    tags.resetLoginTags();

    response.sendRedirect("index.jsp");

}
%>