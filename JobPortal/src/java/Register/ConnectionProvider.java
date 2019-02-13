/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Register;
import java.sql.*; 
import static Register.Provider.*;
/**
 *
 * @author AMOL
 */
public class ConnectionProvider 
{
    private static Connection con=null;  
    static{  
        try{  
                Class.forName(DRIVER);  
                con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
            }catch(Exception e){}  
           }  
  
    public static Connection getCon()
    {  
            return con;  
    }  
}
