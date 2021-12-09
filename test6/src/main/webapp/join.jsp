<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%--부트스트랩을 활용하여 모바일, 컴퓨터든 해상도에 맞춰 화면을 출력할 수 있는 템플릿 --%>
<meta name="viewport" content="width=divice-width", initial-scale="1">
<%--프로젝트 폴더 안에 있는 부트스트랩을 참조하겠다는 선언 --%>
<link rel="stylesheet" href="css/bootstrap.css"> 
<h1> 회원 가입</h1> 
<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
			<form method="post" action="insertuser.jsp">
					<h3 style="text-align: center;">회원가입 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
					</div>
					
					<input type="submit" class="btn btn-primary form-control" value="회원가입">
					
				</form>
			</div>
		</div>
		
	</div>
  
  	<script type="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<%--부트스트랩 애니메이션 모듈 --%>
 


