package fbc.servlet.post;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fbc.dao.post.PostDao;
import fbc.dto.post.PostDto;
import fbc.dto.user.UserDto;

@WebServlet(value="/post/add")
public class PostAddServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		int page = Integer.parseInt(req.getParameter("page"));
		
		req.setAttribute("page", page);
		
		RequestDispatcher rd =
				req.getRequestDispatcher("./postAddForm.jsp");
		
		rd.forward(req, resp);
				
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		Connection conn = null;
		
		PostDto postDto = new PostDto();
		
		try {
			int page = Integer.parseInt(req.getParameter("page"));
			
			req.setAttribute("page", page);
			
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
			
//			String forStr = "";	(100개 넣을때 예제)			
			
//			예시데이터 100개 넣을때 			
//			for(int i = 0 ; i<100; i++) {		
//				forStr = forStr+(i+1)+"번째";
//				req.setAttribute("a", forStr);
//				postDao.insertPost(postDto, forStr);
//				forStr = "";
//			}
		    
			resp.sendRedirect("./list?page=" + page);			
			
		} catch(Exception e) {
			
		}
	}
	
}
