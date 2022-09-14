<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath}/"/>
<c:set var="Result" value="${MainResult}" />
<!doctype html>
<html>
<meta charset="UTF-8">
  <head>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${root }style.css">
  </head>
  <body>
      
 	<div class="wrap">
		<div class="intro_bg">
			<div class="header">
				<div class="searchArea">
					<form>
						<input type="search" placeholder="search"> <span>검색</span>
					</form>
				</div>
				<ul class="nav">
						<li><a href="${root }">HOME</a></li>
					<c:choose>
						<c:when test="${loginUserBean.userLogin == true }">
							<li><a href="${root }user/modify">MYPAGE</a></li>
							<li><a href="${root }user/logout">LOGOUT</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="${root }user/login">LOGIN</a></li>
							<li><a href="${root }user/join">JOIN</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>


		<!-- intro end-->
      <ul class="amount">
        <li>	
          <div>
            <div class="contents1">총 수주금액</div>
            <div class="result">₩ ${Result.order_amt }</div>
          </div>
        </li>
        <li>
          <div>
            <div class="contents1">총 생산량</div>
            <div class="result">${Result.produce_cnt } BOX</div>
          </div>
        </li>
        <li>
          <div>
            <div class="contents1">불량률</div>
            <div class="result">${Result.produce_badrate }%</div>
          </div>
        </li>
        <li>
            <div>
              <div class="contents1">목표 불량률</div>
              <div class="result">0.2%</div>
            </div>
        </li>
      </ul>
      <!-- amount end -->

	<div class="main_text0">
		<h1>ABOUT</h1>
		<div class="contents1">우리는 재규어처럼 재빠르게, 남들과는 다르게 옷을 뽑아냅니다.</div>
		<ul class="icons">
			<c:forEach var='obj' items="${MenuList }">
				<c:if test="${obj.menu_idx <= 3 }">
					<li >
						<div class="icon_img">
							<img src="image/main_icon${obj.menu_idx }.png">
						</div>
						<div class="contents1_bold">${obj.menu_title }</div>
						<div class="contents2">${obj.menu_content }</div>
						<div class="more">
					<a href="${root }menu/submenu?menu_idx=${obj.menu_idx}"><!-- 업데이트1 _ 이미지 클릭 페이지 이동  -->
						MORE
							<!-- <a href="${root }menu/submenu?menu_idx=${obj.menu_idx}">MORE-->
					</a>
						</div>
					</li>
				</c:if>
			</c:forEach>
		</ul>
		<ul class="icons">
			<c:forEach var='obj' items="${MenuList }">
				<c:if test="${obj.menu_idx == 4 || obj.menu_idx == 5 }">
					<li>
						<div class="icon_img">
							<img src="image/main_icon${obj.menu_idx }.png">
						</div>
						<div class="contents1_bold">${obj.menu_title }</div>
						<div class="contents2">${obj.menu_content }</div>
						<div class="more">
						<a href="${root }menu/submenu?menu_idx=${obj.menu_idx}"><!-- 업데이트1 _ 이미지 클릭 페이지 이동  -->
						MORE
						</a>
						</div>
					</li>
				</c:if>
			</c:forEach>
			<c:forEach var='obj' items="${MenuList }">
			<c:if test="${obj.menu_idx == 6 }">
				<li>
					<div class="icon_img">
						<img src="image/main_icon${obj.menu_idx }.png">
					</div>
					<div class="contents1_bold">${obj.menu_title }</div>
					<div class="contents2">${obj.menu_content }</div>
					<div class="more">
					<a href="${root }menu/input?menu_idx=${obj.menu_idx}"><!-- 업데이트1 _ 이미지 클릭 페이지 이동  -->
					MORE
					</a>
					</div>
				</li>
			</c:if>
			</c:forEach>
		</ul>
	</div>
	
		<div class="main_text1">
			<h1>SERVICE</h1>
			<div class="contents1">최신 트렌드를 반영한 의류들만 납품하고 있습니다</div>
			<div class="service">
				<div class="food_photo">
					<img src="image/coat1.jpg">
				</div>
				<div class="contents2">
					<h3>안녕하십니까?</h3>
					<h3>피오니팩토리 대표 이경은입니다.</h3><br/>
					저희 피오니팩토리는 각종 의류 샘플과<br/>
					패턴제작이 가능하며,<br/>
					대한민국 중심지인 경기도에서<br/>
					봉제공장을 같이 운영하고 있습니다.<br/><br/>
					샘플 제작과 패턴, 동시에 생산도 가능하며,<br/>
					대량생산도 가능합니다.<br/><br/>
					또한 넓은 공장부지를 가지고 있어,<br/>
					어떠한 의류 포장도 가능하며,<br/>
					빠레트 작업도 가능합니다.<br/><br/>
					감사합니다.
				</div>
			</div>
		</div>

		<div class="main_text2">
			<ul>
				<li>
					<div>
						<h1>CONTACT</h1>
					</div>
					<div>우리에게 파트너십을 신청하거나, 고객이 되어주세요</div>
					<div class="more2">더 알아보기</div>
				</li>
				<li></li>
			</ul>
		</div>
		</div>
</body>
<footer>
	<c:import url="/WEB-INF/views/include/bottom_info.jsp"/>
</footer>

</html>