<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id="Action" action="<%=request.getContextPath()%>/action.jsp" method="post" enctype="multipart/form-data">
		<div class="form-group">
	        
	        <input type="file" name="image">
	    </div>
	    
	    <button id="btn" type="button" onclick="clickBtn()">추가</button>
	</form>
	<script>
		function clickBtn() {
			$('#Action').submit();	
		}
	</script>
</body>
</html>