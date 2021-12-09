<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ page import ="java.sql.*" %> 
<%
//자바 코드를 넣기 위해 <%를 사용했습니다.
request.setCharacterEncoding("utf-8"); 


//user 패키지의 User.java 클래스와 같이 데이터베이스의 변수이름을 같게 하여 선언합니다.
String userID = request.getParameter("userID"); 
String userPassword = request.getParameter ("userPassword"); 
String userName = request.getParameter("userName"); 
String spage = request.getParameter("page");

String dbURL="jdbc:mysql://localhost:3308/boarddb"; 
String dbID = "root"; 
String dbPassword ="1234"; 
Connection conn = null; 
PreparedStatement pstmt = null; 
//try -catch 실행하면서 오류발생시 메시지 전달
	try{ Class.forName("com.mysql.jdbc.Driver"); //DB에 입력받은 변수를 pstmt메소드를 활용하여 전달합니다.
			conn = DriverManager.getConnection(dbURL , dbID, dbPassword); 
			String sql = "insert into user(userID,userPassword,userName) values(?,?,?)"; 
			pstmt = conn.prepareStatement(sql);  
			pstmt.setString(1, userID); 
			pstmt.setString(2, userPassword); pstmt.setString(3, userName);  
			pstmt.executeUpdate();
			out.println("<script>alert('회원가입완료');</script>");
			out.print("<script>location.href='login.jsp?page=" + spage + "'</script>");
			
			}catch(Exception e)
		{ 
			out.println("오류! Exception :" + e.getMessage()); 
		} 

%>


