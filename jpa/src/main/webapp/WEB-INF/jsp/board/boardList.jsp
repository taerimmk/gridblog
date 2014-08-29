<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags"%>
<!DOCTYPE html>

<html lang="en-US">
<head>

<!-- Mobile Specific Metas -->
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Basic Page Needs -->
<title>Board</title>
<jsp:include page="../inc/headerTag.jsp" />
<body class="archive tax-post_format term-post-format-video term-23">

	<jsp:include page="../inc/headerMobile.jsp" />

	<div class="entire-site-wrap">
		<div class="site-margin">
			<div class="site-wrap-shadow">
				<jsp:include page="../inc/header.jsp" />

				<!--slider for pages area-->
				<section class="section-wrap">
					<div class="container">
						<div class="row">

							<div class="col-md-9">
								<h1 class="nomargin lh-40">Video</h1>
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
				</section>
				<!--end container-->

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

							<div class="col-md-9">
								<div class="row">

									<div id="mainmasonry">
										<c:forEach items="${bbsList}" var="rData">
											<c:choose>
												<c:when test="${'quote' eq rData.nttTy}">
													<div
														style="position: absolute; left: 0px; top: 0px; transform: translate(0px, 0px);"
														class="col-xs-12 col-sm-6 col-md-4 bump max-cap isotope-item"
														id="masonryme">
														<div class="colored nopbump">
															<div class="singlecp quotelight">
																<a href="#"> "${rData.nttSj}"
																	<p>
																		<joda:format value="${rData.regiDate}"
																			pattern="yyyy년 MMM d일" locale="ko-KR" />
																	</p>
																</a>
															</div>
														</div>
														<!--colored-->
													</div>
												</c:when>

												<c:otherwise>
													<div class="col-xs-12 col-sm-6 col-md-4 bump max-cap" id="">
														<div class="colored nopbump">
															<c:if test="${not empty rData.nttLk }">
																<div class="fit-vids bumpsm">${rData.nttLk}</div>
															</c:if>
															<div class="post-text-grip accent">
																<a href="#" title="View all posts in Post formats"
																	rel="category tag">${rData.userInfoReg.name}</a>, <a
																	href="#" title="View all posts in Video clips"
																	rel="category tag">${rData.userInfoUpt.name}</a>
															</div>
															<h3 class="fully">
																<a href="/bbs/${rData.id}">${rData.nttSj}</a>
															</h3>

															<div class="post-text-grip topbtmbumpmin"></div>

															<div class="post-text-grip linetop-pads">
																<div class="infodiv accent pull-left bumpright">
																	<joda:format value="${rData.regiDate}"
																		pattern="yyyy년 MMM d일" locale="ko-KR" />
																</div>
																<div class="infodiv chatimg pull-right">0</div>

																<div class="infodiv countimg pull-right">
																	<span class="heartcount">13</span>
																</div>
															</div>
														</div>
														<!--colored-->
													</div>
													<!--four col-->
												</c:otherwise>
											</c:choose>

										</c:forEach>

									</div>
									<!--end masonry-->

									<div class="col-md-4 col-md-offset-4">
										<div class="pagination"></div>
									</div>
									<div class="col-md-4 col-md-offset-4">
										<div class="pagination-load-more">
											<div class="pagination-me centertext">
												<a href="/bbs/${bbsMst.id}/new">포스트 등록</a>
											</div>
											<span class="pagination-span-load"></span>
										</div>
									</div>
									<!--span12-->

								</div>
								<!--end row-->
							</div>
							<!--end new row with 9 col-->

							<jsp:include page="../inc/side.jsp" />

						</div>
						<!--end row-->
					</div>
					<!--end container-->
				</section>
				<!--colored section footer-->
				<jsp:include page="../inc/footer.jsp" />
			</div>
			<!--shadow-->
		</div>
		<!--margin-->
	</div>
	<!--end entiresite wrap-->

	<jsp:include page="../inc/footerTag.jsp" />
	<script type="text/javascript">
		$(function() {
			var bbsId = '${bbsMst.id}';
			$('.pagination').bootpag({
				total : '${board.totalPageUnit}',
				page : '${board.pageIndex}',
				maxVisible : 5,
				href : "/bbs/"+bbsId+"/list/{{number}}",
				leaps : true,
				next : 'next',
				prev : 'prev'
			}).on('page', function(event, num) {
				//$(".content3").html("Page " + num); // or some ajax content loading...
				//movePage(num);
			});
		});
		var movePage = function(page) {
			var bbsId = '${bbsMst.id}';	
			var action = '<c:url value="/bbs/'+bbsId+'/list/'+page+'" />';
			location.href = action;

			return false;
		};
	</script>
</body>
</html>