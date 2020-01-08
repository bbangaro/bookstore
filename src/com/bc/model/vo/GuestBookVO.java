package com.bc.model.vo;

public class GuestBookVO {
	private int reviewNum ;
	private String subject, rContent, upload ;
	
	public GuestBookVO() {}

	public GuestBookVO(int reviewNum, String subject, String rContent, String upload) {
		super();
		this.reviewNum = reviewNum;
		this.subject = subject;
		this.rContent = rContent;
		this.upload = upload;
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

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public String getUpload() {
		return upload;
	}

	public void setUpload(String upload) {
		this.upload = upload;
	}

	@Override
	public String toString() {
		return "GuestBookVO [reviewNum=" + reviewNum + ", subject=" + subject + ", rContent=" + rContent + ", upload="
				+ upload + "]";
	}
	

}
