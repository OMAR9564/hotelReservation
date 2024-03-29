<%-- 
    Document   : checkPage
    Created on : Nov 8, 2022, 11:19:35 AM
    Author     : omerfaruk
--%>
<%@page import="com.omar.hotelreservation.sendEmail"%>
<%--<%@page import="com.omar.hotelreservation.tags"%>--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.omar.hotelreservation.getInfo"%>
<%@page import="com.omar.hotelreservation.mySql"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hotel", "root", "");


    String email = "";
    String pass = "";
    ArrayList<getInfo> info;
    System.out.println((String) session.getAttribute("whosePage") + "----------------");

    String userLogin = (String) session.getAttribute("whosePage");
    String whosePageLogOut = (String) session.getAttribute("whosePageLogOut");
    String isLogin = (String) session.getAttribute("isLogin");
    String isLogOut = (String) session.getAttribute("isLogOut");



        if (userLogin == "userLogin" || whosePageLogOut == "logOut") {

            if (isLogin == "false" && isLogOut == "false") {
                session.setAttribute("isLogin", "true");
                session.setAttribute("isLogOut", "false");

                response.sendRedirect("login.jsp");
            } else {
                if (isLogin == "false" && isLogOut == "true") {
                    try {
//                        try {
//                            Cookie[] cookies = request.getCookies();
//
//
//                            for (int i = 0; i < cookies.length; i++) {
//                                if (cookies[i].getName().equals("isimSoyisim")) {
//                                    cookies[i].setMaxAge(0);
//                                    response.addCookie(cookies[i]);
//                                    break;
//                                } else continue;
//
//
//                            }
//                        }catch (Exception e){
//                            response.sendRedirect("checkPage.jsp");
//                        }

                        email = "";
                        pass = "";
                        info = null;

                        System.out.println("bu lanet yerdeyim");
                        session.setAttribute("isLogin", "false");
                        session.setAttribute("isLogOut", "false");



                        response.sendRedirect("index.jsp");

                    } catch (Exception e) {
                        System.out.println(e);
                    }
                }

                try {
                    if (isLogin == "true" && isLogOut == "false") { //when user want to log in
                        System.out.println("detectice");
                        email = request.getParameter("logemail");
                        pass = request.getParameter("logpass");

                        mySql mysql = new mySql();
                        String sqlQuery = "SELECT * FROM `customer` WHERE `email` = ? AND `Pass` = ?";
                        PreparedStatement ps = con.prepareStatement(sqlQuery);
                        ps.setString(1, email.toString());
                        ps.setString(2, pass.toString());
                        ResultSet rls = ps.executeQuery();


                        info = mysql.sqlCon(rls);

                        if (info.size() == 1 && info.get(0).getIsAdmin().equals("0")) {
                            session.setAttribute("loginTag", "Log Out");
                            session.setAttribute("lgnUserName", info.get(0).getIsim_Soyisim());
                            session.setAttribute("lgnUserId", Integer.toString(info.get(0).getId()));

//                            Cookie isimSoyisim = new Cookie("isimSoyisim", info.get(0).getIsim_Soyisim());
//                            Cookie custId = new Cookie("custId", Integer.toString(info.get(0).getId()));
//                            isimSoyisim.setMaxAge(60 * 60 * 24);
//                            response.addCookie(isimSoyisim);
//                            custId.setMaxAge(60 * 60 * 24);
//                            response.addCookie(custId);
                            session.setAttribute("lgnUserNameCss", "login-user-name");

                            session.setAttribute("roomRevAvabilve", "true");
                            session.setAttribute("roomRevAvabilveLog", "Kullanıcı başarılı bir şekilde giriş yaptı");
                            response.sendRedirect("index.jsp");


                            session.setAttribute("loginIsValid", "hidden");
                        } else {
                            response.sendRedirect("login.jsp");
                            session.setAttribute("loginIsValid", "");

                        }

                        session.setAttribute("isLogin", "false");
                        session.setAttribute("isLogOut", "true");

                    }

                } catch (Exception e) {
                    System.out.println(e);
                    session.setAttribute("roomRevAvabilve", "false");
                    session.setAttribute("roomRevAvabilveLog", "Kullanıcı giriş yaparken bir hata oluştu(Kulllanıcı giriş bilgileri ile database'ten kontrol ederken)");
                    response.sendRedirect("index.jsp");

                }
            }
        }

        if ((String) session.getAttribute("whosePage") == "adminLogin") {
            try {

                email = request.getParameter("logemail");
                pass = request.getParameter("logpass");
                if ((email.equals("") || pass.equals(""))) {
                    response.sendRedirect("adminLoginPage.jsp");
                } else {
                    out.println(email);
                    mySql mysql = new mySql();
                    String sqlQuery = "SELECT * FROM `users` WHERE `email` = ? AND `password` = ?";
                    PreparedStatement ps = con.prepareStatement(sqlQuery);
                    ps.setString(1, email);
                    ps.setString(2, pass);

                    ResultSet rls = ps.executeQuery();

                    info = mysql.sqlCon(rls);


                    if (info.size() == 1 && info.get(0).getIsAdmin().equals("1")) {
                        session.setAttribute("adminName", info.get(0).getIsim_Soyisim());
                        session.setAttribute("adminMail", info.get(0).getEmail());
                        session.setAttribute("isAdmin", info.get(0).getIsAdmin());

                        response.sendRedirect("AdminPages/index.jsp");
                    } else {
                        response.sendRedirect("adminLoginPage.jsp");
                        session.setAttribute("loginIsValid", "");

                    }
                }

            } catch (Exception e) {
                System.out.println(e);
            }
        }

         if ((String) session.getAttribute("whosePage") == "revPage") {
            try {
                session.setAttribute("revCustMail", request.getParameter("mail"));
                session.setAttribute("revCustPass", request.getParameter("pass"));
                ArrayList<getInfo> mailCheckCust;
                mySql mysql = new mySql();
                        String custMail = (String)session.getAttribute("revCustMail");
                        String custPass = (String)session.getAttribute("revCustPass");
                        String sqlQuery = "SELECT * FROM `customer` WHERE `email` = ?";
                        PreparedStatement ps9 = con.prepareStatement(sqlQuery);
                    ps9.setString(1, custMail);
                ResultSet rls1 = ps9.executeQuery();




                Boolean passDogru = false;
                mailCheckCust = mysql.sqlConCust(rls1);
                int ImailCheckCust = 0;
                ImailCheckCust = mailCheckCust.size();
                if (ImailCheckCust > 0) {
                    session.setAttribute("emailForRevCust", mailCheckCust.get(0).getEmail());
                    session.setAttribute("passForRevCust", mailCheckCust.get(0).getSifre());
                    String passForRevCust = (String) session.getAttribute("passForRevCust");

                    if (!(custPass.equals(passForRevCust))) {

                        session.setAttribute("roomRevAvabilve", "false");
                        passDogru = false;
                        session.setAttribute("roomRevAvabilveLog", "Giriğiniz Mail İçin Şifre Hatalıdır");
                        response.sendRedirect("index.jsp");
                        return;
                    } else passDogru = true;

                    if (passDogru) {

                        session.setAttribute("revCustName", new String(request.getParameter("name").getBytes("ISO-8859-9"), "UTF-8"));
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

                        String sqlQueryRev = "SELECT * FROM `reverasyonlar` WHERE `odaAdi` = ?";

                        PreparedStatement ps2 = con.prepareStatement(sqlQueryRev);
                        ps2.setString(1, ((String) session.getAttribute("revCustRoomId")));

                        String sqlQueryRoom = "SELECT * FROM `room` WHERE `id` = ?";

                        PreparedStatement ps3 = con.prepareStatement(sqlQueryRoom);
                        ps3.setString(1, ((String) session.getAttribute("revCustRoomId")));

                        ResultSet rls2 = ps2.executeQuery();
                        ResultSet rls3 = ps3.executeQuery();


                        infoRev = mysql.readReversaionData(rls2);
                        infoRoom = mysql.readRoomsData(rls3);
                        System.out.println((infoRoom.get(0).getRoomCount()) + "***********");
                        int strRoomCount = (infoRoom.get(0).getRoomCount());
                        int strRoomSoldCount = (infoRoom.get(0).getRoomSoldCount());
                        int strRoomMaxCust = (infoRoom.get(0).getRoomMaxCustCount());
                        int strRoomCustCount = Integer.parseInt((String) session.getAttribute("revCustCount"));


                        ArrayList<getInfo> revDateCheck;
                        String sqlQueryDate = "SELECT * FROM `reverasyonlar` WHERE `isDatePast` = '0'";
                        revDateCheck = mysql.CsqlRevDate(sqlQueryDate);
                        boolean dateIsbetwen = false;

                        for (int i = 0; i < revDateCheck.size(); i++) {
                            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

                            String getCheckGTarihi = revDateCheck.get(i).getCheckGTarihi();
                            Date startDate = sdf.parse(getCheckGTarihi);
                            String getCheckCTarihi = revDateCheck.get(i).getCheckCTarihi();
                            Date endDate = sdf.parse(getCheckCTarihi);
                            String strdateToValidate = request.getParameter("gTarihi");
                            Date dateToValidate = sdf.parse(strdateToValidate);

                            if (dateToValidate.after(startDate) && dateToValidate.before(endDate)) {
                                dateIsbetwen = true;
                                break;
                            } else {
                                dateIsbetwen = false;
                            }
                        }
                        for (int i = 0; i < revDateCheck.size(); i++) {
                            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

                            String getCheckGTarihi = revDateCheck.get(i).getCheckGTarihi();
                            Date startDate = sdf.parse(getCheckGTarihi);
                            String getCheckCTarihi = revDateCheck.get(i).getCheckCTarihi();
                            Date endDate = sdf.parse(getCheckCTarihi);

                            Date dateToValidate = sdf.parse(request.getParameter("cTarihi"));

                            if (dateToValidate.after(startDate) && dateToValidate.before(endDate)) {
                                dateIsbetwen = true;
                                break;
                            } else {
                                dateIsbetwen = false;
                            }
                        }

                        if (dateIsbetwen == true && !(strRoomSoldCount < strRoomCount)) {
                            session.setAttribute("roomRevAvabilve", "false");
                            session.setAttribute("roomRevAvabilveLog", "Seçtiğiniz Tarihler Müsait Değil!");
                            response.sendRedirect("index.jsp");

                        } else {


                            if (strRoomMaxCust >= strRoomCustCount) {
                                if (strRoomSoldCount < strRoomCount) {
                                    session.setAttribute("roomRevAvabilve", "true");
                                    session.setAttribute("roomRevAvabilveLog", "Odanız Başarılı Bir Şekilde Reveersayonu Alındı.");
                                    response.sendRedirect("index.jsp");

                                }
                                if (dateIsbetwen == false && !(strRoomSoldCount < strRoomCount)) {
                                    session.setAttribute("roomRevAvabilve", "false");
                                    session.setAttribute("roomRevAvabilveLog", "Seçtiğiniz Oda Dolmuştur! Başka bir oda seçtin. Yada Tarihi Değiştiriniz");
                                    response.sendRedirect("index.jsp");

                                }
                            } else {
                                session.setAttribute("roomRevAvabilve", "false");
                                session.setAttribute("roomRevAvabilveLog", "Seçtiğiniz Oda Misafir Sayısına Uygun Değildir! Başka bir oda seçtin. Yada Misafir Sayısını Azaltınız");
                                response.sendRedirect("index.jsp");

                            }
                            if ((String) session.getAttribute("roomRevAvabilve") == "true") {
                                int newSoldCount = (infoRoom.get(0).getRoomSoldCount());
                                newSoldCount++;
                                System.out.println(newSoldCount + "omer-------omer");
                                String sqlQueryRoom1 = "UPDATE `room` SET `soldCount` = ? WHERE `id` = ?";

                                PreparedStatement ps4 = con.prepareStatement(sqlQueryRoom1);
                                ps4.setString(1, Integer.toString(newSoldCount));
                                ps4.setString(2, ((String) session.getAttribute("revCustRoomId")));
                                ps4.execute();

                                String sqlQuery1 = "INSERT INTO `reverasyonlar`(`musteriAdi`, `kisiSayisi`, `girisTarihi`, `cikisTarihi`, `email`, `telefon`, `odaAdi`, `cinsiyet`, `isDatePast`) VALUES (?, ? , ?, ?, ?, ?, ?, ?, ?)";

                                PreparedStatement ps5 = con.prepareStatement(sqlQuery1);
                                ps5.setString(1, (String) session.getAttribute("revCustName"));
                                ps5.setString(2, ((String) session.getAttribute("revCustCount")));
                                ps5.setString(3, (String) session.getAttribute("revCustGTarihi"));
                                ps5.setString(4, ((String) session.getAttribute("revCustCTarihi")));
                                ps5.setString(5, (String) session.getAttribute("revCustMail"));
                                ps5.setString(6, (String) session.getAttribute("revCustPhone"));
                                ps5.setString(7, ((String) session.getAttribute("revCustRoomId")));
                                ps5.setString(8, ((String) session.getAttribute("revCustGander")));
                                ps5.setString(9, "0");

                                ps5.execute();


                                session.setAttribute("whosePage", "");
                                response.sendRedirect("index.jsp");
                            }
                        }
                    }
                }
                 else {
                    session.setAttribute("revCustRoomId", request.getParameter("room"));
                    session.setAttribute("revCustCount", request.getParameter("custCount"));

                    ArrayList<getInfo> infoRoom;
                    ArrayList<getInfo> infoRev;

                    String sqlQueryRev = "SELECT * FROM `reverasyonlar` WHERE `odaAdi` = ?";

                    PreparedStatement ps2 = con.prepareStatement(sqlQueryRev);
                    ps2.setString(1, ((String) session.getAttribute("revCustRoomId")));

                    String sqlQueryRoom = "SELECT * FROM `room` WHERE `id` = ?";

                    PreparedStatement ps3 = con.prepareStatement(sqlQueryRoom);
                    ps3.setString(1, ((String) session.getAttribute("revCustRoomId")));

                    ResultSet rls2 = ps2.executeQuery();
                    ResultSet rls3 = ps3.executeQuery();


                    infoRev = mysql.readReversaionData(rls2);
                    infoRoom = mysql.readRoomsData(rls3);
                    System.out.println((infoRoom.get(0).getRoomCount()) + "***********");
                    int strRoomCount = (infoRoom.get(0).getRoomCount());
                    int strRoomSoldCount = (infoRoom.get(0).getRoomSoldCount());
                    int strRoomMaxCust = (infoRoom.get(0).getRoomMaxCustCount());
                    int strRoomCustCount = Integer.parseInt((String) session.getAttribute("revCustCount"));


                    ArrayList<getInfo> revDateCheck;
                    String sqlQueryDate = "SELECT * FROM `reverasyonlar` WHERE `isDatePast` = '0'";
                    revDateCheck = mysql.CsqlRevDate(sqlQueryDate);
                    boolean dateIsbetwen = false;

                    for (int i = 0; i < revDateCheck.size(); i++) {
                        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

                        String getCheckGTarihi = revDateCheck.get(i).getCheckGTarihi();
                        Date startDate = sdf.parse(getCheckGTarihi);
                        String getCheckCTarihi = revDateCheck.get(i).getCheckCTarihi();
                        Date endDate = sdf.parse(getCheckCTarihi);
                        String strdateToValidate = request.getParameter("gTarihi");
                        Date dateToValidate = sdf.parse(strdateToValidate);

                        if (dateToValidate.after(startDate) && dateToValidate.before(endDate)) {
                            dateIsbetwen = true;
                            break;
                        } else {
                            dateIsbetwen = false;
                        }
                    }
                    for (int i = 0; i < revDateCheck.size(); i++) {
                        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

                        String getCheckGTarihi = revDateCheck.get(i).getCheckGTarihi();
                        Date startDate = sdf.parse(getCheckGTarihi);
                        String getCheckCTarihi = revDateCheck.get(i).getCheckCTarihi();
                        Date endDate = sdf.parse(getCheckCTarihi);

                        Date dateToValidate = sdf.parse(request.getParameter("cTarihi"));

                        if (dateToValidate.after(startDate) && dateToValidate.before(endDate)) {
                            dateIsbetwen = true;
                            break;
                        } else {
                            dateIsbetwen = false;
                        }
                    }

                    if (dateIsbetwen == true && !(strRoomSoldCount < strRoomCount)) {
                        session.setAttribute("roomRevAvabilve", "false");
                        session.setAttribute("roomRevAvabilveLog", "Seçtiğiniz Tarihler Müsait Değil!");
                        response.sendRedirect("index.jsp");

                    } else {


                        if (strRoomMaxCust >= strRoomCustCount) {
                            if (strRoomSoldCount < strRoomCount) {
                                session.setAttribute("roomRevAvabilve", "true");
                                session.setAttribute("roomRevAvabilveLog", "Odanız Başarılı Bir Şekilde Reveersayonu Alındı.");
                                String msg = "Odanız Başarılı Bir Şekilde Reveersayonu Alındı.\n Randevunuz onaylandığında size geri dönüş sağlayacağız\n"
                                + "Giriş Tarihi: " + request.getParameter("gTarihi") +"\n"
                                +"Çıkış Tarihi: "+ request.getParameter("cTarihi") +"\n";
                                String sub = "Rezerversayon bilgileri";
                                sendEmail sendemail = new sendEmail();
                                String to = (String) session.getAttribute("revCustMail");
                                sendemail.mailInfo(msg, sub, to);
                                response.sendRedirect("index.jsp");

                            }
                            if (dateIsbetwen == false && !(strRoomSoldCount < strRoomCount)) {
                                session.setAttribute("roomRevAvabilve", "false");
                                session.setAttribute("roomRevAvabilveLog", "Seçtiğiniz Oda Dolmuştur! Başka bir oda seçtin. Yada Tarihi Değiştiriniz");
                                response.sendRedirect("index.jsp");

                            }
                        } else {
                            session.setAttribute("roomRevAvabilve", "false");
                            session.setAttribute("roomRevAvabilveLog", "Seçtiğiniz Oda Misafir Sayısına Uygun Değildir! Başka bir oda seçtin. Yada Misafir Sayısını Azaltınız");
                            response.sendRedirect("index.jsp");

                        }
                        if ((String) session.getAttribute("roomRevAvabilve") == "true") {
                            int newSoldCount = (infoRoom.get(0).getRoomSoldCount());
                          

                            //bırda
                            String revCustName = new String(request.getParameter("name").getBytes("ISO-8859-9"), "UTF-8");
                            session.setAttribute("revCustName", revCustName);
                            session.setAttribute("revCustGTarihi", request.getParameter("gTarihi"));
                            session.setAttribute("revCustCTarihi", request.getParameter("cTarihi"));
                            session.setAttribute("revCustCount", request.getParameter("custCount"));
                            session.setAttribute("revCustPhone", request.getParameter("phone"));
                            session.setAttribute("revCustRoomId", request.getParameter("room"));
                            session.setAttribute("revCustGander", request.getParameter("gander"));

                            int newSoldCount1 = (infoRoom.get(0).getRoomSoldCount());
                            newSoldCount1++;
                            System.out.println(newSoldCount1 + "omer-------omer");
                            String sqlQueryRoom1 = "UPDATE `room` SET `soldCount` = ? WHERE `id` = ?";

                            PreparedStatement ps4 = con.prepareStatement(sqlQueryRoom1);
                            ps4.setString(1, Integer.toString(newSoldCount1));
                            ps4.setString(2, ((String) session.getAttribute("revCustRoomId")));
                            ps4.execute();


                            String sqlQuery2 = "INSERT INTO `reverasyonlar`(`musteriAdi`, `kisiSayisi`, `girisTarihi`, `cikisTarihi`, `email`, `telefon`, `odaAdi`, `cinsiyet`, `isDatePast`) VALUES (?,?,?,?,?,?,?,?,?)";
                            PreparedStatement ps5 = con.prepareStatement(sqlQuery2);
                            ps5.setString(1, (String) session.getAttribute("revCustName"));
                            ps5.setString(2, (String) session.getAttribute("revCustCount"));
                            ps5.setString(3, (String) session.getAttribute("revCustGTarihi"));
                            ps5.setString(4, (String) session.getAttribute("revCustCTarihi"));
                            ps5.setString(5, (String) session.getAttribute("revCustMail"));
                            ps5.setString(6, (String) session.getAttribute("revCustPhone"));
                            ps5.setString(7, ((String) session.getAttribute("revCustRoomId")));
                            ps5.setString(8, ((String) session.getAttribute("revCustGander")));
                            ps5.setString(9, "0");

                            ps5.execute();

                            String newCust = "INSERT INTO `customer`(`name`, `email`, `phone`, `Pass`) VALUES (?,?,?,?)";

                            PreparedStatement ps6 = con.prepareStatement(newCust);
                            ps6.setString(1, (String) session.getAttribute("revCustName"));
                            ps6.setString(2, (String) session.getAttribute("revCustMail"));
                            ps6.setString(3, ((String) session.getAttribute("revCustPhone")));
                            ps6.setString(4, (String) session.getAttribute("revCustPass"));
                            ps6.execute();

                            session.setAttribute("roomRevAvabilve", "true");
                            session.setAttribute("roomRevAvabilveLog", "Odanız Başarılı Bir Şekilde Reveersayonu Alındı.");

        %>
        <h:commandLink value="UserDetail" action="index.jsp" />
        <%
                        }
                    }
                }

            } catch (Exception e) {
                session.setAttribute("roomRevAvabilve", "false");
                session.setAttribute("roomRevAvabilveLog", "mealsef bir sorun çıktı.");
                session.setAttribute("roomRevAvabilve", "true");

                response.sendRedirect("index.jsp");
                System.out.println(e);
            }
        }
        System.out.println(request.getParameter("indexOdaNameRev") + "*****");

        if ((String) session.getAttribute("whosePage") == "indexRevSec") {

            session.setAttribute("gTarihi", request.getParameter("indexGTarihi"));
            session.setAttribute("cTarihi", request.getParameter("indexCTarihi"));
            session.setAttribute("revSecCustCount", request.getParameter("indexPersonCountRev"));
            session.setAttribute("revSecRoomId", request.getParameter("indexOdaNameRev"));

            mySql mysql = new mySql();
            ArrayList<getInfo> infoRev;
            ArrayList<getInfo> infoRoom;


            String sqlQueryRev = "SELECT * FROM `reverasyonlar` WHERE `odaAdi` = ?";

            PreparedStatement ps2 = con.prepareStatement(sqlQueryRev);
            ps2.setString(1, ((String) session.getAttribute("revSecRoomId")));
            ResultSet rls2 = ps2.executeQuery();
//            rls2.close();


            String sqlQueryRoom = "SELECT * FROM `room` WHERE `id` = ?";

            PreparedStatement ps3 = con.prepareStatement(sqlQueryRoom);
            ps3.setString(1, ((String) session.getAttribute("revSecRoomId")));
            ResultSet rls3 = ps3.executeQuery();


            infoRev = mysql.readReversaionData(rls2);
            infoRoom = mysql.readRoomsData(rls3);
//            rls3.close();
            System.out.println((infoRoom.get(0).getRoomCount()) + "***********");
            int strRoomCount = (infoRoom.get(0).getRoomCount());
            int strRoomSoldCount = (infoRoom.get(0).getRoomSoldCount());
            int strRoomMaxCust = (infoRoom.get(0).getRoomMaxCustCount());


            ArrayList<getInfo> revDateCheck;
            String sqlQueryDate = "SELECT * FROM `reverasyonlar` WHERE `isDatePast` = '0'";
            revDateCheck = mysql.CsqlRevDate(sqlQueryDate);
            boolean dateIsbetwen = false;
            int revSize = revDateCheck.size();
            System.out.println(revSize + "123omer");

            for (int i = 0; i < revSize; i++) {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                SimpleDateFormat sdf1 = new SimpleDateFormat("MM/dd/yyyy");

                String getCheckGTarihi = revDateCheck.get(i).getCheckGTarihi();
                Date startDate = sdf.parse(getCheckGTarihi);
                String getCheckCTarihi = revDateCheck.get(i).getCheckCTarihi();
                Date endDate = sdf.parse(getCheckCTarihi);
                String strdateToValidate = request.getParameter("indexGTarihi");
                Date dateToValidate = sdf1.parse(strdateToValidate);

                if (dateToValidate.after(startDate) && dateToValidate.before(endDate)) {
                    dateIsbetwen = true;
                    break;
                } else {
                    dateIsbetwen = false;
                }
            }
            for (int i = 0; i < revDateCheck.size(); i++) {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                SimpleDateFormat sdf1 = new SimpleDateFormat("MM/dd/yyyy");

                String getCheckGTarihi = revDateCheck.get(i).getCheckGTarihi();
                Date startDate = sdf.parse(getCheckGTarihi);
                String getCheckCTarihi = revDateCheck.get(i).getCheckCTarihi();
                Date endDate = sdf.parse(getCheckCTarihi);

                Date dateToValidate = sdf1.parse(request.getParameter("indexCTarihi"));

                if (dateToValidate.after(startDate) && dateToValidate.before(endDate)) {
                    dateIsbetwen = true;
                    break;
                } else {
                    dateIsbetwen = false;
                }
            }

            if(dateIsbetwen == true && !(strRoomSoldCount < strRoomCount)) {
                session.setAttribute("roomRevAvabilve", "false");
                session.setAttribute("roomRevAvabilveLog", "Seçtiğiniz Tarihler Müsait Değil!");
                response.sendRedirect("index.jsp");

            }
            else {





                if (strRoomMaxCust >= Integer.parseInt((String) session.getAttribute("revSecCustCount"))) {
                    if (strRoomSoldCount < strRoomCount) {

//omer

                        response.sendRedirect("rezervasyonPage.jsp");


                    } if (dateIsbetwen == false && !(strRoomSoldCount < strRoomCount)){
                        session.setAttribute("roomRevAvabilve", "false");
                        session.setAttribute("roomRevAvabilveLog", "Seçtiğiniz Oda Dolmuştur! Başka bir oda seçtin. Yada Tarihi Değiştiriniz");
                        response.sendRedirect("index.jsp");

                    }
                } else {
                    session.setAttribute("roomRevAvabilve", "false");
                    session.setAttribute("roomRevAvabilveLog", "Seçtiğiniz Oda Misafir Sayısına Uygun Değildir! Başka bir oda seçtin. Yada Misafir Sayısını Azaltınız");
                    response.sendRedirect("index.jsp");

                }
            }
            out.println((String) session.getAttribute("roomRevAvabilveLog"));
        }


//    session.setAttribute("whosePage", "");
    }catch(Exception e ){
    //System.out.println(e);
%>
        <h:commandLink value="UserDetail" action="index.jsp" />
        <%
    }
System.out.println(session.getAttribute("lgnUserName")+"-------11111------");

        %>
    </body>
</html>
