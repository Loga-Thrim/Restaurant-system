package restaurant;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author boatzz
 */
public class dbConnect {

    private static String username = "root";
    private static String password = "godframedark8654";
    private static String con = "jdbc:mysql://localhost/main_page";

    public static Connection dbcon () {
        Connection conn = null;

        try {
            conn = DriverManager.getConnection(con, username, password);
            System.out.println("connected");
        } catch (SQLException e) {
            System.err.println(e);
        }
        return conn;

    }
}
