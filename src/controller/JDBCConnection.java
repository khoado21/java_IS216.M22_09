/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author ASUS
 */
public class JDBCConnection {
    public static Connection getJDBCConnection(){
        final String url = "jdbc:oracle:thin:@//localhost:1521/orcl";
        final String user = "Nap";
        final String password = "Nap";
        final String driver = "oracle.jdbc.driver.OracleDriver";
        try {
            Class.forName(driver);
            System.out.println("connected to the database");
            return DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException ex) {
            System.out.println("Error loading driver: " + ex);
            
        } catch (SQLException ex) {
            Logger.getLogger(JDBCConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {
        getJDBCConnection();
    }
}
