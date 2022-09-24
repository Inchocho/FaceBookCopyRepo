package fbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import fbc.dto.PostDto;

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
			sql += "SELECT A.POST_NO AS POST_NO, A.POST_NUM AS POST_NUM, A.POST_TITLE AS POST_TITLE, B.USER_NICKNAME AS USER_NICKNAME , A.POST_CREATEDATE AS POST_CREATEDATE,";
			sql += " A.POST_COUNT AS POST_COUNT";
			sql += " FROM POST_INFO_TB A, USER_INFO_TB B";
			sql += " WHERE A.POST_NO = B.USER_NO";
			
			pstmt = connection.prepareStatement(sql);

			rs = pstmt.executeQuery();
			System.out.println("sql 실행후 ----");

			ArrayList<PostDto> postList = new ArrayList<>();
			
			int postNo = 0;
			int postNum = 0;
			String postTitle = "";
			Date postCreateDate = null;
			int count = 0;
			String userNickName = "";
			
			System.out.println("값이 담기기 전");
			
			while (rs.next()) {
				System.out.println();
				postNo = rs.getInt("POST_NO");
				postNum = rs.getInt("POST_NUM");
				postTitle = rs.getString("POST_TITLE");
				postCreateDate = rs.getDate("POST_CREATEDATE");
				count = rs.getInt("POST_COUNT");
				userNickName = rs.getString("USER_NICKNAME");
				
				PostDto postDto
				= new PostDto(postNum, postNo, postTitle
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
	
	public int insertPost(int postNo, String title, String content) throws Exception {
		int result = 0;
		PreparedStatement pstmt = null;

		try {
			String sql = "";

			sql += "INSERT INTO POST_LIST_TB"; 
			sql += " VALUES(POST_INFO_TB_POST_NUM_SEQ.NEXTVAL, ?, ?, ?, SYSDATE, SYSDATE, 0)";

			pstmt = connection.prepareStatement(sql);

			pstmt.setInt(1, postNo);
			pstmt.setString(2, title);		
			pstmt.setString(3, content);

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			throw e;
		} finally {
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

		} // finally 종료

		return result;
	}
	
	public PostDto selectPostInfo(int postNo) throws Exception{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PostDto postDto = null;
		
		try {
			String sql = "";
			sql += "SELECT * FROM POST_INFO_TB";
			sql += " WHERE POST_NO = ?";
			
			pstmt = connection.prepareStatement(sql);
			pstmt.setInt(1, postNo);
			
			rs = pstmt.executeQuery();
			
			String postTitle = "";
			String content = "";			
			int postNum = 0;
			
			while (rs.next()) {
				System.out.println();
				postTitle = rs.getString("POST_TITLE");
				content = rs.getString("POST_CONTENT");
				postNo = rs.getInt("POST_NO");
				postNum = rs.getInt("POST_NUM");
				
				postDto = new PostDto(postTitle, content, postNo, postNum);		
				
				System.out.println("값이 담긴 후 전달");
				
			}			
			
			return postDto;
			
		} catch (Exception e){
			throw e;
		}
	}
	
	public PostDto selectOne(int postNo) throws Exception{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PostDto postDto = null;
		
		try {
			String sql = "";
			sql += "SELECT * ";
			sql += " FROM POST_INFO_TB";
			sql += " WHERE POST_NO = ?";
			
			pstmt = connection.prepareStatement(sql);
			pstmt.setInt(1, postNo);
			
			rs = pstmt.executeQuery();
			
			String postTitle = "";
			String content = "";			
			int postNum = 0;
			
			if(rs.next()) {
				postTitle = rs.getString("POST_TITLE");
				content = rs.getString("POST_CONTENT");
				postNo = rs.getInt("POST_NO");
				postNum = rs.getInt("POST_NUM");
				
				
				postDto = new PostDto(postTitle, content, postNo, postNum);			
				
				System.out.println("값이 담긴 후 전달");
			}
		
		} catch(Exception e) {
			
		}
		
		return postDto;
	}
	
	public void updatePost(int postNo, String post_title, String post_content) throws Exception{
		
		PreparedStatement pstmt = null;		
		
		try {
			String sql = "";
			sql += "UPDATE POST_INFO_TB";
			sql += " SET POST_TITLE = ?";
			sql += " ,POST_CONTENT = ?";
			sql += " WHERE POST_NO = ?";
			
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, post_title);
			pstmt.setString(2, post_content);
			pstmt.setInt(3, postNo);
			
			pstmt.executeUpdate();
			
		} catch (Exception e){
			throw e;
		}
	}
}
