
package com.ivyjochem.oc.util;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Class to run sql statements as part of set up or tear down in the unit tests.
 *
 * taken from fat bike trail reports and adapted to work with my database
 *
 * Created by paulawaite and adapted by ivyjochem
 */
public class DatabaseUtility {

    private final Logger logger = LogManager.getLogger(this.getClass());

    /**
     * The Jdbc driver.
     */
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";

    /**
     * The Db url.
     */
    static final String DB_URL = "jdbc:mysql://localhost:3306/octest?user=root&password=MySQL";

    /**
     * The User.
     */
    static final String USER = "root";

    /**
     * The Pass.
     */
    static final String PASS = "MySQL";


    /**
     * Run sql.
     *
     * @param sqlFile the sql file
     */
    public void runSQL(String sqlFile) {
        Connection conn = null;
        Statement stmt = null;
        ClassLoader classloader = Thread.currentThread().getContextClassLoader();
        InputStream inputStream = classloader.getResourceAsStream(sqlFile);
        try {
            assert inputStream != null;
            try (BufferedReader br = new BufferedReader(new InputStreamReader(inputStream))) {

                Class.forName("com.mysql.cj.jdbc.Driver");

                conn = DriverManager.getConnection(DB_URL, USER, PASS);

                stmt = conn.createStatement();

                while (true) {
                    String sql = br.readLine();
                    if (sql == null) {
                        break;
                    }
                    stmt.executeUpdate(sql);

                }

            }
        } catch (SQLException se) {
            logger.error(se);
        } catch (Exception e) {
            logger.error(e);
        }

    }
}
