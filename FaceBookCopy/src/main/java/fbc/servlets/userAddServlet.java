package fbc.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.text.ParseException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fbc.dto.UserDto;

@WebServlet(value = "/user/add")
//신규 회원 추가 페이지 CRUD Create
public class userAddServlet extends HttpServlet {
	// HttpServlet이 그래도 좀 현업 레벨이래.

//doGet(겟)		: 보여지는(show) 서비스
//doPost(포스트)	: 수행되는 서비스			-void service 를 겟/포스트 로 나눈것이다
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		//req - 사용자의 요청 / res - 요청에대한 응답
		res.sendRedirect("./userAddForm.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		System.out.println("go doPost");

		Connection conn = null;
		UserDto userDto = new UserDto();		
		boolean signUpChk = false;
		// 포맷터
		SimpleDateFormat formatter 
		= new SimpleDateFormat("YYYYMMDD");
		
		try {
			String name = req.getParameter("lastname") + " " + req.getParameter("fistname");
			String id = req.getParameter("userId");
			String pwd = req.getParameter("pwd");
			// 문자열 -> Date        
	        String dateStr 
	        = req.getParameter("birth_Y")
	        + req.getParameter("birth_M")
	        + req.getParameter("birth_D");	        
	        Date birth = formatter.parse(dateStr);
	        String gender = "";
	        String genderCheck = req.getParameter("sex");
	        
	        if(genderCheck == "0") {
	        	gender = "여성";
	        }else if(genderCheck == "1") {
	        	gender = "남성";
	        }else {
	        	gender = "개인지정";
//	        	gender = req.getParameter("otherSex");
	        }
	        
	        
			userDto.setUserName(name);
			userDto.setUserPhoneOrEmail(id);
			userDto.setUserPassword(pwd);
			userDto.setUserBirth(birth);
			userDto.setUserGender(gender);
			
			ServletContext sc = this.getServletContext();
			
			conn = (Connection)sc.getAttribute("conn");
			
			
			if(signUpChk) {
				System.out.println("회원가입 실패");
			}
			
			res.sendRedirect("../user/signUpAgreement.jsp");				
			
		} catch (Exception e) {

			req.setAttribute("error", e);

			RequestDispatcher dispatcher = req.getRequestDispatcher("/ErrorPage.jsp");
			dispatcher.forward(req, res);

		} 
	}

}
