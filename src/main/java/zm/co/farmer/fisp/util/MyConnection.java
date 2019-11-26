/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zm.co.farmer.fisp.util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

/**
 *
 * @author mumbi
 */
public class MyConnection {

    String filename = "application.properties";   
    Properties prop = new Properties();
    InputStream input = null;
    Connection conn;

    /***
     * Get a mysql connection. Most likely using the the SRMS mysql credentials
     * @return 
     */
    public Connection getConnection() {
        //System.out.println("Connection");
        try {
            
            input = MyConnection.class.getClassLoader().getResourceAsStream(filename);

            // load a properties file
            prop.load(input);

            String database = (prop.getProperty("spring.datasource.url"));
            String dbuser = (prop.getProperty("spring.datasource.username"));
            String dbpassword = (prop.getProperty("spring.datasource.password"));

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(database, dbuser, dbpassword);  

        } catch (Exception e) {
            System.out.println(e);
        }

        return conn;
    }
}
