package pet;

public class Pet {
	private String userID ; //���̵�
	private String petName ; //[pet] �̸� 
	private String petDiv ; //[pet] �з�
	private String petBreed ; //[pet] ��
	private Double petAge ; //[pet] ����
	private Double petWeight ; //[pet] ����
	
	//���̵�
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	
	//[pet] �̸�
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	
	//[pet] �з�
	public String getPetDiv() {
		return petDiv;
	}
	public void setPetDiv(String petDiv) {
		this.petDiv = petDiv;
	}
	
	//[pet] ��
	public String getPetBreed() {
		return petBreed;
	}
	public void setPetBreed(String petBreed) {
		this.petBreed = petBreed;
	}
	
	//[pet] ����
	public Double getPetAge() {
		return petAge;
	}
	public void setPetAge(Double petAge) {
		this.petAge = petAge;
	}
	
	//[pet] ����
	public Double getPetWeight() {
		return petWeight;
	}
	public void setPetWeight(Double petWeight) {
		this.petWeight = petWeight;
	}
	
	
}
