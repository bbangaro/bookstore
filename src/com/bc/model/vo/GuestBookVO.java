package com.bc.model.vo;

import java.util.List;

public class GuestBookVO {
	private int nNum, qNum, bType, requestNum, reviewNum;
	private String subject,	content, wDate, memberId, userName,	password, category, upload, bCode, regdate,
				   rContent, orderId ;
	
	//리스트 타입의 코멘트듣ㄹ~
	private List<CommentVO> commentList;
	
	public GuestBookVO() {}

	public GuestBookVO(int nNum, int qNum, int bType, int requestNum, int reviewNum, String subject, String content,
			String wDate, String memberId, String userName, String password, String category, String upload,
			String bCode, String regdate, String rContent, String orderId, List<CommentVO> commentList) {
		
		super();
		this.nNum = nNum;
		this.qNum = qNum;
		this.bType = bType;
		this.requestNum = requestNum;
		this.reviewNum = reviewNum;
		this.subject = subject;
		this.content = content;
		this.wDate = wDate;
		this.memberId = memberId;
		this.userName = userName;
		this.password = password;
		this.category = category;
		this.upload = upload;
		this.bCode = bCode;
		this.regdate = regdate;
		this.rContent = rContent;
		this.orderId = orderId;
		this.commentList = commentList;
	}
	

	public int getnNum() {
		return nNum;
	}

	public void setnNum(int nNum) {
		this.nNum = nNum;
	}

	public int getqNum() {
		return qNum;
	}

	public void setqNum(int qNum) {
		this.qNum = qNum;
	}

	public int getbType() {
		return bType;
	}

	public void setbType(int bType) {
		this.bType = bType;
	}

	public int getRequestNum() {
		return requestNum;
	}

	public void setRequestNum(int requestNum) {
		this.requestNum = requestNum;
	}

	public int getReviewNum() {
		return reviewNum;
	}

	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getwDate() {
		return wDate;
	}

	public void setwDate(String wDate) {
		this.wDate = wDate;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getUpload() {
		return upload;
	}

	public void setUpload(String upload) {
		this.upload = upload;
	}

	public String getbCode() {
		return bCode;
	}

	public void setbCode(String bCode) {
		this.bCode = bCode;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	
	
	public List<CommentVO> getCommentList() {
		return commentList;
	}

	public void setCommentList(List<CommentVO> commentList) {
		this.commentList = commentList;
	}

	
	@Override
	public String toString() {
		return "GuestBookVO [nNum=" + nNum + ", qNum=" + qNum + ", bType=" + bType + ", requestNum=" + requestNum
				+ ", reviewNum=" + reviewNum + ", subject=" + subject + ", content=" + content + ", wDate=" + wDate
				+ ", memberId=" + memberId + ", userName=" + userName + ", password=" + password + ", category="
				+ category + ", upload=" + upload + ", bCode=" + bCode + ", regdate=" + regdate + ", rContent="
				+ rContent + ", orderId=" + orderId + ", commentList=" + commentList + "]";
	}
	
	
}
