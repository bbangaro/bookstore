package com.bc.model.vo;

public class OrdersVO {
	int oNum, productsCount, amount, cancel ;
	String orderId, buyerName,	buyerZipcode, buyerAddress, buyerPhone, buyerEmail,
		   recipientName, recipientZipcode, recipientAddress, recipientPhone, message,
		   payYype,	bankName, depositName, depositDate,	State, wDate ;
	
	public OrdersVO() {}

	public OrdersVO(int oNum, int productsCount, int amount, int cancel, String orderId, String buyerName,
			String buyerZipcode, String buyerAddress, String buyerPhone, String buyerEmail, String recipientName,
			String recipientZipcode, String recipientAddress, String recipientPhone, String message, String payYype,
			String bankName, String depositName, String depositDate, String state, String wDate) {
		super();
		this.oNum = oNum;
		this.productsCount = productsCount;
		this.amount = amount;
		this.cancel = cancel;
		this.orderId = orderId;
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
		this.payYype = payYype;
		this.bankName = bankName;
		this.depositName = depositName;
		this.depositDate = depositDate;
		State = state;
		this.wDate = wDate;
	}

	public int getoNum() {
		return oNum;
	}

	public void setoNum(int oNum) {
		this.oNum = oNum;
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

	public String getPayYype() {
		return payYype;
	}

	public void setPayYype(String payYype) {
		this.payYype = payYype;
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
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public String getwDate() {
		return wDate;
	}

	public void setwDate(String wDate) {
		this.wDate = wDate;
	}

	@Override
	public String toString() {
		return "OrdersVO [oNum=" + oNum + ", productsCount=" + productsCount + ", amount=" + amount + ", cancel="
				+ cancel + ", orderId=" + orderId + ", buyerName=" + buyerName + ", buyerZipcode=" + buyerZipcode
				+ ", buyerAddress=" + buyerAddress + ", buyerPhone=" + buyerPhone + ", buyerEmail=" + buyerEmail
				+ ", recipientName=" + recipientName + ", recipientZipcode=" + recipientZipcode + ", recipientAddress="
				+ recipientAddress + ", recipientPhone=" + recipientPhone + ", message=" + message + ", payYype="
				+ payYype + ", bankName=" + bankName + ", depositName=" + depositName + ", depositDate=" + depositDate
				+ ", State=" + State + ", wDate=" + wDate + "]";
	}
	
}
