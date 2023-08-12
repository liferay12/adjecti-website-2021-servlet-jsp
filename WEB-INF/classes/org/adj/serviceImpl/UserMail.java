package org.adj.serviceImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.adj.dao.JdbcConnection;

import org.adj.serviceInterface.UserMailInterface;

public class UserMail implements UserMailInterface {

	private Connection conn = JdbcConnection.getConnection();

	@Override
	public String saveUserMail(String ip, String date, String time, String name, String email, String phoneNo, String message) {

		String sql = "INSERT INTO user_mail (ip, date, time, name, email, phone_no, message) VALUES (?, ?, ?, ?, ?, ?,?)";

		PreparedStatement statement;
		try {
			statement = this.conn.prepareStatement(sql);
			statement.setString(1, ip);
			statement.setString(2, date);
			statement.setString(3, time);
			statement.setString(4, name);
			statement.setString(5, email);
			statement.setString(6, phoneNo);
			statement.setString(7, message);
			

			int rowsInserted = statement.executeUpdate();
			if (rowsInserted > 0) {
				System.out.println("A new user was inserted successfully!");
			}
		} catch (Exception e) {

			e.printStackTrace();
		}

		return "Successfully Saved";
	}

	

}
