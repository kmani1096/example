<%@ include file="jspf/header.jspf"%>
<title>Add Customer And Review</title>
</head>

<body>
	<div class="body-spidy-container">
		<%@ include file="jspf/navigation/navigation.jspf"%>

		<div class="inner-page">
			<div class="container">
				<h3>Add Customer</h3>
				<div class="form">
					<form action="#" method="post" id="customer-form">
						<c:forEach var="i" begin="0" end="${listOfPassengar-1}">
							<div class="row pt-3 input-group">
								<div class="col">
									<input id="firstName" name="firstName[]" class="form-control col-md-2"
										placeholder="Enter FirstName" />
								</div>
								<div class="col">
									<input id="lastName" class="form-control col-md-2 " placeholder="Enter LastName"
										name="lastName[]" />
								</div>
								<div class="col">
									<input id="gender" class="form-control col-md-2 " placeholder="Enter Gender"
										name="gender[]" />
								</div>
							</div>
						</c:forEach>
						<div class="row pt-2">
							<button id="submit" class="btn btn-secondary"
								onclick="yourJsFunction(${listOfPassengar});return false">Save</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="inner-page">
			<div class="scoll-area-design">
				<div class="spidy-style">
					<div class="my-container">
						<div class="seatmaprow">
							<div class="my-col">
								<div class="seat-empty-area"></div>
							</div>
							<div class="my-col">
								<div class="seat-number">A</div>
							</div>
							<div class="my-col">
								<div class="seat-number">B</div>
							</div>
							<div class="my-col">
								<div class="seat-number">C</div>
							</div>
							<div class="my-col">
								<div class="seat-empty-area"></div>
							</div>
							<div class="my-col">
								<div class="seat-number">D</div>
							</div>
							<div class="my-col">
								<div class="seat-number">E</div>
							</div>
							<div class="my-col">
								<div class="seat-number">F</div>
							</div>
							<div class="my-col"></div>
						</div>
						<c:forEach var="i" begin="1" end="30">
							<div class="seatmaprow">
								<div class="my-col">
									<div class="seat-number">${i}</div>
								</div>
								<div class="my-col"><img alt="" src="images/icons/car-seat-available.png"></div>
								<div class="my-col"><img alt="" src="images/icons/car-seat-filled.png"></div>
								<div class="my-col"><img alt="" src="images/icons/car-seat-filled.png"></div>
								<div class="my-col">
									<div class="seat-empty-area"></div>
								</div>
								<div class="my-col"><img alt="" src="images/icons/car-seat-available.png"></div>
								<div class="my-col"><img alt="" src="images/icons/car-seat-available.png"></div>
								<div class="my-col"><img alt="" src="images/icons/car-seat-filled.png"></div>
								<div class="my-col"></div>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="seats-info">
					<div class="seats-content">
						<div class="seatmaprow">
							<div class="my-col"><img alt="" src="images/icons/car-seat-available.png"></div>
							<div class="my-col">
								<p>Available</p>
							</div>
							<div class="my-col"><img alt="" src="images/icons/car-seat-filled.png"></div>
							<div class="my-col">
								<p>Filled</p>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="inner-page">
			<div class="price-details">
				<h1>Total Fare</h1>
				<div class="row">
					<div class="col">Base Fare</div>
					<div class="col text-right">&#8377 ${seat.priceforbooking} X ${listOfPassengar} Passengar</div>
				</div>
				<div class="row">
					<div class="col">Tax</div>
					<div class="col text-right">&#8377 ${seat.tax} X ${listOfPassengar} Passengar</div>
				</div>
				<hr>
				<div class="row">
					<div class="col">Total</div>
					<div class="col text-right">&#8377 ${seat.priceforbooking*listOfPassengar +
						seat.tax*listOfPassengar}</div>
				</div>

			</div>
		</div>
		<div class="inner-page">
					<h1>Contact Details</h1>
					<form action="#" method="post" id="">
						<div class="row">
							<div class="col-6">
								<input type="text" id="email" name="email" placeholder="Enter Email" value="" />
								<span id="email-info"></span>
							</div>
							<div class="col-6">
								<input type="text" id="phoneNumber" placeholder="Enter phoneNumber" name="phoneNumber"
									value="" />
								<span class="error" id="phone-info"></span>
							</div>
						</div>
					</form>
		</div>
		<div class="button-spidy">
			<button class="spidy-button-design">Payment</button>
		</div>
	</div>
	<script>
		

	</script>

	<%@ include file="jspf/footer.jspf"%>
</body>

</html>