<%-- 
    Document   : adminSqlCon
    Created on : Dec 22, 2022, 12:16:50 AM
    Author     : omerfaruk
--%>

<%@page import="com.omar.hotelreservation.mySql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String _page = request.getParameter("iam");
    if(_page.equals("customerEdit")){
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String mail = request.getParameter("mail");
        String phone= request.getParameter("phone");
        
        String sqlQuery = "UPDATE `customer` SET `name`='"+name+"',`mail`='"+mail+"',`phone`='"+phone+"' WHERE `id` = '"+id+"'";
        mySql mysql = new mySql();
        mysql.editInsertData(sqlQuery);
        
        
        
        response.sendRedirect("pages-customers.jsp");

    }
    if(_page.equals("customerDelete")){
        String id = request.getParameter("id");
        
        String sqlQuery = "DELETE FROM `customer` WHERE `id` = '"+id+"'";
        mySql mysql = new mySql();
        mysql.editInsertData(sqlQuery);
        
        
        
        response.sendRedirect("pages-customers.jsp");
    }
    if(_page.equals("customerAdd")){
        String name = request.getParameter("name");
        String mail = request.getParameter("mail");
        String phone= request.getParameter("phone");
        
        String sqlQuery = "INSERT INTO `customer`(`name`, `mail`, `phone`) VALUES ('"+name+"','"+mail+"','"+phone+"')";
        mySql mysql = new mySql();
        mysql.editInsertData(sqlQuery);
        
        
        
        response.sendRedirect("pages-customers.jsp");
    }
    if(_page.equals("reverasyonDelete")){
        String id = request.getParameter("id");
        
        String sqlQuery = "DELETE FROM `reverasyonlar` WHERE `id` = '"+id+"'";
        mySql mysql = new mySql();
        mysql.editInsertData(sqlQuery);
        
        
        
        response.sendRedirect("pages-reversayon.jsp");
    }
    if(_page.equals("reverasionEdit")){
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String mail = request.getParameter("mail");
        String phone= request.getParameter("phone");
        String count= request.getParameter("count");
        String gTarihi= request.getParameter("gTarihi");
        String cTarihi= request.getParameter("cTarihi");
        String roomName = request.getParameter("room");
        String status = request.getParameter("status");
        String gander = request.getParameter("gander");
        
        String sqlQuery = "UPDATE `reverasyonlar` SET `musteriAdi`='"+name+"',`kisiSayisi`='"+count+"',`girisTarihi`='"+gTarihi+"',`cikisTarihi`='"+cTarihi+"',`email`='"+mail+"',`telefon`='"+phone+"',`odaAdi`='"+roomName+"',`durum`='"+status+"',`cinsiyet`='"+gander+"' WHERE 'id' = '"+id+"'";
        mySql mysql = new mySql();
        mysql.editInsertData(sqlQuery);
        
        
        
        response.sendRedirect("pages-reversayon.jsp");

    }
%>