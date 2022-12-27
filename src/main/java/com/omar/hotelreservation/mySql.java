/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.omar.hotelreservation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 */
public class mySql {


    public ArrayList<getInfo> sqlCon(String sqlQuery) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup9?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup9", "9564");
            Statement stmt = con.createStatement();

            ResultSet rls = stmt.executeQuery(sqlQuery);

            while (rls.next()) {
                getInfo temp = new getInfo();
                temp.setId(rls.getInt("id"));
                temp.setIsim_Soyisim(rls.getString("name"));
                temp.setEmail(rls.getString("email"));
                temp.setIsAdmin(rls.getString("is_admin"));
                sqlInfo.add(temp);

            }
            con.close();

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    public ArrayList<getInfo> sqlConCust(String sqlQuery) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup9?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup9", "9564");
            Statement stmt = con.createStatement();

            ResultSet rls = stmt.executeQuery(sqlQuery);

            while (rls.next()) {
                getInfo temp = new getInfo();
                temp.setId(rls.getInt("id"));
                temp.setIsim_Soyisim(rls.getString("name"));
                temp.setEmail(rls.getString("mail"));
                temp.setIsAdmin(rls.getString("is_admin"));
                sqlInfo.add(temp);

            }
            con.close();

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    public ArrayList<getInfo> readReversaionData(String sqlQuery) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup9?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup9", "9564");
            Statement stmt = con.createStatement();

            ResultSet rls = stmt.executeQuery(sqlQuery);

            while (rls.next()) {
                getInfo temp = new getInfo();
                temp.setReverasyonId(rls.getInt("id"));
                temp.setCustName(rls.getString("musteriAdi"));
                temp.setCustCount(rls.getInt("kisiSayisi"));
                temp.setGirisTarihi(rls.getString("girisTarihi"));
                temp.setCikisTarihi(rls.getString("cikisTarihi"));
                temp.setCustMail(rls.getString("email"));
                temp.setCustPhone(rls.getString("telefon"));
                temp.setRoomName(rls.getString("odaAdi"));
                temp.setDurum(rls.getString("durum"));
                temp.setGander(rls.getString("cinsiyet"));
                            System.out.println(temp.getGander()+ "123123123");

                sqlInfo.add(temp);

            }
            con.close();

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    public ArrayList<getInfo> readRoomsData(String sqlQuery) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup9?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup9", "9564");
            Statement stmt = con.createStatement();

            ResultSet rls = stmt.executeQuery(sqlQuery);

            while (rls.next()) {
                getInfo temp = new getInfo();
                temp.setRoomId(rls.getInt("id"));
                temp.setRoomName(rls.getString("name"));
                temp.setRoomPrice(rls.getInt("price"));
                temp.setRoomSalePrice(rls.getInt("salePrice"));
                temp.setRoomSaleActive(rls.getInt("saleActive"));
                temp.setRoomImg(rls.getString("image"));
                temp.setRoomSoldCount(rls.getInt("soldCount"));
                temp.setRoomCount(rls.getInt("maxRoomCount"));
                temp.setRoomAvabilve(rls.getInt("avabilve"));
                temp.setRoomMaxCustCount(rls.getInt("maxCust"));
                sqlInfo.add(temp);

            }
            con.close();

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    public ArrayList<getInfo> readCustomersData(String sqlQuery) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup9?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup9", "9564");
            Statement stmt = con.createStatement();

            ResultSet rls = stmt.executeQuery(sqlQuery);

            while (rls.next()) {
                getInfo temp = new getInfo();
                temp.setCustId(rls.getInt("id"));
                temp.setCustName(rls.getString("name"));
                temp.setCustMail(rls.getString("mail"));
                temp.setCustPhone(rls.getString("phone"));
                sqlInfo.add(temp);

            }
            con.close();

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    
    public void editInsertData(String sqlQuery) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup9?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup9", "9564");
            Statement stmt = con.createStatement();

            stmt.execute(sqlQuery);
            con.close();

        } catch (Exception e) {

            System.out.println(e);
        }

    }
    public ArrayList<getInfo> readHotelSettings(String sqlQuery) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup9?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup9", "9564");
            Statement stmt = con.createStatement();

            ResultSet rls = stmt.executeQuery(sqlQuery);

            while (rls.next()) {
                getInfo temp = new getInfo();
                temp.setSettingId(rls.getInt("id"));
                temp.setHotelName(rls.getString("hotelName"));

                sqlInfo.add(temp);

            }
            con.close();

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    

}
