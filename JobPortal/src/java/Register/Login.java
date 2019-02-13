/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Register;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author AMOL
 */
public class Login 
{
    public static boolean validate(User l1) throws Exception
    {
        boolean status=false;  
        Connection con=JobPost.ConnectionProvider.getCon();
        PreparedStatement pst = con.prepareStatement("Select email,password from register_data where email=? and password=?");
        pst.setString(1,l1.getEmail());
        pst.setString(2,l1.getPassword());
        
        ResultSet rs=pst.executeQuery();  
        status=rs.next();  
        
        return status;
    }
}
