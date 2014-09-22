<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="mobile-header">
	<nav id="sidr" role="mobile">
		<h3>Menu</h3>
		<div class="responsive-trig uptop" id="simple-close" href="#sidr"></div>

		<div class="menu-primary-container">
			<ul id="menu-primary" class="cbp-spmenu">
				<li id="menu-item-40"
					class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-40"><a
					href="/main">Home</a></li>
				<li id="menu-item-165"
					class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-165"><a
					href="http://#">설교말씀</a>
					<ul class="sub-menu">
						<li id="menu-item-104"
							class="menu-item menu-item-type-custom menu-item-object-custom menu-item-104"><a
							href="/bbs/1/list/1">설교영상</a></li>
						<li id="menu-item-168"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-168"><a
							href="/bbs/2/list/1">설교말씀</a></li>
						<li id="menu-item-167"
							class="menu-item menu-item-type-post_type menu-item-object-page menu-item-167"><a
							href="http://aonethemes.com/infinitygrid/single-page-left-sidebar/">Left
								sidebar</a></li>
					</ul></li>
				<li id="menu-item-38"
					class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-38"><a
					href="http://#">광장</a>
					<ul class="sub-menu">
						<li id="menu-item-33"
							class="menu-item menu-item-type-taxonomy menu-item-object-post_format menu-item-33"><a
							href="/bbs/3/list/1">교회소식</a></li>
						<li id="menu-item-34"
							class="menu-item menu-item-type-taxonomy menu-item-object-post_format menu-item-34"><a
							href="/bbs/4/list/1">새신자</a></li>
					</ul></li>
				<c:set value="${sessionScope.loginInfo}" var="loginInfo" />
				<c:if test="${empty loginInfo}">
					<li id="menu-item-229"
						class="menu-item menu-item-type-post_type menu-item-object-page menu-item-229"><a
						href="<c:url value="/login" />">로그인</a></li>
				</c:if>
				<c:if test="${not empty loginInfo && loginInfo.login}">
					<li id="menu-item-229"
						class="menu-item menu-item-type-post_type menu-item-object-page menu-item-229"><a
						href="<c:url value="/j_spring_security_logout"/>" >로그아웃</a></li>
				</c:if>
			</ul>
		</div>
	</nav>
</div>