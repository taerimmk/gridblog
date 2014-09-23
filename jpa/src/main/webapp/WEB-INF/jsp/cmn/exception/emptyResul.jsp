<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en-US">
<head>

<!-- Mobile Specific Metas -->
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Basic Page Needs -->
<title>My Account | Login</title>
<jsp:include page="../../inc/headerTag.jsp" />
<body class="single single-post postid-224 single-format-standard">
	<jsp:include page="../../inc/headerMobile.jsp" />

	<div class="entire-site-wrap">
		<div class="site-margin">
			<div class="site-wrap-shadow">
				<jsp:include page="../../inc/header.jsp" />

				<!-- end of menu and logo section -->

				<!--slider for pages area-->
				<section class="section-wrap">
					<div class="container">
						<div class="row">

							<div class="col-md-9">
								<h1 class="nomargin lh-40">Error Page</h1>
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
										<h3 id="reply-title" class="comment-reply-title">데이터가 없습니다.(${exception.message})</h3>
										
									</div>
									<!-- #respond -->
								</div>
							</div>
							<!--end col8-->

							<jsp:include page="../../inc/side.jsp" />
						</div>
						<!--end row-->
					</div>
					<!-- ending container-->
				</section>

				<!--end section-->
				<jsp:include page="../../inc/footer.jsp" />
			</div>
			<!--shadow-->
		</div>
		<!--margin-->
	</div>
	<!--end entiresite wrap-->

	<jsp:include page="../../inc/footerTag.jsp" />
</body>
</html>