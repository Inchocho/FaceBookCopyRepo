package fbc.dto;

import java.util.Date;

public class PostDto {
	
	private int postNum = 0;
	private int postNo = 0;
	private String postTitle = "";
	private String postContent = "";
	private Date postCreateDate = null;
	private Date postModifyDate = null;
	private int count = 0;
	
	public PostDto() {
		super();
	}

	public PostDto(int postNum, int postNo, String postTitle, String postContent, Date postCreateDate,
			Date postModifyDate, int count) {
		super();
		this.postNum = postNum;
		this.postNo = postNo;
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.postCreateDate = postCreateDate;
		this.postModifyDate = postModifyDate;
		this.count = count;
	}

	public int getPostNum() {
		return postNum;
	}

	public void setPostNum(int postNum) {
		this.postNum = postNum;
	}

	public int getPostNo() {
		return postNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostContent() {
		return postContent;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public Date getPostCreateDate() {
		return postCreateDate;
	}

	public void setPostCreateDate(Date postCreateDate) {
		this.postCreateDate = postCreateDate;
	}

	public Date getPostModifyDate() {
		return postModifyDate;
	}

	public void setPostModifyDate(Date postModifyDate) {
		this.postModifyDate = postModifyDate;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "PostDto [postNum=" + postNum + ", postNo=" + postNo + ", postTitle=" + postTitle + ", postContent="
				+ postContent + ", postCreateDate=" + postCreateDate + ", postModifyDate=" + postModifyDate + ", count="
				+ count + "]";
	}
	
}

