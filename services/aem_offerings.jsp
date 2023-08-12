<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
	<%@include file="/head.jsp"%>
</head>
<body>
	<div class="header_fixed">
		<header>
			<div class="container">
				<%@include file="/top_nav.jsp"%>
			</div>
		</header>
	</div>
	
	<!-- COMMON PAGE OF INDUSTRIES START -->
	<figure class="aemOffering">	
		<img class="img-fluid border-right pr-2" src="images/aem.png" alt="Adjecti AEM Image" title="Adjecti AEM">
		<figcaption class="adjectiCenter text-white text-center text-md-left">
			<h1 class="font-weight-bold" style="color:#f67e18;"> AEM Offerings</h1>
			<p>Consulting & Development </p>
		</figcaption>
		
	</figure>
	<!-- COMMON PAGE OF INDUSTRIES END -->

	<section class="about">
		<div class="container">
			<div class="row text-center text-lg-left">
				<div class="col-lg-6 order-1 order-lg-0 wow fadeInDown" style="visibility: visible; animation-name: fadeInDown;">
					<h2 class="textGradient"><abbr title="Adobe Experience Manager">AEM</abbr> Solutions Specialists</h2>
					<p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, </p>

					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, </p>
				</div>
				<div class="col-lg-6 order-0 order-lg-1 wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
					<img src="images/di_benefits_01.png" alt="Predictive Analytics to Predict Outcomes" title="Predictive Analytics to Predict Outcomes" class="img-fluid pb-2">
				</div>
			</div>
		</div>

		
	</section>
			
	<!-- <%@include file="/how_we_work.jsp"%> -->
	<%@include file="/clients.jsp"%>
	<%@include file="/discover.jsp"%>
	<%@include file="/subscribe.jsp"%>
	
	<footer>
		<section class="footer">
			<%@include file="/footer.jsp"%>
		</section>
	</footer>

	<%@include file="/quick_contact_modal.jsp"%>
	<!-- Mainly scripts -->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.bxslider.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.slider').bxSlider({
				auto : true,
				controls : false
			});
			new WOW().init();
		});
	</script>
</body>
</html>
