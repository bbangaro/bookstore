package com.bc.model.vo;

public class CartVO {
	private String bCode, wdate, memberId, bName;
	private int pNum, bType, productsCount, price, salePrice;
	
	//수량별 금액(세일가 * 수량)
	private int totalprice;
	
	//할인율
	public int getPercent() {
		double percent = (price - salePrice) * 100 / price;
		return (int) percent;
	}
	
	public int getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	public String getbCode() {
		return bCode;
	}
	public void setbCode(String bCode) {
		this.bCode = bCode;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getbName() {
		return bName;
	}
	public void setbName(String bName) {
		this.bName = bName;
	}
	public int getpNum() {
		return pNum;
	}
	public void setpNum(int pNum) {
		this.pNum = pNum;
	}
	public int getbType() {
		return bType;
	}
	public void setbType(int bType) {
		this.bType = bType;
	}
	public int getProductsCount() {
		return productsCount;
	}
	public void setProductsCount(int productsCount) {
		this.productsCount = productsCount;
		//수량이 변경되면 수량별 금액 변경
		totalprice = salePrice * productsCount;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	
	@Override
	public String toString() {
		return "CartVO [bCode=" + bCode + ", wdate=" + wdate + ", memberId=" + memberId + ", bName=" + bName + ", pNum="
				+ pNum + ", bType=" + bType + ", productsCount=" + productsCount + ", price=" + price + ", salePrice="
				+ salePrice + ", totalprice=" + totalprice + "]";
	}
	
}
