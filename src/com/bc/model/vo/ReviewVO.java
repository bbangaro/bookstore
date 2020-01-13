package com.bc.model.vo;

public class ReviewVO {

	String review_num, member_id, username, password, subject, r_content, upload, b_code, orderid, b_type;

	
	
	
	public ReviewVO(String review_num, String member_id, String username, String password, String subject,
			String r_content, String upload, String b_code, String orderid, String b_type) {
		super();
		this.review_num = review_num;
		this.member_id = member_id;
		this.username = username;
		this.password = password;
		this.subject = subject;
		this.r_content = r_content;
		this.upload = upload;
		this.b_code = b_code;
		this.orderid = orderid;
		this.b_type = b_type;
	}

	public String getReview_num() {
		return review_num;
	}

	public void setReview_num(String review_num) {
		this.review_num = review_num;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public String getUpload() {
		return upload;
	}

	public void setUpload(String upload) {
		this.upload = upload;
	}

	public String getB_code() {
		return b_code;
	}

	public void setB_code(String b_code) {
		this.b_code = b_code;
	}

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public String getB_type() {
		return b_type;
	}

	public void setB_type(String b_type) {
		this.b_type = b_type;
	}

	@Override
	public String toString() {
		return "ReviewVO [review_num=" + review_num + ", member_id=" + member_id + ", username=" + username
				+ ", password=" + password + ", subject=" + subject + ", r_content=" + r_content + ", upload=" + upload
				+ ", b_code=" + b_code + ", orderid=" + orderid + ", b_type=" + b_type + "]";
	}

	
}
