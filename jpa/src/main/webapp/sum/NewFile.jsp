<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>summernote</title>
<!-- include jquery -->
<script src="//code.jquery.com/jquery-1.9.1.min.js"></script>

<!-- include libraries BS3 -->
<link rel='stylesheet' id='contact-form-7-css'
	href='/resources/plugin/bootstrap-3.2.0-dist/css/bootstrap.min.css?ver=3.8'
	type='text/css' media='all' />
<link rel='stylesheet' id='contact-form-7-css'
	href='/resources/css/styles.css?ver=3.8' type='text/css' media='all' />
<link rel='stylesheet' id='style-name-css'
	href='/resources/css/style.css?ver=3.9.2' type='text/css' media='all' />
<script type="text/javascript"
	src="/resources/plugin/bootstrap-3.2.0-dist/js/bootstrap.min.js?ver=1.0"></script>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />

<!-- include summernote -->
<link rel="stylesheet" href="../dist/summernote.css">


</head>
<body class="single single-post postid-224 single-format-standard">
	<div class="entire-site-wrap">
		<div class="site-margin">
			<div class="site-wrap-shadow">

				<section class="section-wrap">
					<div class="container">
						<div class="row">

							<div class="col-md-9 bumpnorm">
								<div class="singlewrap colored">


									<!-- You can start editing here. -->
									<!-- If comments are open, but there are no comments. -->


									<div id="respond" class="comment-respond">

										<form class="comment-form">
											<p class="comment-form-comment">
												<textarea class="summernote"></textarea>
											</p>
											<button type="submit" class="btn btn-default">submit</button>
										</form>

									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../dist/summernote.js"></script>
	<script type="text/javascript">
		$(function() {
			$('.summernote').summernote({
				height : 200
			});

			$('form').on('submit', function(e) {
				e.preventDefault();
				alert($('.summernote').code());
			});
		});
	</script>

</body>
</html>
