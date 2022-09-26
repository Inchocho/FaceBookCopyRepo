package fbc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import fbc.dto.PostDto;
import fbc.dto.UserDto;

public class PostDao {
	
	private Connection connection;
	
	public void setConnection(Connection conn) {
		this.connection = conn;
	}

	//게시글 목록 조회
	public List<PostDto> selectPostList() throws Exception{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "";
			
			System.out.println("sql 실행전 ----");
			sql += "SELECT A.POST_NO AS POST_NO , A.POST_NUM AS POST_NUM , A.POST_TITLE AS POST_TITLE , B.USER_NICKNAME AS USER_NICKNAME , A.POST_CREATEDATE AS POST_CREATEDATE";
			sql += ", A.POST_COUNT AS POST_COUNT";
			sql += " FROM POST_INFO_TB A, USER_INFO_TB B";
			sql += " WHERE A.POST_NO = B.USER_NO";
			sql += " ORDER BY POST_NUM DESC";
			
			pstmt = connection.prepareStatement(sql);

			rs = pstmt.executeQuery();
			System.out.println("sql 실행후 ----");

			ArrayList<PostDto> postList = new ArrayList<>();
			
			int postNum = 0;
			int postNo = 0;
			String postTitle = "";
			Date postCreateDate = null;
			int count = 0;
			String userNickName = "";
			
			System.out.println("값이 담기기 전");
			
			while (rs.next()) {
				System.out.println();
				postNum = rs.getInt("POST_NUM"); 
				postNo = rs.getInt("POST_NO");
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
	
	//게시판에 유저정보를 보여주기 위한 메소드(user로 이동할예정)
	public UserDto selectUser(int postNum) throws Exception{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		UserDto userDto = new UserDto();
		try {
			String sql = "";
			
			sql += "SELECT A.* FROM USER_INFO_TB A";
			sql += " , POST_INFO_TB B WHERE";
			sql += " A.USER_NO = B.POST_NO";
			sql += " AND B.POST_NUM = ?";
			
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setInt(1, postNum);
			
			rs = pstmt.executeQuery();
			
			int userNo = 0;
			String userNickName = "";
			String userName = "";
			String userPhoneOrEmail = "";
			String userPassword = "";
			
			if(rs.next()) {
				userNo = rs.getInt("USER_NO");
				userNickName = rs.getString("USER_NICKNAME");
				userName = rs.getString("USER_NAME");
				userPhoneOrEmail = rs.getString("USER_PHONE_EMAIL");
				userPassword = rs.getString("USER_PASSWORD");
			}
			
			userDto
			= new UserDto(userNo, userNickName, userName
						, userPhoneOrEmail, userPassword);		
			
			
		} catch(Exception e) {
			throw e;
		}
		
		return userDto;
		
	}
	
	//게시글 추가
	public void insertPost(PostDto postDto) throws Exception {
		PreparedStatement pstmt = null;

		try {
			int postNo = postDto.getPostNo();
			String postTitle = postDto.getPostTitle();
			String postContent = postDto.getPostContent();
			
			String sql = "";

			sql += "INSERT INTO POST_INFO_TB"; 
			sql += " VALUES(POST_INFO_TB_POST_NUM_SEQ.NEXTVAL, ?, ?, ?, SYSDATE, SYSDATE, 0)";

			pstmt = connection.prepareStatement(sql);

			pstmt.setInt(1, postNo);
			pstmt.setString(2, postTitle);		
			pstmt.setString(3, postContent);

			System.out.println("값이 안들어갔니?");
			pstmt.executeUpdate();

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

	}
	
	//게시글 상세정보 보기(수정시에도 사용)
	public PostDto selectPostInfo(int postNum) throws Exception{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		PostDto postDto = null;
		
		try {
			String sql = "";
			sql += "SELECT * FROM POST_INFO_TB";
			sql += " WHERE POST_NUM = ?";
			
			pstmt = connection.prepareStatement(sql);
			pstmt.setInt(1, postNum);
			
			rs = pstmt.executeQuery();

			int postNo = 0;
			String postTitle = "";
			String content = "";
			
			while (rs.next()) {
				System.out.println();
				postNo = rs.getInt("POST_NO");
				postNum = rs.getInt("POST_NUM");
				postTitle = rs.getString("POST_TITLE");
				content = rs.getString("POST_CONTENT");
				
				postDto = new PostDto(postTitle, content, postNo, postNum);		
				
				System.out.println("값이 담긴 후 전달");
				
			}			
			
			return postDto;
			
		} catch (Exception e){
			throw e;
		}
	}

	//게시글 수정
	public void updatePost(int postNo, String post_title, String post_content, int postNum) throws Exception{
		
		PreparedStatement pstmt = null;		
		
		try {
			String sql = "";
			sql += "UPDATE POST_INFO_TB";
			sql += " SET POST_TITLE = ?";
			sql += " , POST_CONTENT = ?";
			sql += " WHERE POST_NO = ?";
			sql += " AND POST_NUM = ?";
			
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, post_title);
			pstmt.setString(2, post_content);
			pstmt.setInt(3, postNo);
			pstmt.setInt(4, postNum);
			
			pstmt.executeUpdate();
			
		} catch (Exception e){
			throw e;
		}
	}
	
	//게시글 갯수 조회(총 게시글)
	public int countPost() throws Exception{
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		int count = 0;
		
		try {
			String sql = "";
			sql += "SELECT COUNT(*) AS TOTAL_COUNT FROM POST_INFO_TB";
			
			pstmt = connection.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt("TOTAL_COUNT");								
			}
			
			return count;			
			
		
		} catch(Exception e) {
			throw e;
		}
		
		
	}
	
	//게시글 삭제
	public void deletePost(int postNum) throws Exception{
		
		PreparedStatement pstmt = null;
		
		try {
			String sql = "";
			sql += "DELETE FROM POST_INFO_TB";
			sql += " WHERE POST_NUM = ?";
			
			pstmt = connection.prepareStatement(sql);

			pstmt.setInt(1, postNum);

			pstmt.executeUpdate();
			
		}catch(Exception e) {
			throw e;
		}
	}
	
	//게시글 조회수 증가 	
	public void countUp(int postNum) throws Exception{
		
		PreparedStatement pstmt = null;
		
		try {		
			String sql = "";
			sql += "UPDATE POST_INFO_TB SET POST_COUNT = POST_COUNT+1";
			sql += " WHERE POST_NUM = ?";
			
			pstmt = connection.prepareStatement(sql);
			
			pstmt.setInt(1, postNum);

			pstmt.executeUpdate();
		
		}catch(Exception e) {
			throw e;
		}
	}
	
	//게시글 목록 조회(페이징 처리 추가)
	public List<PostDto> selectPostList(int startRow, int pageSize) throws Exception{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "";
			
			System.out.println("sql 실행전 ----");
			sql += "SELECT A.POST_NO AS POST_NO , A.POST_NUM AS POST_NUM , A.POST_TITLE AS POST_TITLE , B.USER_NICKNAME AS USER_NICKNAME , A.POST_CREATEDATE AS POST_CREATEDATE";
			sql += ", A.POST_COUNT AS POST_COUNT";
			sql += " FROM POST_INFO_TB A, USER_INFO_TB B";
			sql += " WHERE A.POST_NO = B.USER_NO";
			sql += " ORDER BY POST_NUM DESC";
			
			pstmt = connection.prepareStatement(sql);

			rs = pstmt.executeQuery();
			System.out.println("sql 실행후 ----");

			ArrayList<PostDto> postList = new ArrayList<>();
			
			int postNum = 0;
			int postNo = 0;
			String postTitle = "";
			Date postCreateDate = null;
			int count = 0;
			String userNickName = "";
			
			System.out.println("값이 담기기 전");
			
			while (rs.next()) {
				System.out.println();
				postNum = rs.getInt("POST_NUM"); 
				postNo = rs.getInt("POST_NO");
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
}
