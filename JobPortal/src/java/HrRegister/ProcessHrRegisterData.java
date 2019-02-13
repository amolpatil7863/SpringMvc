/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package HrRegister;

import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author AMOL
 */
public class ProcessHrRegisterData 
{
    public static int hr_register(HrData h1) throws Exception
     {
         int status=0;
         Connection con=JobPost.ConnectionProvider.getCon();
         PreparedStatement stmt=con.prepareStatement("insert into hrRegister values(?,?,?,?,?)");
         stmt.setString(1,h1.getLlpname());
         stmt.setString(2,h1.getLlpin());
         stmt.setString(3,h1.getHrname());
         stmt.setString(4,h1.getHremail());
         stmt.setString(5,h1.getHr_password());
         
         status=stmt.executeUpdate(); 
         return status;
     }

}
