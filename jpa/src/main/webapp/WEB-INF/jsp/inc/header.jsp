<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<header class="header-wrap">
	<div class="container">
		<div class="row">

			<div class="col-md-3">
				<div class="logo">

					<a href="/main" title="http://aonethemes.com/infinitygrid"> <img
						src="http://aonethemes.com/infinitygrid/wp-content/uploads/sites/10/2014/01/logonormal3.png "
						data-at2x="http://aonethemes.com/infinitygrid/wp-content/uploads/sites/10/2014/01/logo2x3.png" />
					</a>

				</div>
				<!--end logo-->
			</div>

			<div class="col-md-9 rel">
				<div class="responsive-trig" id="simple-menu" href="#sidr"></div>
				<nav class="menuwrap" role="main">
					<div class="menu-primary-container">
						<ul id="menu-primary-1" class="sf-menu-primary">
							<li
								class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-40"><a
								href="/main">Home</a></li>
							<li
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-165"><a
								href="#">설교말씀</a>
								<ul class="sub-menu">
									<li
										class="menu-item menu-item-type-custom menu-item-object-custom menu-item-104"><a
										href="/bbs/1/list/1">설교영상</a></li>
									<li
										class="menu-item menu-item-type-post_type menu-item-object-page menu-item-168"><a
										href="/bbs/2/list/1">설교말씀</a></li>
								</ul></li>
							<li
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-38"><a
								href="http://#">광장</a>
								<ul class="sub-menu">
									<li
										class="menu-item menu-item-type-taxonomy menu-item-object-post_format menu-item-33"><a
										href="/bbs/3/list/1">교회소식</a></li>
									<li
										class="menu-item menu-item-type-taxonomy menu-item-object-post_format menu-item-34"><a
										href="/bbs/4/list/1">새신자</a></li>
								</ul></li>
							<!-- <li
								class="menu-item menu-item-type-post_type menu-item-object-page menu-item-101"><a
								href="http://aonethemes.com/infinitygrid/shortcodes-all-built-into-your-kitchen-sink/">Shortcodes</a></li> -->
							<%-- <li
								class="menu-item menu-item-type-post_type menu-item-object-page menu-item-229"><a
								href="<c:url value="/j_spring_security_logout" />">로그인</a></li>
 --%>

							<c:set value="${sessionScope.loginInfo}" var="loginInfo" />

							<c:if test="${empty loginInfo}">
								<li
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-229"><a
									href="<c:url value="/login" />">로그인</a></li>
							</c:if>
							<c:if test="${loginInfo != null && loginInfo.login}">
								<li
									class="menu-item menu-item-type-custom menu-item-object-custom menu-item-103"><a
									href="<c:url value="/j_spring_security_logout"/>" id="login">로그아웃
										: ${loginInfo.userInfo.name}</a></li>
							</c:if>
							<%-- <sec:authorize access="isAuthenticated()" >			 --%>
							<%-- <sec:authentication var="principal" property="principal" />						
							<li
								class="menu-item menu-item-type-custom menu-item-object-custom menu-item-103"><a
								href="<c:url value="/login" />" id="login">Log In ${principal.username}
								<c:if test="${ not empty principal && 'anonymousUser' ne principal}">
								${principal.username }
								${principal.username}
								</c:if>
								</a>
								</li> --%>
							<%-- </sec:authorize> --%>
						</ul>
					</div>
				</nav>
				<!--end navbar primary-->
			</div>
		</div>
		<!--end row-->
	</div>
	<!--end container-->
</header>
<!-- end of menu and logo section -->