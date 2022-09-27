package fbc.dto.user;

import java.util.Date;

public class UserDto {
	
	private int userNo = 0;
	private String userName = "";
	private String userNickName = "";
	private String userPhoneOrEmail = "";
	private String userPassword = "";
	private Date userBirth = null;
	private String userGender = "";
	private Date userCreateDate = null;
	private Date userModifyDate = null;
	
	public UserDto() {
		super();
	}

	public UserDto(int userNo, String userName, String userNickName, String userPhoneOrEmail, String userPassword,
			Date userBirth, String userGender, Date userCreateDate, Date userModifyDate) {
		super();
		this.userNo = userNo;
		this.userName = userName;
		this.userNickName = userNickName;
		this.userPhoneOrEmail = userPhoneOrEmail;
		this.userPassword = userPassword;
		this.userBirth = userBirth;
		this.userGender = userGender;
		this.userCreateDate = userCreateDate;
		this.userModifyDate = userModifyDate;
	}
		
	// 게시판 상세정보에 필요한 유저정보 생성자 추가
	public UserDto(int userNo, String userName, String userNickName, String userPhoneOrEmail, String userPassword) {
		super();
		this.userNo = userNo;
		this.userName = userName;
		this.userNickName = userNickName;
		this.userPhoneOrEmail = userPhoneOrEmail;
		this.userPassword = userPassword;
	}

	public UserDto(String userName, String userNickName) {
		super();
		this.userNickName = userNickName;
		this.userName = userName;
	}

	//가입에 필요한 유저정보 생성자
	public UserDto(String userName, String userPhoneOrEmail, String userPassword, Date userBirth, String userGender) {
		super();
		this.userName = userName;
		this.userPhoneOrEmail = userPhoneOrEmail;
		this.userPassword = userPassword;
		this.userBirth = userBirth;
		this.userGender = userGender;
	}

	public UserDto(String userPhoneOrEmail) {
		super();
		this.userPhoneOrEmail = userPhoneOrEmail;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserNickName() {
		return userNickName;
	}

	public void setUserNickName(String userNickName) {
		this.userNickName = userNickName;
	}

	public String getUserPhoneOrEmail() {
		return userPhoneOrEmail;
	}

	public void setUserPhoneOrEmail(String userPhoneOrEmail) {
		this.userPhoneOrEmail = userPhoneOrEmail;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public Date getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(Date userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public Date getUserCreateDate() {
		return userCreateDate;
	}

	public void setUserCreateDate(Date userCreateDate) {
		this.userCreateDate = userCreateDate;
	}

	public Date getUserModifyDate() {
		return userModifyDate;
	}

	public void setUserModifyDate(Date userModifyDate) {
		this.userModifyDate = userModifyDate;
	}

	@Override
	public String toString() {
		return "UserDto [userNo=" + userNo + ", userName=" + userName + ", userNickName=" + userNickName
				+ ", userPhoneOrEmail=" + userPhoneOrEmail + ", userPassword=" + userPassword + ", userBirth="
				+ userBirth + ", userGender=" + userGender + ", userCreateDate=" + userCreateDate + ", userModifyDate="
				+ userModifyDate + "]";
	}
	
	
}

