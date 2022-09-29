package fbc.servlets.post;

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

@WebServlet(value="/post/delete")
public class PostDeleteServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		Connection conn = null;
		RequestDispatcher rd = null;
		
		try {
			System.out.println("삭제 시작 1번");
			int page = Integer.parseInt(req.getParameter("page"));
			
			System.out.println(page + "page의 값 << 2번");
			
			req.setAttribute("page", page);
			
			int postNum = Integer.parseInt(req.getParameter("postNum"));
			
			System.out.println(postNum + "postNum의 값 << 3번");

			ServletContext sc = this.getServletContext();
			conn = (Connection) sc.getAttribute("conn");

			System.out.println("DB연결 << 4번");
			PostDao postDao = new PostDao();
			postDao.setConnection(conn);
			
			System.out.println("DB에서 쿼리문 실행 <<5번");
			postDao.deletePost(postNum);

			System.out.println("DB에서 쿼리문 실행 후 결과 << 6번");
			resp.sendRedirect("./list?page=" + page);
			
		} catch (Exception e) {
			//printStackTrace() 개발자를 위한 오류 - 콘솔창에 오류가뜸
			e.printStackTrace();
			
			req.setAttribute("error", e);
			
			rd = req.getRequestDispatcher("/Error.jsp");
			
			rd.forward(req, resp);
		} 
	
	}
}
