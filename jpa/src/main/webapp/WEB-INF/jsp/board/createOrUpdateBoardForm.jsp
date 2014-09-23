<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en-US">
<head>

<!-- Mobile Specific Metas -->
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Basic Page Needs -->
<title>Board Save</title>
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
								<h1 class="nomargin lh-40">게시물 등록 : ${board['new']} :
									${method }</h1>
							</div>
							<!--end 9 col-->

							<div class="col-md-3">
								<%-- <form method="get" id="searchForm" --%>
								<!-- action="http://aonethemes.com/infinitygrid/"> -->
								<div class="search-wrapper">
									<div class="search-icon"></div>
									<input type="text" maxlength="30" name="s" id="s"
										class="search_input" /> <input type="submit"
										id="searchSubmit" />
								</div>
								<%-- </form> --%>
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
										<h3 id="reply-title" class="comment-reply-title">게시물 입력</h3>
										<c:choose>
											<c:when test="${board['new']}">
												<c:set var="method" value="post" />
											</c:when>
											<c:otherwise>
												<c:set var="method" value="put" />
											</c:otherwise>
										</c:choose>
MM : ${method}
										<%-- <form:form action="/bbs/${bbsMst.id}/new" method="${method}" --%>
										<form:form modelAttribute="board" method="${method}" id="commentform" cssClass="comment-form">
											<p class="comment-notes">
												Your email address will not be published. Required fields
												are marked <span class="required">*</span>
											</p>
											<p class="comment-form-author">
												<label for="nttTy">포스트유형 <span class="required">*</span>
													<form:errors path="nttTy" /></label>
												<form:select id="nttTy" path="nttTy">
													<form:option value="quote">일반</form:option>
													<form:option value="image">사진</form:option>
													<form:option value="video">동영상</form:option>
												</form:select>
											</p>
											<p class="comment-form-author">
												<label for="nttSj">제목 <span class="required">*</span>
													<form:errors path="nttSj" /></label>
												<form:input id="nttSj" path="nttSj" value="" size="30"
													class="textbar" aria-required="true" type="text"
													placeholder="제목을 입력해 주세요" />
											</p>
											<%-- <c:if test="${'MOV' eq bbsMst.bbsTyCode}"> --%>
											<p class="comment-form-author" id="nttLkP" class="textbar"
												style="display: none;">
												<label for="nttLk">링크 <span class="required">*</span>
													<form:errors path="nttLk" /></label>
												<form:input id="nttLk" path="nttLk" value="" size="30"
													class="textbar" aria-required="true" type="text"
													placeholder="링크를 입력해 주세요" />
											</p>
											<%-- </c:if> --%>

											<p class="comment-form-comment">
												<label for="nttCn">내용 <span class="required">*</span>
												<form:errors path="nttCn" /></label>
											</p>
											<p class="comment-form-comment">
												<%-- <label for="nttCn">내용 <span class="required">*</span>
													<form:errors path="nttCn" /></label> --%>
												<form:textarea id="nttCn" path="nttCn" cssClass="summernote"></form:textarea>
											</p>

											<p class="form-allowed-tags">
												You may use these <abbr title="HyperText Markup Language">HTML</abbr>
												tags and attributes:
												<code>&lt;a href=&quot;&quot; title=&quot;&quot;&gt;
													&lt;abbr title=&quot;&quot;&gt; &lt;acronym
													title=&quot;&quot;&gt; &lt;b&gt; &lt;blockquote
													cite=&quot;&quot;&gt; &lt;cite&gt; &lt;code&gt; &lt;del
													datetime=&quot;&quot;&gt; &lt;em&gt; &lt;i&gt; &lt;q
													cite=&quot;&quot;&gt; &lt;strike&gt; &lt;strong&gt; </code>
											</p>
											<p class="form-submit" style="margin-right: 3px;">
												<input name="submit" type="submit" id="goPut" class="cmnbtn"
													value="등록하기" />
											</p>
											<p class="form-submit">
												<a href="/bbs/${board.bbsId}/list/${board.pageIndex}"><input
													class="cmnbtn" id="goList" value="취소" type="button" /></a>
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
	<script type="text/javascript">
		$(document).ready(function() {
			$('.summernote').summernote({
				height : 200,
				tabsize : 2,
				codemirror : {
					theme : 'monokai'
				}
			});
		});
	</script>
	<script type="text/javascript">
		$(function() {
			/* $('.summernote').summernote(); */
			$("#nttTy").on("change", function() {
				var nttTy = $(this).val();
				if (nttTy != 'quote') {
					$("#nttLkP").show();
				} else {
					$("#nttLkP").hide();
				}
				return false;
			});
			/* $("#goList").on("click", function() {
				window.location.href ="/bbs/${bbsId}/list";
				return false;
			}); */

		});
	</script>
</body>
</html>