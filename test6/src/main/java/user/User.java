package user;


/*
 * 한명의 데이터를 다룰 수 있는 클래스입니다.
 * 데이터베이스에 선언한 각각의 변수 이름과 맞게 데이터를 선언해줍니다.
 */
public class User {
	private String userID;
	private String userPassword;
	private String userName;

	
	
	//generate getter / setter method를 생성해줍니다
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}	
	
	
	
}

