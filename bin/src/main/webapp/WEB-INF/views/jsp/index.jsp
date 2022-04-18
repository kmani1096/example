<%@ include file="jspf/header.jspf"%>
<title>Airline Reservation System</title>
</head>
<body>
	<div class="body-spidy-container">
		<%@ include file="jspf/navigation/navigation.jspf"%>
		<div class="spidy-container">
			<div class="container" style="width: 55%; float: left">
				<h2>Plan your Journey</h2>
				<div class="form">
					<form:form modelAttribute="search" method="post">
						<div class="row">
							<div class="col-md-5">
								<form:input path="source" class="form-control col-md-2"
									placeholder="Source" />
								<form:errors path="source" cssClass="text-warning" />
							</div>
							<div class="col-md-5">
								<form:input path="destination" class="form-control col-md-2 "
									placeholder="Destination" />
								<form:errors path="destination" cssClass="text-warning" />
							</div>
						</div>

						<div class="row">
							<div class="col-md-5">
								<form:label path="journeyDate" for="datepicker1">Date Of Journey</form:label>
								<form:input path="journeyDate" class="form-control"
									id="datepicker1" />
								<form:errors path="journeyDate" cssClass="text-warning" />
							</div>

							<div class="col-md-5">
								<form:label path="returnDate" for="datepicker1">Return Date Of Journey</form:label>
								<form:input path="returnDate" class="form-control" id="datepicker2" />
								<form:errors path="returnDate" cssClass="text-warning" />
							</div>
						</div>

						<div class="row">
							<div class="col-md-10">
								<form:input path="passenger" class="form-control spidySpace"
									placeholder="List of Passengar" id="myInput"
									onClick="filterFunction()" />
								<form:errors path="passenger" cssClass="text-warning" />
								<div class="dropdown">
									<div id="myDropdown" class="dropdown-content">
										<a href="#about">About</a> <a href="#base">Base</a> <a
											href="#blog">Blog</a> <a href="#contact">Contact</a> <a
											href="#custom">Custom</a> <a href="#support">Support</a> <a
											href="#tools">Tools</a>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-10">
								<form:input path="classOfjourney"
									class="form-control spidySpace" placeholder="Select Class"
									id="myInput" onClick="filterFunction()" />
								<form:errors path="classOfjourney" cssClass="text-warning" />
								<div class="dropdown">
									<div id="myDropdown" class="dropdown-content">
										<a href="#about">About</a> <a href="#base">Base</a> <a
											href="#blog">Blog</a> <a href="#contact">Contact</a> <a
											href="#custom">Custom</a> <a href="#support">Support</a> <a
											href="#tools">Tools</a>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="mt-4 ">
								<input type="submit" class="btn btn-secondary" value="Search">
							</div>
						</div>
					</form:form>
				</div>
			</div>

			<div class="container" style="width: 45%; float: right">
				<div class="slideshow-container">

					<div class="mySlides fade">
						<div class="numbertext">1 / 3</div>
						<img src="images/adrien-eBKbKMiE03c-unsplash.jpg"
							style="width: 100%">
						<div class="text">Caption Text</div>
					</div>

					<div class="mySlides fade">
						<div class="numbertext">2 / 3</div>
						<img src="images/ammie-ngo-vcu-OZBxxRk-unsplash.jpg"
							style="width: 100%">
						<div class="text">Caption Two</div>
					</div>

					<div class="mySlides fade">
						<div class="numbertext">3 / 3</div>
						<img src="images/aussieactive-1brtlzDq-o8-unsplash.jpg"
							style="width: 100%">
						<div class="text">Caption Three</div>
					</div>

				</div>
				<br>

				<div style="text-align: center">
					<span class="dot"></span> <span class="dot"></span> <span
						class="dot"></span>
				</div>
			</div>


		</div>
		<div class="spidy-2">
			<h1>Top Places to Visit</h1>
		</div>
		<div class="spidy-3">
			<h1>Best Packages provided by us</h1>
		</div>
		<div class="spidy-2">
			<h1>Quick about website</h1>
		</div>
		<div class="spidy-3">
			<h1>Our Parteners</h1>
		</div>
		<div class="spidy-2">
			<h1>Feedbacks from customers</h1>
		</div>
		<script type="text/javascript">
		var slideIndex = 0;
		showSlides();

		function showSlides() {
		  var i;
		  var slides = document.getElementsByClassName("mySlides");
		  var dots = document.getElementsByClassName("dot");
		  for (i = 0; i < slides.length; i++) {
		    slides[i].style.display = "none";  
		  }
		  slideIndex++;
		  if (slideIndex > slides.length) {slideIndex = 1}    
		  for (i = 0; i < dots.length; i++) {
		    dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";  
		  dots[slideIndex-1].className += " active";
		  setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
		</script>
		<%@ include file="jspf/footer.jspf"%>
	</div>
</body>
</html>