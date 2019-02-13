/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Register;

import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author AMOL
 */
public class ProcessRegisterData 
{
    public static int register(User u) throws Exception
    {
        int status=0;
        Connection con=JobPost.ConnectionProvider.getCon();
        PreparedStatement stmt=con.prepareStatement("insert into register_data values(?,?,?,?,?,?)");
        stmt.setString(1,u.getName());
        stmt.setString(1,u.getEmail());
        stmt.setString(1,u.getPassword());
        stmt.setString(1,u.getPhone());
        stmt.setString(1,u.getGender()); 
        stmt.setString(1,u.getBirthdate());
            
        status=stmt.executeUpdate(); 
        
        return status;
    }
}
