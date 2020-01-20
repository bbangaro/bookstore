package com.bc.model.vo;

public class BookVO {
	
	private int hName,  bPrice, salePrice, eNum, buyNum, bType ;
	private String hCode, lCode, bName, bCompany, status, st1, st2, 
		   content, created, bCode, bImage, writerName, contents,  eImage, aNum, audio, lName, eText;
	public BookVO() {}
	
	public BookVO(int hName, String lName, int bPrice, int salePrice, int buyNum, int bType, String hCode, String lCode,
			String bName, String bCompany, String status, String st1, String st2, String content, String created,
			String bCode, String bImage, String writerName, String contents, int eNum, String eImage, String aNum,
			String audio, String eText) {
		super();
		this.hName = hName;
		this.lName = lName;
		this.bPrice = bPrice;
		this.salePrice = salePrice;
		this.buyNum = buyNum;
		this.bType = bType;
		this.hCode = hCode;
		this.lCode = lCode;
		this.bName = bName;
		this.bCompany = bCompany;
		this.status = status;
		this.st1 = st1;
		this.st2 = st2;
		this.content = content;
		this.created = created;
		this.bCode = bCode;
		this.bImage = bImage;
		this.writerName = writerName;
		this.contents = contents;
		this.eNum = eNum;
		this.eImage = eImage;
		this.aNum = aNum;
		this.audio = audio;
		this.eText = eText;
	}
	
	

	public String geteText() {
		return eText;
	}

	public void seteText(String eText) {
		this.eText = eText;
	}

	public int gethName() {
		return hName;
	}

	public void sethName(int hName) {
		this.hName = hName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public int getbPrice() {
		return bPrice;
	}

	public void setbPrice(int bPrice) {
		this.bPrice = bPrice;
	}

	public int getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}

	public int getBuyNum() {
		return buyNum;
	}

	public void setBuyNum(int buyNum) {
		this.buyNum = buyNum;
	}

	public int getbType() {
		return bType;
	}

	public void setbType(int bType) {
		this.bType = bType;
	}

	public String gethCode() {
		return hCode;
	}

	public void sethCode(String hCode) {
		this.hCode = hCode;
	}

	public String getlCode() {
		return lCode;
	}

	public void setlCode(String lCode) {
		this.lCode = lCode;
	}

	public String getbName() {
		return bName;
	}

	public void setbName(String bName) {
		this.bName = bName;
	}

	public String getbCompany() {
		return bCompany;
	}

	public void setbCompany(String bCompany) {
		this.bCompany = bCompany;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSt1() {
		return st1;
	}

	public void setSt1(String st1) {
		this.st1 = st1;
	}

	public String getSt2() {
		return st2;
	}

	public void setSt2(String st2) {
		this.st2 = st2;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreated() {
		return created;
	}

	public void setCreated(String created) {
		this.created = created;
	}

	public String getbCode() {
		return bCode;
	}

	public void setbCode(String bCode) {
		this.bCode = bCode;
	}

	public String getbImage() {
		return bImage;
	}

	public void setbImage(String bImage) {
		this.bImage = bImage;
	}

	public String getWriterName() {
		return writerName;
	}

	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public int geteNum() {
		return eNum;
	}

	public void seteNum(int eNum) {
		this.eNum = eNum;
	}

	public String geteImage() {
		return eImage;
	}

	public void seteImage(String eImage) {
		this.eImage = eImage;
	}

	public String getaNum() {
		return aNum;
	}

	public void setaNum(String aNum) {
		this.aNum = aNum;
	}

	public String getAudio() {
		return audio;
	}

	public void setAudio(String audio) {
		this.audio = audio;
	}

	@Override
	public String toString() {
		return "BookVO [hName=" + hName + ", bPrice=" + bPrice + ", salePrice=" + salePrice + ", buyNum=" + buyNum
				+ ", bType=" + bType + ", hCode=" + hCode + ", lCode=" + lCode + ", bName=" + bName + ", bCompany="
				+ bCompany + ", status=" + status + ", st1=" + st1 + ", st2=" + st2 + ", content=" + content
				+ ", created=" + created + ", bCode=" + bCode + ", bImage=" + bImage + ", writerName=" + writerName
				+ ", contents=" + contents + ", eNum=" + eNum + ", eImage=" + eImage + ", aNum=" + aNum + ", audio="
				+ audio + ", lName=" + lName + ", eText=" + eText + "]";
	}
	

}
