package fbc.dao.auth;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import fbc.dto.user.UserDto;

public class LoginDao {

	private Connection connection;
	
	public void setConnection(Connection conn) {
		this.connection = conn;
	}

	public UserDto login(String email, String pwd)
			throws Exception{
			
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
			}catch (Exception e) {
				e.printStackTrace();
				throw e;
			}finally {
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
