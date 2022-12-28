<%-- 
    Document   : adminSqlCon
    Created on : Dec 22, 2022, 12:16:50 AM
    Author     : omerfaruk
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="com.omar.hotelreservation.mySql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String _page = request.getParameter("iam");
    System.out.println(request.getParameter("iam") + "---------------------111");
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
    try{
        String id = request.getParameter("id");
        
        String sqlQuery = "DELETE FROM `customer` WHERE `id` = '"+id+"'";
        mySql mysql = new mySql();
        mysql.editInsertData(sqlQuery);
            session.setAttribute("adminAlertLog", "Müşteri başarılı bir şekilde Silindi.");
                session.setAttribute("adminShowAlert", "show");
                session.setAttribute("adminAlertOk", "success");
                session.setAttribute("adminAlertIcon", "bi bi-check-circle me-1");
                        response.sendRedirect("pages-customers.jsp");

    }catch(Exception e){
                        session.setAttribute("adminAlertLog", "Üzgünüz bir hata oluştur. Müşteri Silinmedi.");
                session.setAttribute("adminShowAlert", "true");
                session.setAttribute("adminAlertOk", "danger");
                session.setAttribute("adminAlertIcon", "bi bi-exclamation-octagon me-1");
                response.sendRedirect("pages-customers.jsp");
    }
        
        
    }
    if(_page.equals("customerAdd")){
    try{
        String name = request.getParameter("name");
        String mail = request.getParameter("mail");
        String phone= request.getParameter("phone");
        String pass = request.getParameter("pass");
        
        String sqlQuery = "INSERT INTO `customer`(`name`, `mail`, `phone`, `Pass`) VALUES ('"+name+"','"+mail+"','"+phone+"', '"+pass+"')";
        mySql mysql = new mySql();
        mysql.editInsertData(sqlQuery);
            session.setAttribute("adminAlertLog", "Müşteri başarılı bir şekilde Eklendi.");
                session.setAttribute("adminShowAlert", "show");
                session.setAttribute("adminAlertOk", "success");
                session.setAttribute("adminAlertIcon", "bi bi-check-circle me-1");
                        response.sendRedirect("pages-customers.jsp");

    }catch(Exception e){
                        session.setAttribute("adminAlertLog", "Üzgünüz bir hata oluştur. Müşteri Eklenmedi.");
                session.setAttribute("adminShowAlert", "true");
                session.setAttribute("adminAlertOk", "danger");
                session.setAttribute("adminAlertIcon", "bi bi-exclamation-octagon me-1");
                response.sendRedirect("pages-customers.jsp");
    }
        
        
    }
    if(_page.equals("reverasyonDelete")){
    try{
        String id = request.getParameter("id");
        
        String sqlQuery = "DELETE FROM `reverasyonlar` WHERE `id` = '"+id+"'";
        mySql mysql = new mySql();
        mysql.editInsertData(sqlQuery);
        
         session.setAttribute("adminAlertLog", "Reversayon başarılı bir şekilde Silindi.");
                session.setAttribute("adminShowAlert", "show");
                session.setAttribute("adminAlertOk", "success");
                session.setAttribute("adminAlertIcon", "bi bi-check-circle me-1");
                        response.sendRedirect("pages-reversayon.jsp");

    }catch(Exception e){
                        session.setAttribute("adminAlertLog", "Üzgünüz bir hata oluştur. Reverasyon Silinmedi.");
                session.setAttribute("adminShowAlert", "true");
                session.setAttribute("adminAlertOk", "danger");
                session.setAttribute("adminAlertIcon", "bi bi-exclamation-octagon me-1");
                response.sendRedirect("pages-reversayon.jsp");
    }
    
        
        
        
    }
    if(_page.equals("reverasionEdit")){
    try{
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
              session.setAttribute("adminAlertLog", "Reversayon başarılı bir şekilde düzeldi.");
                session.setAttribute("adminShowAlert", "show");
                session.setAttribute("adminAlertOk", "success");
                session.setAttribute("adminAlertIcon", "bi bi-check-circle me-1");
                        response.sendRedirect("pages-reversayon.jsp");

    }catch(Exception e){
                        session.setAttribute("adminAlertLog", "Üzgünüz bir hata oluştur. Reversayon alınmadı.");
                session.setAttribute("adminShowAlert", "true");
                session.setAttribute("adminAlertOk", "danger");
                session.setAttribute("adminAlertIcon", "bi bi-exclamation-octagon me-1");
                response.sendRedirect("pages-reversayon.jsp");
    }
        

    }
    if(_page.equals("roomInsert")){
    try{
        
        String id = request.getParameter("id");
        String img = request.getParameter("uploadImg");
        String name = request.getParameter("roomName");
        String roomCount = request.getParameter("roomCount");
        String soldCount= request.getParameter("soldCount");
        String roomPrice= request.getParameter("roomPrice");
        String roomSalePrice= request.getParameter("roomSalePrice");
        String roomSaleActive= request.getParameter("roomSaleActive");
        String roomActive= request.getParameter("roomActive");
        String maxCustCount= request.getParameter("maxCust");
        
        String sqlQuery = "INSERT INTO `room`( `name`, `price`,`soldCount`, `maxRoomCount`, `salePrice`, `avabilve`, `saleActive`, `maxCust`) VALUES ('"+name+"','"+roomPrice+"','"+soldCount+"','"+roomCount+"','"+roomSalePrice+"','"+roomActive+"','"+roomSaleActive+"','"+maxCustCount+"')";
        mySql mysql = new mySql();
        mysql.editInsertData(sqlQuery);
        
//PreparedStatement pstmt = null; 

//        FileInputStream fis=null;
        
        
//        File image= new File(img); 
        
        

        
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup9?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup9", "9564");
//            pstmt = con.prepareStatement("INSERT INTO `room`( `name`, `price`, `image`, `soldCount`, `maxRoomCount`, `salePrice`, `avabilve`, `saleActive`, `maxCust`) " + "values(?,?,?,?,?,?,?,?,?)");
//            pstmt.setString(1, name);             
//            pstmt.setString(2, roomPrice);
//            pstmt.setString(4, soldCount);
//            pstmt.setString(5, roomCount);
//            pstmt.setString(6, roomSalePrice);
//            pstmt.setString(7, roomActive);
//            pstmt.setString(8, roomSaleActive);
//            pstmt.setString(9, maxCustCount);
//            
//            
//            
//            fis=new FileInputStream(image); 
//            pstmt.setBinaryStream(3, (InputStream) fis, (int) (image.length())); 
//        
//            
//            		int count = pstmt.executeUpdate();
//                        if(count > 0){
//                        System.out.println("qqqqqqqq111qqqq1111");
//    }
                session.setAttribute("adminAlertLog", "Oda başarılı bir şekilde Kayıtedildi.");
                session.setAttribute("adminShowAlert", "show");
                session.setAttribute("adminAlertOk", "success");
                session.setAttribute("adminAlertIcon", "bi bi-check-circle me-1");


            
        response.sendRedirect("pages-rooms.jsp");
        
    }catch(Exception e){
                    session.setAttribute("adminAlertLog", "Üzgünüz bir hata oluştur. Oda Kayıt edilmedi.");
                session.setAttribute("adminShowAlert", "true");
                session.setAttribute("adminAlertOk", "danger");
                session.setAttribute("adminAlertIcon", "bi bi-exclamation-octagon me-1");
                response.sendRedirect("pages-rooms.jsp");

    }

    }
    if(_page.equals("roomEdit")){
    try{
        String id = request.getParameter("id");
        String img = request.getParameter("uploadImg");
        String name = request.getParameter("roomName");
        String roomCount = request.getParameter("roomCount");
        String soldCount= request.getParameter("soldCount");
        String roomPrice= request.getParameter("roomPrice");
        String roomSalePrice= request.getParameter("roomSalePrice");
        String roomSaleActive= request.getParameter("roomSaleActive");
        String roomActive= request.getParameter("roomActive");
        String maxCustCount= request.getParameter("maxCust");
        
        String sqlQuery = "UPDATE `room` SET `name`='"+name+"',`price`='"+roomPrice+"', `soldCount`='"+soldCount+"',`maxRoomCount`='"+roomCount+"',`salePrice`='"+roomSalePrice+"',`avabilve`='"+roomActive+"',`saleActive`='"+roomSaleActive+"',`maxCust`='"+maxCustCount+"' WHERE 'id' = '"+id+"'";
        mySql mysql = new mySql();
        mysql.editInsertData(sqlQuery);
        
        
                session.setAttribute("adminAlertLog", "Oda başarılı bir şekilde güncellendi.");
                session.setAttribute("adminShowAlert", "true");
                session.setAttribute("adminAlertOk", "true");
                  session.setAttribute("adminAlertIcon", "bi bi-check-circle me-1");
              

        response.sendRedirect("pages-rooms.jsp");

    
    }catch(Exception e){
                            session.setAttribute("adminAlertLog", "Üzügünüz bir hata oluştu.Odaya düzelme işlemi olmadı!!");
                            session.setAttribute("adminShowAlert", "true");
                session.setAttribute("adminAlertIcon", "bi bi-exclamation-octagon me-1");

                            session.setAttribute("adminAlertOk", "false");
                                    response.sendRedirect("pages-rooms.jsp");

            }
            }
    if(_page.equals("roomDelete")){
    try{
    String id = request.getParameter("id");
        String sqlQuery = "DELETE FROM `room` WHERE `id` = '"+id+"'";
        mySql mysql = new mySql();
        mysql.editInsertData(sqlQuery);
        
         session.setAttribute("adminAlertLog", "Oda başarılı bir şekilde silindi.");
                session.setAttribute("adminShowAlert", "true");
                session.setAttribute("adminAlertOk", "true");
                session.setAttribute("adminAlertIcon", "bi bi-check-circle me-1");

        response.sendRedirect("pages-rooms.jsp");
    }catch(Exception e){
    session.setAttribute("adminAlertLog", "Üzügünüz bir hata oluştu.Odaya silme işlemi olmadı!!");
                            session.setAttribute("adminShowAlert", "true");
                session.setAttribute("adminAlertIcon", "bi bi-exclamation-octagon me-1");

                            session.setAttribute("adminAlertOk", "false");
                                    response.sendRedirect("pages-rooms.jsp");

    }
        
        
    
    }
            
%>