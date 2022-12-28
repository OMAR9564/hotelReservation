<%-- 
    Document   : checkPage
    Created on : Nov 8, 2022, 11:19:35 AM
    Author     : omerfaruk
--%>
<%--<%@page import="com.omar.hotelreservation.tags"%>--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.omar.hotelreservation.getInfo"%>
<%@page import="com.omar.hotelreservation.mySql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            
            String email = "";
            String pass = "";
            ArrayList<getInfo> info;
            System.out.println((String)session.getAttribute("whosePage") + "----------------");

            if((String)session.getAttribute("whosePage") == "userLogin"){
            if((String)session.getAttribute("isLogin") == "true" && (String)session.getAttribute("isLogOut") == "true"){
                try{
                      email = "";
                      pass = "";
                      info = null;
                      System.out.println("bu lanet yerdeyim");
                      session.setAttribute("isLogin", "false");

                }
                catch(Exception e){
                    System.out.println(e);
                }
            }

                try{
                if((String)session.getAttribute("isLogin") == "false" && (String)session.getAttribute("isLogOut") == "false"){
                System.out.println("detectice");
                email = request.getParameter("logemail");
                pass = request.getParameter("logpass");
                
                mySql mysql = new mySql();
                String sqlQuery = "SELECT * FROM `users` WHERE `email` = '"+email+"' AND `password` = '"+pass+"'";

                info = mysql.sqlCon(sqlQuery);

                if(info.size() == 1 && info.get(0).getIsAdmin().equals("0")){
                    session.setAttribute("loginTag", "Log Out");
                    session.setAttribute("lgnUserName", info.get(0).getIsim_Soyisim());
                    session.setAttribute("lgnUserNameCss", "login-user-name");
                    
                    response.sendRedirect("index.jsp");
                    
                    session.setAttribute("loginIsValid", "hidden");
                }

                else {
                    response.sendRedirect("login.jsp");
                    session.setAttribute("loginIsValid", "");

                    }
                    
                    session.setAttribute("isLogin", "true");
                    session.setAttribute("isLogOut", "true");

                
                }
            }
            catch(Exception e){
            }
        }
        if((String)session.getAttribute("whosePage") == "adminLogin"){
        try{
                
                    email = request.getParameter("logemail");
                    pass = request.getParameter("logpass");
                if((email.equals("") || pass.equals(""))){
                    response.sendRedirect("adminLoginPage.jsp");
                }else{
                    out.println(email);
                    mySql mysql = new mySql();
                    String sqlQuery = "SELECT * FROM `users` WHERE `email` = '"+email+"' AND `password` = '"+pass+"'";

                    info = mysql.sqlCon(sqlQuery);

                    
                    if(info.size() == 1 && info.get(0).getIsAdmin().equals("1")){
                    session.setAttribute("adminName", info.get(0).getIsim_Soyisim());
                    session.setAttribute("adminMail", info.get(0).getEmail());
                    session.setAttribute("isAdmin", info.get(0).getIsAdmin());

                        response.sendRedirect("AdminPages/index.jsp");
                    }
                    else{
                        response.sendRedirect("adminLoginPage.jsp");
                        session.setAttribute("loginIsValid", "");

                    }
                    }
                  
            }catch(Exception e){
                System.out.println(e);
            }
            }
            
            if((String)session.getAttribute("whosePage") == "revPage"){
                try{
                        session.setAttribute("revCustMail", request.getParameter("mail")); 
                        session.setAttribute("revCustPass", request.getParameter("pass")); 
                        ArrayList<getInfo> mailCheckCust;
                        mySql mysql = new mySql();
                        String sqlQuery = "SELECT * FROM `customer` WHERE `mail` = '"+(String)session.getAttribute("revCustMail")+"' AND `Pass` = '"+(String)session.getAttribute("revCustPass")+"'";
                        mailCheckCust = mysql.sqlConCust(sqlQuery);
                        if(true){

                        session.setAttribute("revCustName", request.getParameter("name")); 
                        session.setAttribute("revCustGTarihi", request.getParameter("gTarihi")); 
                        session.setAttribute("revCustCTarihi", request.getParameter("cTarihi")); 
                        session.setAttribute("revCustCount", request.getParameter("custCount")); 
                        session.setAttribute("revCustPhone", request.getParameter("phone")); 
                        session.setAttribute("revCustRoomId", request.getParameter("room")); 
                        session.setAttribute("revCustGander", request.getParameter("gander")); 
                        session.setAttribute("loginIsValid", "hidden");
                        session.setAttribute("roomRevAvabilve", "true");

                        ArrayList<getInfo> infoRoom;
                        ArrayList<getInfo> infoRev;

                        String sqlQueryRev = "SELECT * FROM `reverasyonlar` WHERE `odaAdi` = '"+(String)session.getAttribute("revSecRoomId")+"'";
                        String sqlQueryRoom = "SELECT * FROM `room` WHERE `id` = '"+(String)session.getAttribute("revSecRoomId")+"'";

                        infoRev = mysql.readReversaionData(sqlQueryRev);
                        infoRoom = mysql.readRoomsData(sqlQueryRoom);
                        System.out.println((infoRoom.get(0).getRoomCount())+"***********");
                        int strRoomCount = (infoRoom.get(0).getRoomCount());
                        int strRoomSoldCount = (infoRoom.get(0).getRoomSoldCount());
                        int strRoomMaxCust = (infoRoom.get(0).getRoomMaxCustCount());

                        
                        if(strRoomMaxCust >= Integer.parseInt((String)session.getAttribute("revSecCustCount"))){
                            if(strRoomSoldCount <= strRoomCount){
                                session.setAttribute("roomRevAvabilve", "true");
                                session.setAttribute("roomRevAvabilveLog", "Odanız Başarılı Bir Şekilde Reveersayonu Alındı.");

                            }
                            else{
                                session.setAttribute("roomRevAvabilve", "false");
                                session.setAttribute("roomRevAvabilveLog", "Seçtiğiniz Oda Dolmuştur! Başka bir oda seçtin. Yada Tarihi Değiştiriniz");
                                response.sendRedirect("index.jsp");

                            }
                        }
                        else{
                                session.setAttribute("roomRevAvabilve", "false");
                                session.setAttribute("roomRevAvabilveLog", "Seçtiğiniz Oda Misafir Sayısına Uygun Değildir! Başka bir oda seçtin. Yada Misafir Sayısını Azaltınız");
                                response.sendRedirect("index.jsp");

                            }
                        if((String)session.getAttribute("roomRevAvabilve") == "true"){
                            int newSoldCount = (infoRoom.get(0).getRoomSoldCount());
                            newSoldCount++;
                            System.out.println(newSoldCount + "omer-------omer");
                            String sqlQueryRoom1 = "UPDATE `room` SET `soldCount` = '"+newSoldCount+"' WHERE `id` = '"+Integer.parseInt((String)session.getAttribute("revCustRoomId"))+"'";
                        sqlQuery = "INSERT INTO `reverasyonlar`(`musteriAdi`, `kisiSayisi`, `girisTarihi`, `cikisTarihi`, `email`, `telefon`, `odaAdi`, `cinsiyet`) VALUES ('"+(String)session.getAttribute("revCustName")+"','"+Integer.parseInt((String)session.getAttribute("revCustCount"))+"','"+(String)session.getAttribute("revCustGTarihi")+"','"+(String)session.getAttribute("revCustCTarihi")+"','"+(String)session.getAttribute("revCustMail")+"','"+(String)session.getAttribute("revCustPhone")+"', '"+(String)session.getAttribute("revCustRoomId")+"','"+(String)session.getAttribute("revCustGander")+"')";
                        
                        mysql.editInsertData(sqlQueryRoom1);

                        mysql.editInsertData(sqlQuery);
                        
            
                        
                        response.sendRedirect("index.jsp");
            }
                        
            }else{
                        session.setAttribute("revCustName", request.getParameter("name")); 
                        session.setAttribute("revCustGTarihi", request.getParameter("gTarihi")); 
                        session.setAttribute("revCustCTarihi", request.getParameter("cTarihi")); 
                        session.setAttribute("revCustCount", request.getParameter("custCount")); 
                        session.setAttribute("revCustPhone", request.getParameter("phone")); 
                        session.setAttribute("revCustRoomId", request.getParameter("room")); 
                        session.setAttribute("revCustGander", request.getParameter("gander"));   
                        sqlQuery = "INSERT INTO `reverasyonlar`(`musteriAdi`, `kisiSayisi`, `girisTarihi`, `cikisTarihi`, `email`, `telefon`, `odaAdi`, `cinsiyet`) VALUES ('"+(String)session.getAttribute("revCustName")+"','"+Integer.parseInt((String)session.getAttribute("revCustCount"))+"','"+(String)session.getAttribute("revCustGTarihi")+"','"+(String)session.getAttribute("revCustCTarihi")+"','"+(String)session.getAttribute("revCustMail")+"','"+(String)session.getAttribute("revCustPhone")+"', '"+(String)session.getAttribute("revCustRoomId")+"','"+(String)session.getAttribute("revCustGander")+"')";
                        String newCust = "INSERT INTO `customer`(`name`, `mail`, `phone`, `Pass`) VALUES ('"+(String)session.getAttribute("revCustName")+"','"+(String)session.getAttribute("revCustMail")+"','"+(String)session.getAttribute("revCustPhone")+"','"+(String)session.getAttribute("revCustPass")+"')";
                        mysql.editInsertData(newCust);
                        mysql.editInsertData(sqlQuery);
                        
                        session.setAttribute("roomRevAvabilve", "true");
                        session.setAttribute("roomRevAvabilveLog", "Odanız Başarılı Bir Şekilde Reveersayonu Alındı.");
                        
                        response.sendRedirect("index.jsp");
                        
            }
            
            }catch(Exception e){
            session.setAttribute("roomRevAvabilve", "false");
                                session.setAttribute("roomRevAvabilveLog", "mealsef bir sorun çıktı.");
                System.out.println(e);
            }
            }
                                    System.out.println(request.getParameter("indexOdaNameRev")+ "*****");

            if((String)session.getAttribute("whosePage") == "indexRevSec"){

                session.setAttribute("gTarihi", request.getParameter("indexGTarihi")); 
                session.setAttribute("cTarihi", request.getParameter("indexCTarihi")); 
                session.setAttribute("revSecCustCount", request.getParameter("indexPersonCountRev")); 
                session.setAttribute("revSecRoomId", request.getParameter("indexOdaNameRev")); 
                
                mySql mysql = new mySql();
                ArrayList<getInfo> infoRev;
                ArrayList<getInfo> infoRoom;

                String sqlQueryRev = "SELECT * FROM `reverasyonlar` WHERE `odaAdi` = '"+(String)session.getAttribute("revSecRoomId")+"'";
                String sqlQueryRoom = "SELECT * FROM `room` WHERE `id` = '"+(String)session.getAttribute("revSecRoomId")+"'";

                infoRev = mysql.readReversaionData(sqlQueryRev);
                infoRoom = mysql.readRoomsData(sqlQueryRoom);
                System.out.println((infoRoom.get(0).getRoomCount())+"***********");
                int strRoomCount = (infoRoom.get(0).getRoomCount());
                int strRoomSoldCount = (infoRoom.get(0).getRoomSoldCount());
                int strRoomMaxCust = (infoRoom.get(0).getRoomMaxCustCount());
                
                    if(true){
                        if(strRoomMaxCust >= Integer.parseInt((String)session.getAttribute("revSecCustCount"))){
                            if(strRoomSoldCount <= strRoomCount){
                                session.setAttribute("roomRevAvabilve", "true");
                                session.setAttribute("roomRevAvabilveLog", "Odanız Başarılı Bir Şekilde Reveersayonu Alındı.");
                                response.sendRedirect("rezervasyonPage.jsp");

                            }
                            else{
                                session.setAttribute("roomRevAvabilve", "false");
                                session.setAttribute("roomRevAvabilveLog", "Seçtiğiniz Oda Dolmuştur! Başka bir oda seçtin. Yada Tarihi Değiştiriniz");
                                response.sendRedirect("index.jsp");

                            }
                        }
                        else{
                                session.setAttribute("roomRevAvabilve", "false");
                                session.setAttribute("roomRevAvabilveLog", "Seçtiğiniz Oda Misafir Sayısına Uygun Değildir! Başka bir oda seçtin. Yada Misafir Sayısını Azaltınız");
                                response.sendRedirect("index.jsp");

                            }
                    } 
                    out.println((String)session.getAttribute("roomRevAvabilveLog"));
                }
            

        


        %>
    </body>
</html>
