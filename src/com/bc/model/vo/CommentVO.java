package com.bc.model.vo;

public class CommentVO {
	private int reviewNum, qNum, requestNum;
	private String memberId, content, password, writerName, cIdx;
	
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
	public int getRequestNum() {
		return requestNum;
	}
	public void setRequestNum(int requestNum) {
		this.requestNum = requestNum;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public String getcIdx() {
		return cIdx;
	}
	public void setcIdx(String cIdx) {
		this.cIdx = cIdx;
	}
	@Override
	public String toString() {
		return "CommentVO [reviewNum=" + reviewNum + ", qNum=" + qNum + ", requestNum=" + requestNum + ", memberId="
				+ memberId + ", content=" + content + ", password=" + password + ", writerName=" + writerName
				+ ", cIdx=" + cIdx + "]";
	}
}
