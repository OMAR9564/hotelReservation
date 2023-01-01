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
//            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup9?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup9", "9564");
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
                temp.setReverasyonId(rls1.getInt(1));
                temp.setCustName(rls1.getString(2));
                temp.setCustCount(rls1.getInt(3));
                temp.setGirisTarihi(rls1.getString(4));
                temp.setCikisTarihi(rls1.getString(5));
                temp.setCustMail(rls1.getString(6));
                temp.setCustPhone(rls1.getString(7));
                temp.setRoomName(rls1.getString(8));
                temp.setDurum(rls1.getString(9));
                temp.setGander(rls1.getString(10));
                            System.out.println(temp.getGander()+ "123123123");

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
//            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup9?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup9", "9564");
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
    

}
