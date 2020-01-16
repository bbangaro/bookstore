package com.bc.model.vo;

public class ReviewVO {
 private String	level,
	reviewNum,
	memberId,
	subject,
	rContent,
	upload,
	bCode,
	orderid,
	bBype,
	parentno;
 
 public ReviewVO() {}
 
 

public ReviewVO(String level, String reviewNum, String memberId, String subject, String rContent, String upload,
		String bCode, String orderid, String bBype, String parentno) {
	super();
	this.level = level;
	this.reviewNum = reviewNum;
	this.memberId = memberId;
	this.subject = subject;
	this.rContent = rContent;
	this.upload = upload;
	this.bCode = bCode;
	this.orderid = orderid;
	this.bBype = bBype;
	this.parentno = parentno;
}

public String getLevel() {
	return level;
}

public void setLevel(String level) {
	this.level = level;
}

public String getReviewNum() {
	return reviewNum;
}

public void setReviewNum(String reviewNum) {
	this.reviewNum = reviewNum;
}

public String getMemberId() {
	return memberId;
}

public void setMemberId(String memberId) {
	this.memberId = memberId;
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

public String getbCode() {
	return bCode;
}

public void setbCode(String bCode) {
	this.bCode = bCode;
}

public String getOrderid() {
	return orderid;
}

public void setOrderid(String orderid) {
	this.orderid = orderid;
}

public String getbBype() {
	return bBype;
}

public void setbBype(String bBype) {
	this.bBype = bBype;
}

public String getParentno() {
	return parentno;
}

public void setParentno(String parentno) {
	this.parentno = parentno;
}

@Override
public String toString() {
	return "ReviewVO [level=" + level + ", reviewNum=" + reviewNum + ", memberId=" + memberId + ", subject=" + subject
			+ ", rContent=" + rContent + ", upload=" + upload + ", bCode=" + bCode + ", orderid=" + orderid + ", bBype="
			+ bBype + ", parentno=" + parentno + "]";
}





}
