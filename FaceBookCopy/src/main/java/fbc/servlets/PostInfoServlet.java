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

@WebServlet(value="/post/info")
public class PostInfoServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		
		Connection conn = null;
		
		try {
			int postNo = Integer.parseInt(req.getParameter("postNo"));
			
			ServletContext sc = this.getServletContext();
			conn = (Connection)sc.getAttribute("conn");
			
			PostDao postDao = new PostDao();
			postDao.setConnection(conn);
			
			PostDto postDto = new PostDto();
			postDto = postDao.selectPostInfo(postNo);
			
			req.setAttribute("postDto", postDto);
			
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
