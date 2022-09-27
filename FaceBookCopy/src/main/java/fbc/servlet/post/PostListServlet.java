package fbc.servlet.post;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;

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

@WebServlet(value="/post/list")
public class PostListServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		Connection conn = null;
		
		try {			
			
			int page = 0;
			
			page = Integer.parseInt(req.getParameter("page"));
			
			System.out.println(page);
			
			int postCount = 0;
			ServletContext sc = this.getServletContext();
			conn = (Connection)sc.getAttribute("conn");
			
			PostDao postDao = new PostDao();
			postDao.setConnection(conn);
			
			postCount = postDao.countPost();
			
			System.out.println("postDao 서버 연결");
			
			ArrayList<PostDto> postList 
				= (ArrayList<PostDto>)postDao.selectPostList();								
			
			System.out.println("쿼리 실행 ----");
			req.setAttribute("postList", postList);
			req.setAttribute("totalPost", postCount);
			req.setAttribute("page", page);			
			
			RequestDispatcher rd
				= req.getRequestDispatcher("./postList.jsp");
			
			rd.forward(req, resp);
			System.out.println("postList.jsp로 전달");
			
		} catch(Exception e) {
			
		}
	}
}