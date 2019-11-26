/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zm.co.farmer.fisp.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Mumbi Chishimba
 */

@Service
public class GenericDataService {
        
    @Autowired
    private DataSource dataSource;

    
    public List<HashMap> getQueryResultsAsHashmap(String sql) throws SQLException {
        List<HashMap> data = new ArrayList<>();

        Connection connection = new MyConnection().getConnection();
        boolean defaultConnection = false;

        if (connection == null) {
            connection = dataSource.getConnection();
            defaultConnection = true;
        }

        Statement statement = connection.createStatement();

        ResultSet rs = statement.executeQuery(sql);
        ResultSetMetaData rsmd = rs.getMetaData();

        while (rs.next()) {
            int cols = rs.getMetaData().getColumnCount();
            HashMap hm = new HashMap();
            for (int i = 0; i < cols; i++) {
                String name = rsmd.getColumnName(i + 1);

                String value = "0";
                try {
                    value = rs.getObject(i + 1).toString();
                } catch (Exception e) {
                }

                hm.put(name, value);
            }
            data.add(hm);
        }

        if (!defaultConnection) {
            connection.close();
        }

        return data;
    }
}
