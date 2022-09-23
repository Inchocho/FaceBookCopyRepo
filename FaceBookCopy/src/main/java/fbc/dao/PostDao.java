package fbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;

import fbc.dto.PostDto;
import fbc.dto.UserDto;

public class PostDao {
	
	private Connection connection;
	
	public void setConnection(Connection conn) {
		this.connection = conn;
	}

	public List<PostDto> selectPostList() throws Exception{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "";
			
			System.out.println("sql 실행전 ----");
			sql += "SELECT A.POST_NO AS POST_NO, A.POST_TITLE AS POST_TITLE, B.USER_NICKNAME AS USER_NICKNAME , A.POST_CREATEDATE AS POST_CREATEDATE,";
			sql += " A.POST_COUNT AS POST_COUNT";
			sql += " FROM POST_INFO_TB A, USER_INFO_TB B";
			sql += " WHERE A.POST_NO = B.USER_NO";
			
			pstmt = connection.prepareStatement(sql);

			rs = pstmt.executeQuery();
			System.out.println("sql 실행후 ----");

			ArrayList<PostDto> postList = new ArrayList<>();
			
			int postNo = 0;
			String postTitle = "";
			Date postCreateDate = null;
			int count = 0;
			String userNickName = "";
			
			System.out.println("값이 담기기 전");
			
			while (rs.next()) {
				System.out.println();
				postNo = rs.getInt("POST_NO");
				postTitle = rs.getString("POST_TITLE");
				postCreateDate = rs.getDate("POST_CREATEDATE");
				count = rs.getInt("POST_COUNT");
				userNickName = rs.getString("USER_NICKNAME");
				
				PostDto postDto
				= new PostDto(postNo, postTitle
							, postCreateDate, count, userNickName);		
				
				System.out.println("값이 담긴 후 전달");
				postList.add(postDto);
			}

			return postList;
			
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}
	}
}
