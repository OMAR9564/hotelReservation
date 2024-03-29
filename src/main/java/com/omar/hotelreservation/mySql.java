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


    public ArrayList<getInfo> sqlCon(ResultSet rls) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {
//            Class.forName("com.mysql.jdbc.Driver");
 //           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8888/hotel", "root", "root");
//            Statement stmt = con.createStatement();

//            ResultSet rls = stmt.executeQuery(sqlQuery);

            while (rls.next()) {
                getInfo temp = new getInfo();
                temp.setId(rls.getInt("id"));
                temp.setIsim_Soyisim(rls.getString("name"));
                temp.setEmail(rls.getString("email"));
                temp.setIsAdmin(rls.getString("is_admin"));
                sqlInfo.add(temp);

            }
//            con.close();

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    public ArrayList<getInfo> sqlConCust(ResultSet rls) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {

            while (rls.next()) {
                getInfo temp = new getInfo();
                temp.setId(rls.getInt("id"));
                temp.setIsim_Soyisim(rls.getString("name"));
                temp.setEmail(rls.getString("email"));
                temp.setIsAdmin(rls.getString("is_admin"));
                temp.setSifre(rls.getString("Pass"));
                sqlInfo.add(temp);

            }

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    public ArrayList<getInfo> readReversaionData(ResultSet rls1) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {

            while (rls1.next()) {
                getInfo temp = new getInfo();
                temp.setReverasyonId(rls1.getInt("id"));
                temp.setCustName(rls1.getString("musteriAdi"));
                temp.setCustCount(rls1.getInt("kisiSayisi"));
                temp.setCikisTarihi(rls1.getString("cikisTarihi"));
                temp.setGirisTarihi(rls1.getString("girisTarihi"));
                temp.setCustMail(rls1.getString("email"));
                temp.setCustPhone(rls1.getString("telefon"));
                temp.setRoomName(rls1.getString("odaAdi"));
                temp.setDurum(rls1.getString("durum"));
                temp.setGander(rls1.getString("cinsiyet"));
                temp.setIsDatePast(rls1.getString("isDatePast"));
                            System.out.println(temp.getRoomName()+ "123123123");

                sqlInfo.add(temp);

            }

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    public ArrayList<getInfo> readRoomsData(ResultSet rls) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {

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

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    public ArrayList<getInfo> readCustomersData(ResultSet rls) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {

            while (rls.next()) {
                getInfo temp = new getInfo();
                temp.setCustId(rls.getInt("id"));
                temp.setCustName(rls.getString("name"));
                temp.setCustMail(rls.getString("email"));
                temp.setCustPhone(rls.getString("phone"));
                sqlInfo.add(temp);

            }

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    
//    public void editInsertData(String sqlQuery) {
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hotel", "root", "");
//            Statement stmt = con.createStatement();
//
//            stmt.execute(sqlQuery);
//            con.close();
//
//        } catch (Exception e) {
//
//            System.out.println(e);
//        }
//
//    }
    public ArrayList<getInfo> readHotelSettings(ResultSet rls) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {


            while (rls.next()) {
                getInfo temp = new getInfo();
                temp.setSettingId(rls.getInt("id"));
                temp.setHotelName(rls.getString("hotelName"));

                sqlInfo.add(temp);

            }

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    
    public ArrayList<getInfo> RevsqlCon(String sqlQuery) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hotel", "root", "");
            Statement stmt = con.createStatement();

            ResultSet rls = stmt.executeQuery(sqlQuery);

            while (rls.next()) {
                getInfo temp = new getInfo();
                
                temp.setCDate(rls.getString("cikisTarihi"));
                temp.setId(rls.getInt("id"));
                temp.setRoomId(rls.getInt("odaAdi"));

                sqlInfo.add(temp);

            }
            con.close();

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    public ArrayList<getInfo> RoomsqlCon(String sqlQuery) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hotel", "root", "");
            Statement stmt = con.createStatement();

            ResultSet rls = stmt.executeQuery(sqlQuery);

            while (rls.next()) {
                getInfo temp = new getInfo();
                
                temp.setCSoldCount(rls.getInt("soldCount"));

                sqlInfo.add(temp);

            }
            con.close();

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    
    public void sqlInsert(String sqlQuery) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hotel", "root", "");
            Statement stmt = con.createStatement();

            stmt.execute(sqlQuery);
            con.close();


        } catch (Exception e) {

            System.out.println(e);
        }
    }
    
    
    public ArrayList<getInfo> CRevsqlCon(String sqlQuery) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hotel", "root", "");
            Statement stmt = con.createStatement();

            ResultSet rls = stmt.executeQuery(sqlQuery);

            while (rls.next()) {
                getInfo temp = new getInfo();
                
                temp.setCDate(rls.getString("cikisTarihi"));
                temp.setCId(rls.getInt("id"));
                temp.setCRoomId(rls.getInt("odaAdi"));

                sqlInfo.add(temp);

            }
            con.close();

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    public ArrayList<getInfo> CRoomsqlCon(String sqlQuery) {

        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hotel", "root", "");
            Statement stmt = con.createStatement();

            ResultSet rls = stmt.executeQuery(sqlQuery);

            while (rls.next()) {
                getInfo temp = new getInfo();
                
                temp.setCSoldCount(rls.getInt("soldCount"));

                sqlInfo.add(temp);

            }
            con.close();

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
    
    public void CsqlInsert(String sqlQuery) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hotel", "root", "");
            Statement stmt = con.createStatement();

            stmt.execute(sqlQuery);
            con.close();


        } catch (Exception e) {

            System.out.println(e);
        }
    }
    public ArrayList<getInfo> CsqlRevDate(String sqlQuery){
        ArrayList<getInfo> sqlInfo = new ArrayList<>();

        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/hotel", "root", "");
            Statement stmt = con.createStatement();

            ResultSet rls = stmt.executeQuery(sqlQuery);

            while (rls.next()) {
                getInfo temp = new getInfo();

                temp.setCheckCTarih(rls.getString("cikisTarihi"));
                temp.setCheckGTarih(rls.getString("girisTarihi"));


                sqlInfo.add(temp);

            }
            con.close();



        }catch (Exception e){
            System.out.println(e);
        }
        return sqlInfo;
    }
}
