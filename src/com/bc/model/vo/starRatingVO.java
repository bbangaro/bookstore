package com.bc.model.vo;

public class starRatingVO {
	String star, title, content, idx, bCode;
	
	public starRatingVO() {};

	public starRatingVO(String star, String title, String content, String idx, String bCode) {
		super();
		this.star = star;
		this.title = title;
		this.content = content;
		this.idx = idx;
		this.bCode = bCode;
	}

	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getbCode() {
		return bCode;
	}

	public void setbCode(String bCode) {
		this.bCode = bCode;
	}

	@Override
	public String toString() {
		return "starRating [star=" + star + ", title=" + title + ", content=" + content + ", idx=" + idx + ", bCode="
				+ bCode + "]";
	}

}
