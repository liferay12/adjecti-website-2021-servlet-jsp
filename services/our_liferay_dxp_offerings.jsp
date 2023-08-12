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
	<figure class="adjectiLiferay text-uppercase">	
		<img class="img-fluid pr-2" src="images/liferay.png" alt="Adjecti Liferay DXP Offerings Image" title="Adjecti Liferay DXP Offerings">
		<figcaption class="adjectiCenter text-white">
			<h1 class="font-weight-bold">Our Liferay DXP Offerings</h1>
			<span=>Platform Acceleration </span=>
		</figcaption>
		
	</figure>
	<!-- COMMON PAGE OF INDUSTRIES END -->

	<section class="about">
		
		
			<div class="container">
				<div class="row text-center text-lg-left">
					<div class="col-lg-6 order-1 order-lg-0 wow fadeInDown" style="visibility: visible; animation-name: fadeInDown;">
						<h2 class="textGradient">"Liferay" platform and deliver world-class experience for your customers</h2>
						<p class="mb-4">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, </p>

						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, </p>
					</div>
					<div class="col-lg-6 order-0 order-lg-1 wow fadeInUp" style="visibility: visible; animation-name: fadeInUp;">
						<img src="images/di_benefits_02.png" alt="Predictive Analytics to Predict Outcomes" title="Predictive Analytics to Predict Outcomes" class="img-fluid pb-2">
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
