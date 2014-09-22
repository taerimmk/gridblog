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
<title>Main</title>

<jsp:include page="../inc/headerTag.jsp" />
</head>

<body class="home blog">

	<jsp:include page="../inc/headerMobile.jsp" />

	<div class="entire-site-wrap">
		<div class="site-margin">
			<div class="site-wrap-shadow">
				<jsp:include page="../inc/header.jsp" />

				<section class="section-wrap">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="singlewrap colored" style="margin-bottom: 10px;">
									<div class="singlewrap">
										<div id="post-19"
											class="post-19 post type-post status-publish format-gallery has-post-thumbnail hentry category-photography category-post-formats tag-blonde tag-gallery-format tag-models tag-photos">
											<div class="singlewrap">
												<div class='entry-thumbnail nivoSlider'>
													<img src='/resources/img/main/main_01.jpg' /><img
														src='/resources/img/main/main_02.jpg' /><img
														src='/resources/img/main/main_03.jpg' />
												</div>
											</div>
										</div>
										<!--id wrapper-->
									</div>
									<!--end single wrap-->
								</div>
							</div>
							<div id="mainmasonry">

								<!-- <div class="col-xs-12 col-sm-6 col-md-4 bump" id="masonryme">

									<div class="colored nopbump rel">
										<div
											class="post-178 post type-post status-publish format-image has-post-thumbnail hentry category-photography tag-animals tag-doggy"></div>
										<div class="singlecp bumpsm dark">
											<a href="http://aonethemes.com/infinitygrid/a-puppy-post/">
												<img
												src="http://aonethemes.com/infinitygrid/wp-content/uploads/sites/10/2014/03/a_little_puppy_2-wallpaper-1600x900-710x399.jpg"
												alt="" class="img-responsive opac" />
											</a>
										</div>


										<div class="post-text-grip accent">
											<a
												href="http://aonethemes.com/infinitygrid/category/photography/"
												title="View all posts in Photography" rel="category tag">Photography</a>
										</div>

										<h3 class="fully">
											<a href="http://aonethemes.com/infinitygrid/a-puppy-post/">A
												puppy post</a>
										</h3>

										<div class="post-text-grip topbtmbumpmin">
											<p>
												Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
												Aenean commodo ligula eget dolor. Aenean massa. Cum sociis
												natoque penatibus et magnis dis <a class="read-more"
													href="http://aonethemes.com/infinitygrid/a-puppy-post/">[...]</a>
											</p>
										</div>

										<div class="post-text-grip linetop-pads">
											<div class="infodiv accent pull-left bumpright">March
												6, 2014</div>

											<div class="infodiv chatimg pull-right">10</div>


											<div class="infodiv countimg pull-right">
												<span class="heartcount">144</span>
											</div>
										</div>
									</div>
									colored
								</div> -->
								<!--four col-->
								<!-- <div class="col-xs-12 col-sm-6 col-md-4 bump" id="masonryme">

									<div class="colored nopbump rel">
										<div
											class="post-77 post type-post status-publish format-quote hentry category-post-formats category-quotes tag-famous-quotes tag-quote"></div>
										<div class="singlecp quotelight">
											<a
												href="http://aonethemes.com/infinitygrid/a-quote-from-oscar/">
												"The only difference between the saint and the sinner is
												that every saint has a past, and every sinner has a future."
												<p>Oscar Wilde</p>
											</a>
										</div>
									</div>
									colored
								</div> -->
								<!--four col-->
								<div class="col-xs-12 col-sm-6 col-md-4 bump" id="masonryme">

									<div class="colored nopbump rel">
										<div
											class="post-31 post type-post status-publish format-video hentry category-post-formats category-video-clips tag-video-format tag-vimeo"></div>
										<div class="fit-vids bumpsm">
											<c:if test="${not empty board.nttLk }">
												<div class="fit-vids bumpsm">${board.nttLk}</div>
											</c:if>
										</div>

										<div class="post-text-grip accent">
											<a href="#" title="View all posts in Post formats"
																	rel="category tag">${board.userInfoReg.name}</a>, <a
																	href="#" title="View all posts in Video clips"
																	rel="category tag">${board.userInfoUpt.name}</a>
										</div>

										<h3 class="fully">
											<a href="/bbs/${board.bbsId}/${board.id}">${board.nttSj}</a>
										</h3>

										<div class="post-text-grip topbtmbumpmin"></div>

										<div class="post-text-grip linetop-pads">
											<div class="infodiv accent pull-left bumpright">
												<joda:format value="${board.regiDate}"
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
							</div>
							<!--end masonry grid-->
							<!-- <div class="col-md-4 col-md-offset-4">
								<div class="pagination-load-more">
									<div class="pagination-me centertext">
										<a href="#">Load more</a>
									</div>

									<span class="pagination-span-load"></span>
								</div>
							</div> -->
							<!--span12-->
						</div>
					</div>
				</section>
				<jsp:include page="../inc/footer.jsp" />
			</div>
			<!--shadow-->
		</div>
		<!--margin-->
	</div>
	<!--end entiresite wrap-->
	<jsp:include page="../inc/footerTag.jsp" />
</body>
</html>