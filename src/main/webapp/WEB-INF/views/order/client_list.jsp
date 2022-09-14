
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath}/"/>
<!doctype html>
<html>
  <head>
	<meta charset="UTF-8">
	<title>거래처조회</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
  <body>
  <div class="wrapper">
  <c:import url="/WEB-INF/views/include/top_menu.jsp"/>
  <c:import url="/WEB-INF/views/include/side_menu.jsp"/>
  
	<form:form action="${root }client/modify" method="post" modelAttribute="modifyClientBean">
		
		<div class="table_arrange">
		<div class="table_title">
		<h1>거래처조회</h1>
		</div>
			<div class="input-group mb-3">
				<table>
					<tr>
						<th><span class="input-group-text" id="basic-addon1">거래처코드</span></th>
						<th><span class="input-group-text" id="basic-addon1">거래처명</span></th>
						<th><span class="input-group-text" id="basic-addon1">연락처</span></th>
						<th><span class="input-group-text" id="basic-addon1">대표자명</span></th>
						<th><span class="input-group-text" id="basic-addon1">우편번호</span></th>
						<th><span class="input-group-text" id="basic-addon1">주소</span></th>
					</tr>
					<c:forEach var="obj" items="${ClientList }">
					<tr>
						<td><input type="text" id="client_idx" name="client_idx" class="form-control" value="${obj.client_idx }" readonly style=background:white></td>
						<td><input type="text" id="client_name" name="client_name" class="form-control" value="${obj.client_name }" readonly style=background:white></td>
						<td><input type="text" id="client_tel" name="client_tel" class="form-control" value="${obj.client_tel }" readonly style=background:white></td>
						<td><input type="text" id="client_ceo" name="client_ceo" class="form-control" value="${obj.client_ceo }" readonly style=background:white></td>
						<td><input type="text" id="client_zipcode" name="client_zipcode" class="form-control" value="${obj.client_zipcode }" readonly style=background:white></td>
						<td><input type="text" id="client_addr" name="client_addr" class="form-control" value="${obj.client_addr }" readonly style=background:white></td>
					</tr>
					</c:forEach>
				</table>
			</div>
		<div class="button-arrange">
		<input type="button" class="btn btn-dark" value="뒤로가기" onclick="history.back();"/>
		</div>
		</div>
	</form:form>
</div>
  
</body>
  
<footer>
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
</footer>

   <!--  input 안에 : aria-label="Username" aria-describedby="basic-addon1" -->