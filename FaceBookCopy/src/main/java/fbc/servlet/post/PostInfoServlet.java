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

@WebServlet(value="/post/info")
public class PostInfoServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		Connection conn = null;
		
		try {
			int page = Integer.parseInt(req.getParameter("page"));
			
			int postNum = Integer.parseInt(req.getParameter("postNum"));
			
			UserDto userDto = new UserDto();
			
			ServletContext sc = this.getServletContext();
			conn = (Connection)sc.getAttribute("conn");
			
			PostDao postDao = new PostDao();
			postDao.setConnection(conn);
			
			PostDto postDto = new PostDto();
			
			//게시글 작성시 게시글 정보(제목,타이틀) 갖고오는 메소드
			postDto = postDao.selectPostInfo(postNum);
			
			//게시글 작성한 유저의 정보를 가져오기 위한 메소드
			userDto = postDao.selectUser(postNum);
			
			//게시글 클릭시 조회수 +1
			postDao.countUp(postNum);
			
			req.setAttribute("postDto", postDto);
			req.setAttribute("userDto", userDto);
			req.setAttribute("page", page);
			
			RequestDispatcher rd
				= req.getRequestDispatcher("./postInfo.jsp");
			
			rd.forward(req, res);
			
		} catch(Exception e) {
			
		}	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
	}
	
}
