package fbc.servlets.auth;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fbc.dao.auth.AuthDao;
import fbc.dto.user.UserDto;

@WebServlet(value = "/auth/find")
public class FindServelt extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		RequestDispatcher rs = req.getRequestDispatcher("./authFindPassword.jsp");

		rs.forward(req, res);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		Connection conn = null;

		String email = req.getParameter("email");

		try {
			ServletContext sc = this.getServletContext();
			conn = (Connection) sc.getAttribute("conn");

			AuthDao authDao = new AuthDao();
			authDao.setConnection(conn);

			UserDto userDto = authDao.emailFind(email);

			// 값이 빈칸이면
			if (userDto == null) {// 아이디가 없을때
				String findFail = "다른 방법으로 계정을 확인하세요.\n" + "이메일 또는 전화번호를 이용해 계정을 확인해 주세요.";

				req.setAttribute("findFail", findFail);

				RequestDispatcher rd = req.getRequestDispatcher("./authFindPassword.jsp");
				rd.forward(req, res);

			} else {// 아이디를 찾음

				req.setAttribute("userDto", userDto);

				RequestDispatcher rd = req.getRequestDispatcher("../auth/authPasswordCheck.jsp");
				rd.forward(req, res);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new ServletException(e);
		}

	}
}
