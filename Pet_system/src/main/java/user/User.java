package user;

public class User {
	private String userID ; //아이디
	private String userPassword ; //비밀번호
	private String userName ; //이름
	private String userEmail ; //이메일
	
	//userID : 아이디
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	
	//userPassword : 비밀번호 
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
	//userName : 이름
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	//userEmail : 이메일
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	
}
