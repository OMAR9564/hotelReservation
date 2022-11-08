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
    public void sqlInsert(String sqlQuery) {
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
                temp.setIsim_Soyisim(rls.getString("isim_soyad"));
                temp.setEmail(rls.getString("email"));

                sqlInfo.add(temp);

            }
            con.close();

        } catch (Exception e) {

            System.out.println(e);
        }
        return sqlInfo;
    }
}
