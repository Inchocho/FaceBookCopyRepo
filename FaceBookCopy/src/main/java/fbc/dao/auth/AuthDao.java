package fbc.dao.auth;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import fbc.dto.user.UserDto;

public class AuthDao {

	private Connection connection;

	public void setConnection(Connection conn) {
		this.connection = conn;
	}

	public UserDto login(String email, String pwd) throws Exception {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "";
		int colIndex = 1;

		sql += "SELECT *";
		sql += " FROM USER_INFO_TB";
		sql += " WHERE USER_PHONE_EMAIL = ?";
		sql += " AND USER_PASSWORD = ?";

		try {
			pstmt = connection.prepareStatement(sql);

			pstmt.setString(colIndex++, email);
			pstmt.setString(colIndex, pwd);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				int userNo = 0;
				String userNickName = "";

				userNo = rs.getInt("USER_NO");
				userNickName = rs.getString("USER_NICKNAME");
				email = rs.getString("USER_PHONE_EMAIL");
				pwd = rs.getString("USER_PASSWORD");

				UserDto userDto = new UserDto();

				userDto.setUserNo(userNo);
				userDto.setUserPhoneOrEmail(email);
				userDto.setUserPassword(pwd);
				userDto.setUserNickName(userNickName);

				// 회원 정보 조회 데이터
				return userDto;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

		} // finally end

		// 회원 조회가 안된다면
		return null;
	}

	public UserDto emailFind(String email) throws Exception {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String password = "";
		String sql = "";

		try {

			sql += "SELECT USER_PHONE_EMAIL, USER_PASSWORD";
			sql += " FROM USER_INFO_TB";
			sql += " WHERE USER_PHONE_EMAIL = ?";

			pstmt = connection.prepareStatement(sql);

			pstmt.setString(1, email);

			rs = pstmt.executeQuery();

//				System.out.println("쿼리 실행전");
			if (rs.next()) {
				password = rs.getString("USER_PASSWORD");

				UserDto userDto = new UserDto();

				userDto.setUserPhoneOrEmail(email);
				userDto.setUserPassword(password);

				// 회원 정보 조회 데이터
//					System.out.println(email);
//					System.out.println(password);
//					System.out.println("쿼리 실행 돌아라");					
				return userDto;
			}
//				System.out.println("실행 결과");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

		} // finally end
		return null;
	}

	public UserDto passwordFind(String email, String pwd) throws Exception {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "";
		int colIndex = 1;

		try {

			sql += "SELECT USER_PHONE_EMAIL, USER_PASSWORD";
			sql += " FROM USER_INFO_TB";
			sql += " WHERE USER_PHONE_EMAIL = ?";

			pstmt = connection.prepareStatement(sql);

			pstmt.setString(colIndex, email);

			rs = pstmt.executeQuery();

			if (rs.next()) {

				email = rs.getString("USER_PHONE_EMAIL");
				pwd = rs.getString("USER_PASSWORD");

				UserDto userDto = new UserDto();

				userDto.setUserPhoneOrEmail(email);
				userDto.setUserPassword(pwd);

				// 회원 정보 조회 데이터
				return userDto;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

			try {
				if (pstmt != null) {
					pstmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

		} // finally end

		// 회원 조회가 안된다면
		return null;
	}
}
