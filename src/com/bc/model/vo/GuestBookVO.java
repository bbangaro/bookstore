package com.bc.model.vo;

public class GuestBookVO {
	int requestNum, reviewNum, qNum, nNum ;
	String subject, rContent, upload, regdate, categor, wDate, writerName ;
	
	public GuestBookVO() {}

	public GuestBookVO(int requestNum, int reviewNum, int qNum, int nNum, String subject, String rContent,
			String upload, String regdate, String categor, String wDate, String writerName) {
		super();
		this.requestNum = requestNum;
		this.reviewNum = reviewNum;
		this.qNum = qNum;
		this.nNum = nNum;
		this.subject = subject;
		this.rContent = rContent;
		this.upload = upload;
		this.regdate = regdate;
		this.categor = categor;
		this.wDate = wDate;
		this.writerName = writerName;
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

	public int getqNum() {
		return qNum;
	}

	public void setqNum(int qNum) {
		this.qNum = qNum;
	}

	public int getnNum() {
		return nNum;
	}

	public void setnNum(int nNum) {
		this.nNum = nNum;
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

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getCategor() {
		return categor;
	}

	public void setCategor(String categor) {
		this.categor = categor;
	}

	public String getwDate() {
		return wDate;
	}

	public void setwDate(String wDate) {
		this.wDate = wDate;
	}

	public String getWriterName() {
		return writerName;
	}

	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}

	@Override
	public String toString() {
		return "GuestBookVO [requestNum=" + requestNum + ", reviewNum=" + reviewNum + ", qNum=" + qNum + ", nNum="
				+ nNum + ", subject=" + subject + ", rContent=" + rContent + ", upload=" + upload + ", regdate="
				+ regdate + ", categor=" + categor + ", wDate=" + wDate + ", writerName=" + writerName + "]";
	}
	
	
	
}
