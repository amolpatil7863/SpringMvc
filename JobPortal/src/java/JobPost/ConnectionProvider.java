/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JobPost;
import java.sql.*;
import static JobPost.Provider.*; 
/**
 *
 * @author AMOL
 */
public class ConnectionProvider 
{ 
    private static Connection con=null;
    public static Connection getCon()  throws Exception
    {  
        Class.forName(DRIVER);  
        con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
          
        return con;  
    }  
    
}
