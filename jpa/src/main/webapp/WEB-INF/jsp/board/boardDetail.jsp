<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="joda" uri="http://www.joda.org/joda/time/tags" %>
<!DOCTYPE html>
<html lang="en-US">
<head>

<!-- Mobile Specific Metas -->
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Basic Page Needs -->
<title>Board Detail</title>

<jsp:include page="../inc/headerTag.jsp" />
<body class="single single-post postid-31 single-format-video">

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
								<h1 class="nomargin lh-40">${board.nttSj}</h1>
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

							<div class="col-md-1 bumpnorm">
								<div class="stickysidebar">
									<%-- <fmt:parseDate value="${applDt}" var="dateFmt"
										pattern="yyyyMMdd" />
									<fmt:formatDate value="${dateFmt}" pattern="yyyy-MM-dd" /> --%>

									<div class="datewrap centertext bumpmini">
										<span class="entrylg"><joda:format value="${board.regiDate}" pattern="dd" locale="ko-KR" /></span> <br /> <span class="entrysm"><joda:format value="${board.regiDate}" pattern="MMM" locale="ko-KR"/></span>

									</div>
									<div class="datewrap centertext linetop">
										<div class="post-like">
											<a href="#" data-post_id="31"> <span title=""
												class="qtip like"></span>
											</a><span class="count"><joda:format value="${board.regiDate}" pattern="yyyy" locale="ko-KR" /></span>
										</div>
									</div>

								</div>
								<!--affix-->
							</div>
							<!--end col span-->

							<div class="col-md-8 bumpnorm">
								<div class="singlewrap colored">
									<c:if test="${not empty board.nttLk }">
										<div class="singlewrap">
											<div id="post-31"
												class="post-31 post type-post status-publish format-video hentry category-post-formats category-video-clips tag-video-format tag-vimeo">
												<div class="fit-vids bumpnorm">${board.nttLk}</div>
											</div>
											<!--id wrapper-->
										</div>
									</c:if>
									<!--end single wrap-->

									<div class="singlewrap bumpnorm linetopbtm accent">
										<div class="row">
											<div class="col-xs-9">
												<div class="cellblock text-left">
													by <a href="#" title="Posts by Author" rel="author">${board.userInfoReg.name}</a>
												</div>
												<div class="cellblock text-left">
													/ in <a
														href="http://aonethemes.com/infinitygrid/category/post-formats/"
														title="View all posts in Post formats" rel="category tag">${board.userInfoUpt.name}</a>,<a
														href="http://aonethemes.com/infinitygrid/category/video-clips/"
														title="View all posts in Video clips" rel="category tag">Video
														clips</a>
												</div>

												<div class="cellblock text-left">
													/ tags <a
														href="http://aonethemes.com/infinitygrid/tag/video-format/"
														rel="tag">Video format</a>, <a
														href="http://aonethemes.com/infinitygrid/tag/vimeo/"
														rel="tag">vimeo</a>
												</div>
											</div>
											<div class="col-xs-3">
												<div class="cellblockright text-right">
													<a href="#reply-title">0 Comments</a>
												</div>
											</div>
										</div>
										<!--end wrap-->
									</div>
									<!--end row-->

									<div class="singlewrap">
										<article class="main-content">
											${board.nttCn}</article>
									</div>

									<div class="singlewrap dbumpsm linetopbtm bump topbtmbump">
										<div class="row">

											<div class="col-xs-6 text-left">
												&larr; <a href="/bbs/${board.bbsId}/list/${board.pageIndex}" rel="prev">목록으로</a>
											</div>

											<div class="col-xs-6 text-right">
												<a
													href="/bbs/${board.bbsId}/${board.id}/edit"
													rel="next">수정하기</a> &rarr;
											</div>
										</div>
									</div>

									<div class="row"></div>
									<!--end row-->
									<!-- You can start editing here. -->
									<!-- If comments are open, but there are no comments. -->
									<%-- <div id="respond" class="comment-respond">
										<h3 id="reply-title" class="comment-reply-title">
											Leave a Reply <small><a rel="nofollow"
												id="cancel-comment-reply-link"
												href="/infinitygrid/vimeo-video-post/#respond"
												style="display: none;">Cancel reply</a></small>
										</h3>
										<form
											action="http://aonethemes.com/infinitygrid/wp-comments-post.php"
											method="post" id="commentform" class="comment-form">
											<p class="comment-notes">
												Your email address will not be published. Required fields
												are marked <span class="required">*</span>
											</p>
											<p class="comment-form-author">
												<label for="author">Name <span class="required">*</span></label>
												<input id="author" name="author" type="text" value=""
													size="30" aria-required='true' />
											</p>
											<p class="comment-form-email">
												<label for="email">Email <span class="required">*</span></label>
												<input id="email" name="email" type="text" value=""
													size="30" aria-required='true' />
											</p>
											<p class="comment-form-url">
												<label for="url">Website</label> <input id="url" name="url"
													type="text" value="" size="30" />
											</p>
											<p class="comment-form-comment">
												<label for="comment">Comment</label>
												<textarea id="comment" name="comment" cols="45" rows="8"
													aria-required="true"></textarea>
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
											<p class="form-submit">
												<input name="submit" type="submit" id="submit"
													value="Post Comment" /> <input type='hidden'
													name='comment_post_ID' value='31' id='comment_post_ID' />
												<input type='hidden' name='comment_parent'
													id='comment_parent' value='0' />
											</p>
											<p style="display: none;">
												<input type="hidden" id="akismet_comment_nonce"
													name="akismet_comment_nonce" value="ef49e48c5c" />
											</p>
											<script type='text/javascript'
												src='http://aonethemes.com/infinitygrid/wp-content/plugins/akismet/_inc/form.js?ver=3.0.0'></script>
											<p style="display: none;">
												<input type="hidden" id="ak_js" name="ak_js" value="224" />
											</p>
										</form>
									</div> --%>
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
				<!--colored section footer-->
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