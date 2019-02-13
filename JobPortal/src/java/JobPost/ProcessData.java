/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JobPost;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.List;

/**
 *
 * @author AMOL
 */
public class ProcessData 
{
    static List<JobPostBean> allData;

    public static int jobUpload(JobPostBean jbean) throws Exception
    { 
        int status=0;
        Connection con=ConnectionProvider.getCon();
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select count(id) from jobpostdata");
        int count=0;
        while(rs.next())
        {
            count=rs.getInt(1);
        }
        count++;
        PreparedStatement ps=con.prepareStatement("insert into JobPostData values(?,?,?,?,?,?,?,?,?,?,?)"); 
        ps.setInt(1,count);
        ps.setString(2,jbean.getHremail());
        ps.setString(3,jbean.getJobtitle());
        ps.setString(4,jbean.getJobdescription());
        ps.setString(5,jbean.getSalary());
        ps.setString(6,jbean.getIndustry());
        ps.setString(7,jbean.getFunctionalarea());
        ps.setString(8,jbean.getRole());
        ps.setString(9,jbean.getKeySkills());
        ps.setString(10,jbean.getCandidateProfile());
        ps.setString(11,jbean.getCompanyprofile());
        status=ps.executeUpdate(); 
        
        return status;
    }
  /*  public static List displayData() throws Exception
    {
       // boolean status=false;
        
        Connection con=ConnectionProvider.getCon();
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from JobPostData");
        
        allData=new ArrayList<JobPostBean>();
        
       while(rs.next())
       {
           allData.
          
       }
          return allData;
    }*/
}
