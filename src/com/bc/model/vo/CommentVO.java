package com.bc.model.vo;

public class CommentVO {
	private int review_num, q_num, request_num;
	private String member_id, content, password, writer_name, c_idx;
	
	public int getReview_num() {
		return review_num;
	}
	public void setReview_num(int review_num) {
		this.review_num = review_num;
	}
	public int getQ_num() {
		return q_num;
	}
	public void setQ_num(int q_num) {
		this.q_num = q_num;
	}
	public int getRequest_num() {
		return request_num;
	}
	public void setRequest_num(int request_num) {
		this.request_num = request_num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
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
	public String getWriter_name() {
		return writer_name;
	}
	public void setWriter_name(String writer_name) {
		this.writer_name = writer_name;
	}
	public String getC_idx() {
		return c_idx;
	}
	public void setC_idx(String c_idx) {
		this.c_idx = c_idx;
	}
	
	@Override
	public String toString() {
		return "CommentVO [review_num=" + review_num + ", q_num=" + q_num + ", request_num=" + request_num
				+ ", member_id=" + member_id + ", content=" + content + ", password=" + password + ", writer_name="
				+ writer_name + ", c_idx=" + c_idx + "]";
	}
}
