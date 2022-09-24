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

@WebServlet(value="/post/add")
public class PostAddServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		Connection conn = null;
		
		try {
			int postNo = Integer.parseInt(req.getParameter("postNo"));		
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			
			ServletContext sc = this.getServletContext();
			conn = (Connection)sc.getAttribute("conn");
			
			PostDao postDao = new PostDao();
			postDao.setConnection(conn);
			
			postDao.insertPost(postNo, title, content);	
			
			resp.sendRedirect("./list");
			
		} catch(Exception e) {
			
		}
	}
	
}