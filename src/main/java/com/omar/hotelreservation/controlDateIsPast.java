/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.omar.hotelreservation;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

/**
 *
 * @author omerfaruk
 */
public class controlDateIsPast {
    
    public static boolean isDatePast(final String date, final String dateFormat) {
		LocalDate localDate = LocalDate.now(ZoneId.systemDefault());

		DateTimeFormatter dtf = DateTimeFormatter.ofPattern(dateFormat);
		LocalDate inputDate = LocalDate.parse(date, dtf);

		return inputDate.isBefore(localDate);
	}
    
    
    public static boolean isRevDateProces(String dateType, String revSqlQery){
        try{
            ArrayList<getInfo> sqlInfo = new ArrayList<>();
            ArrayList<getInfo> ROOMsqlInfo = new ArrayList<>();
            mySql mysql = new mySql();
            
            sqlInfo = mysql.CRevsqlCon(revSqlQery);
            
            for(int i = 0; i < sqlInfo.size(); i++){
                boolean _isDatePast;
                _isDatePast = isDatePast(sqlInfo.get(i).getCDate(), dateType);
                String revId = Integer.toString(sqlInfo.get(i).getCId());
                String roomId = Integer.toString(sqlInfo.get(i).getCRoomId());
                if(_isDatePast){
                    String revSqlNextQuery = "UPDATE `reverasyonlar` SET `isDatePast`='1' WHERE `cikisTarihi` = '"+sqlInfo.get(i).getCDate()+"' AND `id` = '"+revId+"'";
                    mysql.CsqlInsert(revSqlNextQuery);
                    
                    String roomsqlQuery = "SELECT * FROM `room`";
                    ROOMsqlInfo = mysql.CRoomsqlCon(roomsqlQuery);
                    int soldCount = ROOMsqlInfo.get(0).getCSoldCount();
                    String strSoldCount = Integer.toString(soldCount - 1);

                    String roomSqlQueryUpdate = "UPDATE `room` SET `soldCount`='"+strSoldCount+"' WHERE `id` = '"+roomId+"'";
                    mysql.CsqlInsert(roomSqlQueryUpdate);


                    return true;    

                }
            }
        }catch(Exception e){
            System.out.println();
            return false;
        }
        return true;
    }
    
    
    
}
