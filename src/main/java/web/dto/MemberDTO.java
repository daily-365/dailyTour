package web.dto;

import java.util.Date;

public class MemberDTO {

private String	userId;
private String userPw;
private String	userName;
private String	userGender;
private String	userBirth1;
private String	userBirth2;
private String	userBirth3;
private String	userPhone;
private String	userMail;

private int verify;


private int userNo;
private String userGrade;
private Date regiDate;



public int getUserNo() {
	return userNo;
}
public void setUserNo(int userNo) {
	this.userNo = userNo;
}
public String getUserGrade() {
	return userGrade;
}
public void setUserGrade(String userGrade) {
	this.userGrade = userGrade;
}
public Date getregiDate() {
	return regiDate;
}
public void setregiDate(Date regiDate) {
	this.regiDate = regiDate;
}
public int getVerify() {
	return verify;
}
public void setVerify(int verify) {
	this.verify = verify;
}
public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
public String getUserPw() {
	return userPw;
}
public void setUserPw(String userPw) {
	this.userPw = userPw;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getUserGender() {
	return userGender;
}
public void setUserGender(String userGender) {
	this.userGender = userGender;
}
public String getUserBirth1() {
	return userBirth1;
}
public void setUserBirth1(String userBirth1) {
	this.userBirth1 = userBirth1;
}
public String getUserBirth2() {
	return userBirth2;
}
public void setUserBirth2(String userBirth2) {
	this.userBirth2 = userBirth2;
}
public String getUserBirth3() {
	return userBirth3;
}
public void setUserBirth3(String userBirth3) {
	this.userBirth3 = userBirth3;
}
public String getUserPhone() {
	return userPhone;
}
public void setUserPhone(String userPhone) {
	this.userPhone = userPhone;
}
public String getUserMail() {
	return userMail;
}
public void setUserMail(String userMail) {
	this.userMail = userMail;
}



	
}
