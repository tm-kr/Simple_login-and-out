<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="${pageContext.request.contextPath}/jsp/css/style.css" />
</head>
<body>
<div class="wrapper3 mt-5 mb-5">
	<h2 class="mt-5 mb-5"><b>Join Example</b></h2>
	<form method="post" action="${pageContext.request.contextPath}/join">

		<div id="wrapper">

			<!-- content-->
			<div id="content">
				<!-- ID -->
				<div>
					<h3 class="join_title">
						<label for="id">아이디</label>
					</h3>
					<span class="box int_id"> <input type="text" id="id" name="id"
						class="int" maxlength="20">
					</span> <span class="error_next_box"></span>
				</div>

				<!-- PW1 -->
				<div>
					<h3 class="join_title">
						<label for="pswd1">비밀번호</label>
					</h3>
					<span class="box int_pass"> <input type="password" name="password"
						id="pswd1" class="int" maxlength="20"> <span id="alertTxt">사용불가</span>
						<img src="${pageContext.request.contextPath}/img/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
					</span> <span class="error_next_box"></span>
				</div>

				<!-- PW2 -->
				<div>
					<h3 class="join_title">
						<label for="pswd2">비밀번호 재확인</label>
					</h3>
					<span class="box int_pass_check"> <input type="password" 
						id="pswd2" class="int" maxlength="20"> <img
						src="${pageContext.request.contextPath}/img/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
					</span> <span class="error_next_box"></span>
				</div>

				<!-- NAME -->
				<div>
					<h3 class="join_title">
						<label for="name">이름</label>
					</h3>
					<span class="box int_name"> <input type="text" id="name" name="name"
						class="int" maxlength="20">
					</span> <span class="error_next_box"></span>
				</div>


				<!-- BIRTH -->
				<div>
					<h3 class="join_title">
						<label for="yy">생년월일</label>
					</h3>

					<div id="bir_wrap">
						<!-- BIRTH_YY -->
						<div id="bir_yy">
							<span class="box"> <input type="text" id="yy" class="int" name="yyyy"
								maxlength="4" placeholder="년(4자)">
							</span>
						</div>

						<!-- BIRTH_MM -->
						<div id="bir_mm">
							<span class="box"> <select id="mm" class="sel" name="mm">
									<option>월</option>
									<option value="01">1</option>
									<option value="02">2</option>
									<option value="03">3</option>
									<option value="04">4</option>
									<option value="05">5</option>
									<option value="06">6</option>
									<option value="07">7</option>
									<option value="08">8</option>
									<option value="09">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
							</select>
							</span>
						</div>

						<!-- BIRTH_DD -->
						<div id="bir_dd">
							<span class="box"> <input type="text" id="dd" class="int" name="dd"
								maxlength="2" placeholder="일">
							</span>
						</div>

					</div>
					<span class="error_next_box"></span>
				</div>

				<!-- GENDER -->
				<div>
					<h3 class="join_title">
						<label for="gender">성별</label>
					</h3>
					<span class="box gender_code"> <select id="gender" name="gender"
						class="sel">
							<option>성별</option>
							<option value="Male">남자</option>
							<option value="Female">여자</option>
					</select>
					</span> <span class="error_next_box">필수 정보입니다.</span>
				</div>
				<!-- EMAIL -->
				<div>
					<h3 class="join_title">
						<label for="email">본인확인 이메일<span class="optional">(선택)</span></label>
					</h3>
					<span class="box int_email"> <input type="text" id="email"
						class="int" maxlength="100" placeholder="선택입력">
					</span> <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
				</div>


				<!-- JOIN BTN-->
				<div class="btn_area">
					<button type="submit" class="btn btn-primary">회원가입</button>
				</div>



			</div>
			<!-- content-->

		</div>
		<!-- wrapper -->
		<script src="${pageContext.request.contextPath}/jsp/js/main.js"></script>
	</form>
</div>

</body>
</html>