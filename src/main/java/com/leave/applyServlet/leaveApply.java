package com.leave.applyServlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class leaveApply {

	// method for applying leave
	public Integer applyLeave(String name, String email, String reason) {

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/leave";
			String username = "root";
			String password = "1741";
			Connection con = DriverManager.getConnection(url, username, password);
			String q = "INSERT INTO employee(name,email,reason)VALUES(?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(q);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, reason);
			pstmt.executeUpdate();
			System.out.println("Inserted");

		} catch (Exception e) {

		}
		return 0;
	}

	// method for validating login function of Admin
	public boolean validate(String u_name, String u_password) {
		boolean status = false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/leave";
			String username = "root";
			String password = "1741";
			Connection con = DriverManager.getConnection(url, username, password);
			String q = "select * from login where username = ? and password =? ";
			
			PreparedStatement pstmt = con.prepareStatement(q);
			pstmt.setString(1, u_name);
			pstmt.setString(2, u_password);
			System.out.println(pstmt);
			ResultSet rs = pstmt.executeQuery();
			status = rs.next();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;

	}

	// method for applying leave application
	public List<Map<String, Object>> displayLeave() {

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/leave";
			String username = "root";
			String password = "1741";
			Connection con = DriverManager.getConnection(url, username, password);
			Statement stmt = con.createStatement();
			String query = "SELECT * FROM employee";
			ResultSet rs = stmt.executeQuery(query);
			List<Map<String, Object>> resultList = new ArrayList<Map<String, Object>>();

			while (rs.next()) {
				Map<String, Object> rowMap = new HashMap<String, Object>();
				rowMap.put("employeeId", rs.getInt(1));
				rowMap.put("employeeName", rs.getString(2));
				rowMap.put("employeeEmail", rs.getString(3));
				rowMap.put("employeeReason", rs.getString(4));
				rowMap.put("employeeApplied", rs.getString(5));
				resultList.add(rowMap);
			}
			return resultList;

		} catch (Exception e) {

		}
		return null;

	}

	// method for validating login function of the Employee
	public boolean c_validate(String c_name, String c_password) {
		boolean status = false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/leave";
			String username = "root";
			String password = "1741";
			Connection con = DriverManager.getConnection(url, username, password);
			String q = "select * from customer where name = ? and password =? ";
			
			PreparedStatement pstmt = con.prepareStatement(q);
			pstmt.setString(1, c_name);
			pstmt.setString(2, c_password);
			System.out.println(pstmt);
			ResultSet rs = pstmt.executeQuery();
			status = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;

	}

	// method for registration function
	public int register(String name, String email, String mobile, String c_password) {
		int result = 0;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/leave";
			String username = "root";
			String password = "1741";
			Connection con = DriverManager.getConnection(url, username, password);
			String q = "INSERT INTO customer(name,email,mobile,password)VALUES(?,?,?,?)";

			PreparedStatement pstmt = con.prepareStatement(q);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, mobile);
			pstmt.setString(4, c_password);
			result = pstmt.executeUpdate();
			System.out.println("Inserted");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	// method for Admin registration

	public int adminSignup(String name, String email, String mobile, String a_password) {
		int result = 0;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/leave";
			String username = "root";
			String password = "1741";
			Connection con = DriverManager.getConnection(url, username, password);
			String q = "INSERT INTO login(username,email,mobile,password)VALUES(?,?,?,?)";

			PreparedStatement pstmt = con.prepareStatement(q);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, mobile);
			pstmt.setString(4, a_password);
			result = pstmt.executeUpdate();
			System.out.println("Inserted");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

}
