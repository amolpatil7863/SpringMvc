/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HrRegister;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author AMOL
 */
public class HrLogin 
{
    static Connection con;
    static PreparedStatement pst;
 public static boolean validate(HrRegister.HrData h1) throws Exception
    {
        boolean status=false;  
        con=JobPost.ConnectionProvider.getCon();
        pst = con.prepareStatement("Select email,password from hrRegister where email=? and password=?");
        pst.setString(1,h1.getHremail());
        pst.setString(2,h1.getHr_password());
        
        ResultSet rs=pst.executeQuery();  
        status=rs.next();  
        
        return status;
    }
 public static String GetValue(HrRegister.HrData h2) throws Exception
 {
     String name="";
     con=JobPost.ConnectionProvider.getCon();
     pst=con.prepareStatement("Select hrname,email,password from hrRegister where email=? and password=?");
     pst.setString(1,h2.getHremail());
     pst.setString(2,h2.getHr_password());
     ResultSet rs1=pst.executeQuery(); 
     while(rs1.next())
     {
         name=rs1.getString(1);
     }
     return name;
 }
}
