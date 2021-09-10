package pet;

public class Pet {
	private String userID ; //아이디
	private String petName ; //[pet] 이름 
	private String petDiv ; //[pet] 분류
	private String petBreed ; //[pet] 종
	private Double petAge ; //[pet] 나이
	private Double petWeight ; //[pet] 무게
	
	//아이디
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	
	//[pet] 이름
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	
	//[pet] 분류
	public String getPetDiv() {
		return petDiv;
	}
	public void setPetDiv(String petDiv) {
		this.petDiv = petDiv;
	}
	
	//[pet] 종
	public String getPetBreed() {
		return petBreed;
	}
	public void setPetBreed(String petBreed) {
		this.petBreed = petBreed;
	}
	
	//[pet] 나이
	public Double getPetAge() {
		return petAge;
	}
	public void setPetAge(Double petAge) {
		this.petAge = petAge;
	}
	
	//[pet] 무게
	public Double getPetWeight() {
		return petWeight;
	}
	public void setPetWeight(Double petWeight) {
		this.petWeight = petWeight;
	}
	
	
}
