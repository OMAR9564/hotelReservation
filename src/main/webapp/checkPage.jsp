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
            System.out.println("chech-------------------");      
        System.out.println(tags.getIsLogOut() + "----" + tags.getIsLogin());
        System.out.println("-------------------check");
            System.out.println(tags.getIsLogin());
            String email = "";
            String pass = "";
            ArrayList<getInfo> info;
                                System.out.println(tags.getHowsLogin());

            if(tags.getHowsLogin().equals("userLogin")){
                if(tags.getIsLogin().equals(true)){
                try{
                      email = "";
                      pass = "";
                      info = null;
                      System.out.println("bu lanet yerdeyim");
                      tags.setIsLogin(false);

                }
                catch(Exception e){
                    System.out.println(e);
                }
            }

                try{
                if(tags.getIsLogin().equals(false)){
                email = request.getParameter("logemail");
                pass = request.getParameter("logpass");
                if((email.equals("") || pass.equals(""))){
                    response.sendRedirect("login.jsp");
                }else{
                out.println(email);
                mySql mysql = new mySql();
                String sqlQuery = "SELECT * FROM `users` WHERE `email` = '"+email+"' AND `password` = '"+pass+"'";

                info = mysql.sqlCon(sqlQuery);
                        System.out.println("xx222xxxxxx");

                if(info.size() == 1 && info.get(0).getIsAdmin().equals("0")){
                    tags.setLoginTag("Log Out");
                    tags.setLgnUserName(info.get(0).getIsim_Soyisim());
                    
                    tags.setLgnUserNameCss("login-user-name");
                    response.sendRedirect("index.jsp");

                    tags.setLoginIsValid("hidden");
                }

                else {
                    response.sendRedirect("login.jsp");
                    tags.setLoginIsValid("");

                    }

                    tags.setIsLogin(true);

                }
                }
            }
            catch(Exception e){
                System.out.println(e);
            }
        }
        if(tags.getHowsLogin().equals("adminLogin")){
            System.out.println("xxxxxxxx");
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
                    System.out.println("xx222xxxxxx");

                    
                    if(info.size() == 1 && info.get(0).getIsAdmin().equals("1")){
                    tags.setAdminName(info.get(0).getIsim_Soyisim());
                    tags.setIsAdmin(info.get(0).getIsAdmin());
                                        System.out.println("xx222xxxxxx11111");

                        response.sendRedirect("adminPage.jsp");
                    }
                    else{
                        response.sendRedirect("adminLoginPage.jsp");
                        tags.setLoginIsValid("");

                    }
                    }
                  
            }catch(Exception e){
                System.out.println(e);
            }
            }

        


        %>
    </body>
</html>
