package com.bc.model.vo;

public class MemberVO {
	private String memberId, userName,	password, email, zipcode, address1, address2, mobilePhone, regdate ;
	private int	uStatus ;
	
	public MemberVO() {}

	public MemberVO(String memberId, String userName, String password, String email, String zipcode, String address1,
			String address2, String mobilePhone, String regdate, int uStatus) {
		super();
		this.memberId = memberId;
		this.userName = userName;
		this.password = password;
		this.email = email;
		this.zipcode = zipcode;
		this.address1 = address1;
		this.address2 = address2;
		this.mobilePhone = mobilePhone;
		this.regdate = regdate;
		this.uStatus = uStatus;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getMobilePhone() {
		return mobilePhone;
	}

	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getuStatus() {
		return uStatus;
	}

	public void setuStatus(int uStatus) {
		this.uStatus = uStatus;
	}

	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", userName=" + userName + ", password=" + password + ", email="
				+ email + ", zipcode=" + zipcode + ", address1=" + address1 + ", address2=" + address2
				+ ", mobilePhone=" + mobilePhone + ", regdate=" + regdate + ", uStatus=" + uStatus + "]";
	}
	
	
	
}
