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
import javax.servlet.http.HttpSession;

import fbc.dao.LoginDao;
import fbc.dto.UserDto;

@WebServlet(value = "/auth/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {
		
		RequestDispatcher rd = req.getRequestDispatcher("./authLogin.jsp");
		rd.forward(req, res);
	}
	
	@Override
	protected void doPost(HttpServletRequest req
			, HttpServletResponse res) throws ServletException, IOException {
		
		Connection conn = null;
		
		String email = req.getParameter("email");
		String pwd = req.getParameter("password");
		
		try {
			ServletContext sc = this.getServletContext();

			conn = (Connection)sc.getAttribute("conn");

			LoginDao LoginDao = new LoginDao();
			LoginDao.setConnection(conn);
			
			
			UserDto userDto = LoginDao.login(email, pwd);
			
			// 회원이 없다면 로그인 실패 페이지로 이동
			if(userDto == null) {
				
				RequestDispatcher rd 
				= req.getRequestDispatcher("./authLoginFailure.jsp");
			
				rd.forward(req, res);
				return;
			}
			
			// 회원이 존재한다면 세션에 담고
			// 회원 전체 조회 페이지로 이동
			HttpSession session = req.getSession();
			
			session.setAttribute("user", userDto);
			
//			session.removeAttribute(name);

			res.sendRedirect("../post/postList.jsp");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new ServletException(e);
		}
		
		
	}
}
