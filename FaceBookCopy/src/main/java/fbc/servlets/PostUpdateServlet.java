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

@WebServlet(value="/post/update")
public class PostUpdateServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		Connection conn = null;
		
		//반복사용되는 RequestDispatcher타입 객체를 생성함
		RequestDispatcher rd = null;

		PostDto postDto = new PostDto();
		int postNo = 0;

		try {
			postNo = Integer.parseInt(req.getParameter("postNo"));
			ServletContext sc = this.getServletContext();

			conn = (Connection) sc.getAttribute("conn");
			
		    PostDao postDao = new PostDao();
		    postDao.setConnection(conn);
		    
		    postDto = postDao.selectOne(postNo);
			
		    req.setAttribute("postDto", postDto);

			rd = req.getRequestDispatcher("./postUpdate.jsp");
			
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
		
		try {
			ServletContext sc = this.getServletContext();
			conn = (Connection)sc.getAttribute("conn"); 
			
		} catch(Exception e) {
			throw e;
		}
	}
}
