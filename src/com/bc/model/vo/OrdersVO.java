package com.bc.model.vo;

public class OrdersVO {
	
	private int oNum, bType, productsCount, amount, cancel ;
	private String orderId, memberId, bCode, buyerName, buyerZipcode, buyerAddress, buyerPhone, buyerEmail, recipientName, recipientZipcode,
				   recipientAddress, recipientPhone, message, payType, bankName, depositName, depositDate, state, wDate, bName ;
	
	public OrdersVO() {}

	public OrdersVO(int oNum, int bType, int productsCount, int amount, int cancel, String orderId, String memberId,
			String bCode, String buyerName, String buyerZipcode, String buyerAddress, String buyerPhone,
			String buyerEmail, String recipientName, String recipientZipcode, String recipientAddress,
			String recipientPhone, String message, String payType, String bankName, String depositName,
			String depositDate, String state, String wDate, String bName) {
		super();
		this.oNum = oNum;
		this.bType = bType;
		this.productsCount = productsCount;
		this.amount = amount;
		this.cancel = cancel;
		this.orderId = orderId;
		this.memberId = memberId;
		this.bCode = bCode;
		this.buyerName = buyerName;
		this.buyerZipcode = buyerZipcode;
		this.buyerAddress = buyerAddress;
		this.buyerPhone = buyerPhone;
		this.buyerEmail = buyerEmail;
		this.recipientName = recipientName;
		this.recipientZipcode = recipientZipcode;
		this.recipientAddress = recipientAddress;
		this.recipientPhone = recipientPhone;
		this.message = message;
		this.payType = payType;
		this.bankName = bankName;
		this.depositName = depositName;
		this.depositDate = depositDate;
		this.state = state;
		this.wDate = wDate;
		this.bName = bName;
	}

	public int getoNum() {
		return oNum;
	}

	public void setoNum(int oNum) {
		this.oNum = oNum;
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
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getCancel() {
		return cancel;
	}

	public void setCancel(int cancel) {
		this.cancel = cancel;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getbCode() {
		return bCode;
	}

	public void setbCode(String bCode) {
		this.bCode = bCode;
	}

	public String getBuyerName() {
		return buyerName;
	}

	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
	}

	public String getBuyerZipcode() {
		return buyerZipcode;
	}

	public void setBuyerZipcode(String buyerZipcode) {
		this.buyerZipcode = buyerZipcode;
	}

	public String getBuyerAddress() {
		return buyerAddress;
	}

	public void setBuyerAddress(String buyerAddress) {
		this.buyerAddress = buyerAddress;
	}

	public String getBuyerPhone() {
		return buyerPhone;
	}

	public void setBuyerPhone(String buyerPhone) {
		this.buyerPhone = buyerPhone;
	}

	public String getBuyerEmail() {
		return buyerEmail;
	}

	public void setBuyerEmail(String buyerEmail) {
		this.buyerEmail = buyerEmail;
	}

	public String getRecipientName() {
		return recipientName;
	}

	public void setRecipientName(String recipientName) {
		this.recipientName = recipientName;
	}

	public String getRecipientZipcode() {
		return recipientZipcode;
	}

	public void setRecipientZipcode(String recipientZipcode) {
		this.recipientZipcode = recipientZipcode;
	}

	public String getRecipientAddress() {
		return recipientAddress;
	}

	public void setRecipientAddress(String recipientAddress) {
		this.recipientAddress = recipientAddress;
	}

	public String getRecipientPhone() {
		return recipientPhone;
	}

	public void setRecipientPhone(String recipientPhone) {
		this.recipientPhone = recipientPhone;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getPayType() {
		return payType;
	}

	public void setPayType(String payType) {
		this.payType = payType;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getDepositName() {
		return depositName;
	}

	public void setDepositName(String depositName) {
		this.depositName = depositName;
	}

	public String getDepositDate() {
		return depositDate;
	}

	public void setDepositDate(String depositDate) {
		this.depositDate = depositDate;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getwDate() {
		return wDate;
	}

	public void setwDate(String wDate) {
		this.wDate = wDate;
	}

	public String getbName() {
		return bName;
	}

	public void setbName(String bName) {
		this.bName = bName;
	}

	@Override
	public String toString() {
		return "OrdersVO [oNum=" + oNum + ", bType=" + bType + ", productsCount=" + productsCount + ", amount=" + amount
				+ ", cancel=" + cancel + ", orderId=" + orderId + ", memberId=" + memberId + ", bCode=" + bCode
				+ ", buyerName=" + buyerName + ", buyerZipcode=" + buyerZipcode + ", buyerAddress=" + buyerAddress
				+ ", buyerPhone=" + buyerPhone + ", buyerEmail=" + buyerEmail + ", recipientName=" + recipientName
				+ ", recipientZipcode=" + recipientZipcode + ", recipientAddress=" + recipientAddress
				+ ", recipientPhone=" + recipientPhone + ", message=" + message + ", payType=" + payType + ", bankName="
				+ bankName + ", depositName=" + depositName + ", depositDate=" + depositDate + ", state=" + state
				+ ", wDate=" + wDate + ", bName=" + bName + "]";
	}
	
	
	
	

	
	
	
	
}
