
package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


/*
 * @FileName : UserDAO.java
 * @Project : YakSsok
 * @데이터베이스 접근 객체 (Database access object)입니다.
 * 회원정보를 불러오거나 데이터베이스에 회원 정보를 넣을때 사용합니다.
 * dbURL mysql의 내가 열어둔 포트번호와 데이터베이스 이름
 */
public class UserDAO {

 private Connection conn; 
 private PreparedStatement pstmt; 
 private ResultSet rs; 
 /**
  * @author timebeat
  * @param conn 데이터베이스 접근 객체 선언
  * @param pstmt 데이터베이스 처리문을 효과적으로 처리하기 위한 객체입니다. 특정상수값 반복처리
  * @param rs 정보를 담기위한 객체
  * @param dbURL mysql의 내가 열어둔 포트번호와 데이터베이스 이름
  * @param dbID 데이터베이스 id
  * @param dbPassword 데이터베이스 암호
  * try catch exception을 활용하여 오류가 뜨는 부분을 캐치하여 오류메시지를 전송합니다.
  * mysql의 내가 열어둔 포트번호와 데이터베이스 이름
  */
 public UserDAO() {

	 
  try { 

  
	  
   String dbURL = "jdbc:mysql://localhost:3308/boarddb"; 
   String dbID = "root"; 
   String dbPassword = "1234"; 
   Class.forName("com.mysql.cj.jdbc.Driver");
   conn = DriverManager.getConnection(dbURL, dbID, dbPassword);

  } catch (Exception e) {
   e.printStackTrace();
  }
 }

 public int login(String userID, String userPassword) {
	 /**
	  * 로그인 기능을 수행합니다. 
	  */
  String SQL = "SELECT userPassword FROM USER WHERE userID=?";
  try {
   pstmt = conn.prepareStatement(SQL);
   pstmt.setString(1, userID);
   rs = pstmt.executeQuery();
   if(rs.next()) {
    if(rs.getString(1).equals(userPassword))
     return 1;  // 로그인완료
    else
     return 0;  // 비번 불일치
   }
   return -1;  // 아이디 없음
   
  } catch(Exception e) {
   e.printStackTrace();
  }
  return -2; // 데이터 베이스 오류 - 보통 데이터베이스에 연결이 되지않았을때 생기는 오류

 }
}