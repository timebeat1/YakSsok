<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>

<h2>sql 테스트</h2>

<%
  Connection conn=null;

  try{
	 String jdbcUrl = "jdbc:mysql://localhost:3308/boarddb";
     String dbId = "root";
     String dbPass = "1234";
	
	 Class.forName("com.mysql.jdbc.Driver");
	 conn = DriverManager.getConnection(jdbcUrl,dbId ,dbPass );
	 out.println("연결됨");
  }catch(Exception e){ 
	 e.printStackTrace();
  }
%>
