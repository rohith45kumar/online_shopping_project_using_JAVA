package mypackage;

import java.sql.*;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionProvider
{
public static Connection getCon() {
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp", "root", "roshan");
        return con;
    } catch (Exception e) {
        System.out.println(e);
        return null;
    }
}
}
