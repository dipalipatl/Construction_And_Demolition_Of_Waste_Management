package com.rcpit.management;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Requestcnd
 */
public class Requestcnd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Requestcnd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String address = request.getParameter("address");
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		
		String status = "Pending";
		System.out.println("address");
		System.out.println("title");
		System.out.println("description");
		
		try
		{
			Connection conn = ConnectionDB.connect();
			PreparedStatement ps = conn.prepareStatement("insert into requestcnd (address,title,description,status) values(?,?,?,?)");
			ps.setString(1,address);
			ps.setString(2,title);
			ps.setString(3,description);
			ps.setString(4,status);
			int rs = ps.executeUpdate();
			System.out.println("result");
	        if (rs>0)
	        {
	        	Thread.sleep(800);
	        	System.out.println("True");
	        	response.sendRedirect("viewcndreq.jsp");
	        }
	        else
	        {
	        	response.sendRedirect("requestcnd.html");
	        }

		    
		    }
		    catch(Exception e)
		    {
			        System.out.println(e);
		    }
	}

}
