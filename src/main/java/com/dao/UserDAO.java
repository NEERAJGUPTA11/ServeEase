package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDAO {
	private Connection conn;

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addUser(User u) {

		boolean f = false;
		try {

			String sql = "insert into user1( name , email, password, Service, role) values (?,?,?,?,?)";
			java.sql.PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			ps.setString(4, u.getService());
			ps.setString(5, "user");

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	

	public User login(String email, String password) {
		User u = null;
		try {

			String sql = "select * from user1 where email=? and password=?";
			PreparedStatement rs = conn.prepareStatement(sql);
			rs.setString(1, email);
			rs.setString(2, password);

			ResultSet ps = rs.executeQuery();
			while (ps.next()) {
				u = new User();
				u.setId(ps.getInt(1));
				u.setName(ps.getString(2));				
				u.setEmail(ps.getString(3));
				u.setPassword(ps.getString(4));
				u.setService(ps.getString(5));
				u.setRole(ps.getString(6));
				

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}
	
	
	
	
	
	
	
	
	
}