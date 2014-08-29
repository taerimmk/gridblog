<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en-US">
<head>

<!-- Mobile Specific Metas -->
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Basic Page Needs -->
<title>My Account | Login</title>
<jsp:include page="../inc/headerTag.jsp" />
<body class="single single-post postid-224 single-format-standard">
	<jsp:include page="../inc/headerMobile.jsp" />

	<div class="entire-site-wrap">
		<div class="site-margin">
			<div class="site-wrap-shadow">
				<jsp:include page="../inc/header.jsp" />

				<!-- end of menu and logo section -->

				<!--slider for pages area-->
				<section class="section-wrap">
					<div class="container">
						<div class="row">

							<div class="col-md-9">
								<h1 class="nomargin lh-40">로그인/회원가입</h1>
							</div>
							<!--end 9 col-->

							<div class="col-md-3">
								<form method="get" id="searchForm"
									action="http://aonethemes.com/infinitygrid/">
									<div class="search-wrapper">
										<div class="search-icon"></div>
										<input type="text" maxlength="30" name="s" id="s"
											class="search_input" /> <input type="submit"
											id="searchSubmit" />
									</div>
								</form>
							</div>
							<!--end 3col-->

						</div>
						<!--end row-->
					</div>
					<!--end container-->
				</section>

				<!--section-->

				<section class="section-wrap nopads">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="hrrule"></div>
							</div>
						</div>
					</div>
				</section>

				<section class="section-wrap">
					<div class="container">
						<div class="row">

							<div class="col-md-9 bumpnorm">
								<div class="singlewrap colored">


									<!-- You can start editing here. -->
									<!-- If comments are open, but there are no comments. -->


									<div id="respond" class="comment-respond">
										<!-- <h3 id="reply-title" class="comment-reply-title">로 그 인</h3> -->
										<form:form action="<c:url value='registerUser'/>"
											commandName="userInfo" method="POST" cssClass="comment-form"
											id="frm" name="frm">
											<input type="hidden" id="userIdDup" name="userIdDup" />
											<p class="comment-notes"></p>
											<p class="comment-form-author">
												<label for="nttSj">아이디 <span class="required">*</span>
													<form:errors path="userId" class="errors" />
												</label>
												<form:input path="userId" id="userId"
													placeholder="영문, 숫자 혼용 4~20자 이내로 입력해 주세요" size="50"
													cssClass="textbar" type="text" maxlength="20"
													style="margin-right: 3px;" />
												<input class="cmnbtn_side" value="중복확인" id="goDupAjax"
													type="button" />
											</p>

											<p class="comment-form-author">
												<label for="password">비밀번호 <span class="required">*</span>
													<form:errors path="password" class="errors" />
												</label>
												<form:input id="password" path="password" size="50"
													class="textbar" type="password"
													placeholder="영문, 숫자 특수문자 혼용 6~20자 이내로 입력해 주세요" />
											</p>
											<p class="comment-form-author">
												<label for="passwordCert">비밀번호 확인 <span
													class="required">*</span>
												</label> <input id="passwordCert" name="passwordCert" size="50"
													class="textbar" type="password"
													placeholder="영문, 숫자 특수문자 혼용 6~20자 이내로 입력해 주세요" />
											</p>
											<p class="comment-form-author">
												<label for="name">이름 <span class="required">*</span>
												<form:errors path="name" class="errors" />
												</label>
												<form:input id="name" path="name" size="50" class="textbar"
													type="text" placeholder="이름을 입력해 주세요" />
											</p>
											<p class="comment-form-author">
												<label for="email">이메일 <form:errors path="email"
														class="errors" />
												</label>
												<form:input id="email" path="email" size="50" class="textbar"
													placeholder="이메일을 입력해 주세요." />
											</p>
											<p class="form-submit" style="margin-right: 3px;">
												<input name="submit" type="button" id="goPut" class="cmnbtn"
													value="가입하기" />
											</p>
											<p class="form-submit" style="margin-right: 3px;">
												<a href="/"><input class="cmnbtn" value="취소"
													type="button" /></a>
											</p>

										</form:form>
									</div>
									<!-- #respond -->
								</div>
							</div>
							<!--end col8-->

							<jsp:include page="../inc/side.jsp" />
						</div>
						<!--end row-->
					</div>
					<!-- ending container-->
				</section>

				<!--end section-->
				<jsp:include page="../inc/footer.jsp" />
			</div>
			<!--shadow-->
		</div>
		<!--margin-->
	</div>
	<!--end entiresite wrap-->

	<jsp:include page="../inc/footerTag.jsp" />
	<script type='text/javascript'>
		$(function() {
			$("#goDupAjax").on('click', function() {
				/** ID 정규시*/
				var regExp = /^[a-z0-9_]{4,20}$/;
				var userId = $("#userId").val();
				if (regExp.test(userId)) {
					$.ajax({
						type : "POST",
						url : "<c:url value='/register/idDupCheck.json'/>",
						data : {
							userId : userId
						}
					}).done(function(json) {
						var result = json.result;
						if (result == 0) {
							alert("사용할수 있는 아이디 입니다.");
							$("#userIdDup").val(userId);
						} else {
							alert("사용할수 없는 아이디 입니다.");
							return false;
						}

					});
					return false;
				} else {
					alert("아이디는 4~20 자리의 영문,숫자만 허용됩니다.");
					return false;
				}

			});

			$("#goRester").on(
					"click",
					function(event) {

						var val = validation();
						if (val) {
							$("#frm").attr("action",
									"<c:url value='/register/registerUser'/>")
									.submit();
						}
						return false;
					});
		});
		var validation = function() {

			var regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
			var regPass = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,20}$/;
			var userId = $("#userId").val();
			var userIdDup = $("#userIdDup").val();
			var name = $("#name").val();
			var email = $("#email").val();
			var password = $("#password").val();
			var passwordCert = $("#passwordCert").val();

			if (!Boolean(userId)) {
				alert("아이디를 입력해 주세요.");
				return false;
			}
			if (!Boolean(userIdDup)) {
				alert("아이디 중복체크를 해주세요.");
				return false;
			}
			if (userId != userIdDup) {
				alert("아이디 중복체크를 다시 해주세요.");
				return false;
			}

			if (!Boolean(password)) {
				alert("비밀번호를 입력해 주세요.");
				return false;
			}
			if (!regPass.test(password)) {
				alert("비밀번호는 6~20자리의 영문,숫자 및 특수문자가 포함되어있어여 합니다..");
				return false;
			}
			if (password != passwordCert) {
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			}
			if (!Boolean(name)) {
				alert("이름을 입력해 주세요.");
				return false;
			}
			if (!Boolean(email)) {
				alert("이메일은 필수입력값 입니다.");
				return false;
			}
			if (!regEmail.test(email)) {
				alert("올바른 이메일 형식이 아닙니다.");
				return false;
			}
			return true;
		};
	</script>
	<c:if test="${'98' eq result}">
		<script type="text/javascript">
			$(function() {
				alert("이미존재하는 아이디 입니다.");
			});
		</script>
	</c:if>
</body>
</html>