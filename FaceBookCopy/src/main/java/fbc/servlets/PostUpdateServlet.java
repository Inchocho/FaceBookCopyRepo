package fbc.servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fbc.dao.PostDao;
import fbc.dto.PostDto;
import fbc.dto.UserDto;

@WebServlet(value="/post/update")
public class PostUpdateServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		Connection conn = null;
		
		//반복사용되는 RequestDispatcher타입 객체를 생성함
		RequestDispatcher rd = null;

		PostDto postDto = new PostDto();
		int postNum = 0;

		try {
			postNum = Integer.parseInt(req.getParameter("postNum"));
			ServletContext sc = this.getServletContext();
			
			UserDto userDto = new UserDto();

			conn = (Connection) sc.getAttribute("conn");
			
		    PostDao postDao = new PostDao();
		    postDao.setConnection(conn);
		    
		    postDto = postDao.selectPostInfo(postNum);
		    
			//게시글 작성한 유저의 정보를 가져오기 위한 메소드
			userDto = postDao.selectUser(postNum);
			
		    req.setAttribute("postDto", postDto);
		    req.setAttribute("userDto", userDto);

			rd = req.getRequestDispatcher("./postUpdateForm.jsp");
			
			rd.forward(req, res);

		} catch (Exception e) {
			//printStackTrace() 개발자를 위한 오류 - 콘솔창에 오류가뜸
			e.printStackTrace();
			
			req.setAttribute("error", e);

			rd = req.getRequestDispatcher("/Error.jsp");
			
			rd.forward(req, res);
		} 
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Connection conn = null;
		RequestDispatcher rd = null;
		
		try {
			int postNo = Integer.parseInt(req.getParameter("postNo"));
			int postNum = Integer.parseInt(req.getParameter("postNum"));
			String postTitle = req.getParameter("postTitle");
			String postContent = req.getParameter("postContent");
			
			ServletContext sc = this.getServletContext();
			conn = (Connection)sc.getAttribute("conn"); 
			
			PostDao postDao = new PostDao();
			
			postDao.setConnection(conn);
			postDao.updatePost(postNo, postTitle, postContent, postNum);
			
			resp.sendRedirect("./list");
			
		} catch (Exception e) {
			//printStackTrace() 개발자를 위한 오류 - 콘솔창에 오류가뜸
			e.printStackTrace();
			
			req.setAttribute("error", e);
			
			rd = req.getRequestDispatcher("/Error.jsp");
			
			rd.forward(req, resp);
		} 
	}

}
