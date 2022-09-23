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
			
			sql += "SELECT A.POST_NO, A.POST_TITLE, B.USER_NICKNAME, A.POST_CREATEDATE,";
			sql += " A.POST_COUNT";
			sql += " FROM POST_INFO_TB A, USER_INFO_TB B";
			sql += " WHERE A.POST_NO = B.USER_NO";
			
			pstmt = connection.prepareStatement(sql);

			rs = pstmt.executeQuery();

			ArrayList<PostDto> postList = new ArrayList<>();
			
			int postNo = 0;
			String postTitle = "";
			String userNickName = "";
			Date postCreateDate = null;
			int count = 0;
			
			while (rs.next()) {
				postNo = rs.getInt("A.POST_NO");
				postTitle = rs.getString("A.POST_TITLE");
				postCreateDate = rs.getDate("A.POST_AUTHOR");
				count = rs.getInt("A.POST_CRE_DATE");
				userNickName = rs.getString("B.USER_NICKNAME");
				
				PostDto postDto
				= new PostDto(postNo, postTitle
							, postCreateDate, count, userNickName);		
				
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
