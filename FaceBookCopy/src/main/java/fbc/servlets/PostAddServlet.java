package fbc.servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fbc.dao.PostDao;
import fbc.dto.PostDto;
import fbc.dto.UserDto;

@WebServlet(value="/post/add")
public class PostAddServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		resp.sendRedirect("./postAddForm.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		Connection conn = null;
		
		PostDto postDto = new PostDto();
		UserDto userDto = new UserDto();
		
		try {
			
			int postNo = Integer.parseInt(req.getParameter("postNo"));
			
			String postTitle = req.getParameter("postTitle");
			
			String postContent = req.getParameter("postContent");
						
			postDto.setPostNo(postNo);
			postDto.setPostTitle(postTitle);
			postDto.setPostContent(postContent);
			
			ServletContext sc = this.getServletContext();
			conn = (Connection)sc.getAttribute("conn");
			
			PostDao postDao = new PostDao();
			postDao.setConnection(conn);
			
			postDao.insertPost(postDto);				
			
			resp.sendRedirect("./list");
			
		    // 0이면 넣은 데이터가 없다 0 이외에는 성공
		    
			resp.sendRedirect("./list");			
			
		} catch(Exception e) {
			
		}
	}
	
}
