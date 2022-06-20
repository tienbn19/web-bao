package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;

public class UserDAO extends DBConnect {
	public User checkUsernameExist(String username) {
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM demo.users WHERE username=?";
			stmt = connection.prepareStatement(sql);
			stmt.setString(1, username);

			rs = stmt.executeQuery();
			if (rs.next()) {

				String password = rs.getString("password");
				return new User(username, password);
			}

		} catch (SQLException e) {
			System.out.println(e);
		}

		return null;
	}

	public User checkAccount(String username, String password) {
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			String sql = "SELECT * FROM demo.users WHERE username=? AND password=?";
			stmt = connection.prepareStatement(sql);
			stmt.setString(1, username);
			stmt.setString(2, password);

			rs = stmt.executeQuery();
			if (rs.next()) {

				return new User(username, password);
			}

		} catch (SQLException e) {
			System.out.println(e);
		}

		return null;
	}

	public void userRegister(User c) {
		PreparedStatement stmt = null;

		try {
			String sql = "INSERT INTO demo.users(username, password) VALUES(?, ?)";
			stmt = connection.prepareStatement(sql);
			stmt.setString(1, c.getName());
			stmt.setString(2, c.getPassword());

			stmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println(e);
		}
	}

}
