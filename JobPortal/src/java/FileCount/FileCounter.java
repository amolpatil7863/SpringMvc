/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package FileCount;
import java.io.*;
/**
 *
 * @author AMOL
 */

public class FileCounter
{
	  public int listaj(File f)
		{
			int count=0;
			File[] s= f.listFiles();
			for(int i=0;i<s.length;i++)
			{
				if(s[i].isDirectory())
				{
					count+=listaj(s[i]);
				}
				else if(s[i].getName().endsWith(".xml"))
				{
					count++;
				}
			}
			return count;
		}
}
