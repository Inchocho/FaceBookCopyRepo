package fbc.dao.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import fbc.dto.user.UserDto;



public class UserDao {
	private Connection connection;
	private PreparedStatement pstmt;
	
	public void setConnection(Connection conn) {
		this.connection = conn;
	}
	
	public UserDto selectOne(String userid) {
		ResultSet rs = null;
		UserDto userDto = null;		

		try {
			String sql = "";

			sql += "SELECT USER_NAME ,USER_PHONE_EMAIL";
			sql += " FROM USER_INFO_TB ";
			sql += " WHERE USER_PHONE_EMAIL = ?";

			// 3단계 sql 실행 객체 준비
			pstmt = connection.prepareStatement(sql);

			pstmt.setString(1, userid);
			// 4단계 sql문 실행
			rs = pstmt.executeQuery();


			if (rs.next()) {

				userDto = new UserDto(userid);
				
				return userDto;
			} else {
				throw new Exception("해당회원을 찾을 수 없습니다.");
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			// 6 단계 jdbc 객체 메모리 회수
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e2) {
					// TODO: handle exception
					e2.printStackTrace();
				}
			}
		}//finally end
		return null;
	}//selectOne end
	
	public int insertUser(UserDto userDto) {
		int rslt = 0;
		try {
			
		String sql = "";
		sql += "INSERT INTO USER_INFO_TB";
		sql += " VALUES (USER_INFO_USER_NO_SEQ.NEXTVAL," 
			+ " ?, null, ?, ?, ?, ?, SYSDATE, SYSDATE)";
		
		pstmt = connection.prepareStatement(sql);
		
		pstmt.setString(1, userDto.getUserName());
		pstmt.setString(2, userDto.getUserPhoneOrEmail());
		pstmt.setString(3, userDto.getUserPassword());
		pstmt.setString(4, userDto.getUserBirth());
		pstmt.setString(5, userDto.getUserGender());
		
		System.out.println(1);
		System.out.println(userDto.getUserName());
		System.out.println(userDto.getUserPhoneOrEmail());
		System.out.println(userDto.getUserPassword());
		System.out.println(userDto.getUserBirth());
		System.out.println(userDto.getUserGender());
		System.out.println(5);
		
		System.out.println("ex+");
		rslt = pstmt.executeUpdate();
		System.out.println("ex"+rslt);
		return rslt;
		} catch (Exception e) {
			// TODO: handle exception
		}finally {
			// 6 단계 jdbc 객체 메모리 회수
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e2) {
					// TODO: handle exception
					e2.printStackTrace();
				}
			}
		}//finally end
		return rslt;
	}
}
