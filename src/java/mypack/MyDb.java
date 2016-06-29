/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;


import java.sql.*;
public class MyDb {
    private static Connection c;
    private static Statement s;
    private static ResultSet rs;
    private  static int m;
    static{
        try{
            Class.forName("com.mysql.jdbc.Driver");
             c=DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","1234");
             s=c.createStatement();
           }catch(Exception e){
            e.printStackTrace();
           }
         }
public  static Connection myConnection(){
    return c;
}

public static int getInsertUpdateDelete(String query) throws SQLException {
m=s.executeUpdate(query);
return m;
}
public static ResultSet getRecord(String query) throws SQLException{
rs=s.executeQuery(query);
return rs;
}
public static void closeConnection() throws SQLException{
c.close();
}
}
