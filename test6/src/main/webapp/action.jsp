<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %> <!-- request 대신 -->
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %> <!-- 파일이름 중복을 피할 수 있도록 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	
	// MultipartRequest mr = new MultipartRequest(request, "C:/Users/fjdks/Desktop/erp/WebContent/image", 1024*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	MultipartRequest mr = new MultipartRequest(request, "C:/Users/timeb/git/repository2/test6/src/main/webapp/image", 1024*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	System.out.println("저장되는 경로(실제 서버) : "+request.getRealPath("C:/Users/timeb/git/repository2/test6/src/main/webapp/image"));
	
	String fileName = mr.getFilesystemName("image");
	System.out.println("사진 이름 : "+fileName);
%>

</body>
</html>