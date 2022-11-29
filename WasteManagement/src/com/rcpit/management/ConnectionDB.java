package com.rcpit.management;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionDB {
static Connection con = null;
	
	public static Connection connect()
	{
		try
		{
			if(con==null)
			{
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/management","root","");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}

}
