package user;

public class User {
	private String userID ; //���̵�
	private String userPassword ; //��й�ȣ
	private String userName ; //�̸�
	private String userEmail ; //�̸���
	
	//userID : ���̵�
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	
	//userPassword : ��й�ȣ 
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
	//userName : �̸�
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	//userEmail : �̸���
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	
}
