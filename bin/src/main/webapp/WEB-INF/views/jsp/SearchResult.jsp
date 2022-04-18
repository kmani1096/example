<%@ include file="jspf/header.jspf"%>
<title>Search Result</title>
</head>
<body>
	<div class="body-spidy-container">
		<%@ include file="jspf/navigation/navigation.jspf"%>
		<div class="inner-page">
			<div class="container">
				<!-- Stack the columns on mobile by making one full-width and the other half-width -->
				<div class="row my-row-header">
					<div class="col-3"></div>
					<div class="col-3">
						<p class="my-text-header">Departure</p>
					</div>
					<div class="col-3">
						<p class="my-text-header">Arrival</p>
					</div>
					<div class="col-3">
						<p class="my-text-header">Duration</p>
					</div>
				</div>

				<c:forEach items="${searchedFlightDetailList.flightList}"
					var="flightDetails" varStatus="status">
					<div class="row my-row">
						<div class="col-3 pt-3">
							<p class="my-text-date">${flightDetails.flightName}</p>
						</div>
						<div class="col-3 pt-3">
							<p class="my-text-date">${flightDetails.arrival.substring(11,16)}</p>

						</div>
						<div class="col-3 pt-3">
							<p class="my-text-date">${flightDetails.departure.substring(11,16)}</p>
						</div>
						<div class="col-3 pt-3">
							<p class="my-text-date">${flightDetails.duration}</p>
						</div>
						<div class="col-3 my-source">
							<img src="images/icons/${flightDetails.imageName}" />
						</div>
						<div class="col-3">
							<p class="my-source">${flightDetails.source}</p>
						</div>
						<div class="col-3">
							<p class="my-source">${flightDetails.destination}</p>
						</div>
						<div class="col-3"></div>
						<div class="col pt-2">
							<p class="my-source text-note">Note:- Due to Covid, flights
								schedule may change. Plan your journey according to that.</p>
						</div>
						<div class="col-1"></div>
						<div class="col-2 dropdown button-style">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								id="dropdownMenuButton" data-toggle="dropdown">
								<img src="images/icons/caret-down-square-fill.svg" />
							</button>
							<div class="dropdown-menu dropdown-menu-right dropdown-spidy"
								aria-labelledby="dropdownMenuButton">
								<div class="row my-dropdown-row">
									<div class="col-1 padding-0">
										<img src="images/icons/${flightDetails.imageName}" />
									</div>
									<div class="col-1 padding-0">
										<p class="my-text-date">${flightDetails.flightName}</p>
										<p class="my-text-date">${flightDetails.flightNumber}</p>
									</div>
									<div class="col-5"></div>
									<div class="col-5">
										<div class="container d-flex justify-content-end">
											<div class="row pb-2">
												<div class="col">
													<c:choose>
														<c:when
															test="${flightDetails.extraFacility.contains('Wifi')}">
															<img src="images/icons/wifi.svg" />
														</c:when>
														<c:otherwise>
															<img src="images/icons/wifi-off.svg" />
														</c:otherwise>
													</c:choose>
												</div>
												<div class="col">
													<c:choose>
														<c:when
															test="${flightDetails.extraFacility.contains('Meal')}">
															<img src="images/icons/icons8-meal-16(2).png" />
														</c:when>
														<c:otherwise>
															<img src="images/icons/no-food.png" />
														</c:otherwise>
													</c:choose>
												</div>
												<div class="col">
													<c:choose>
														<c:when
															test="${flightDetails.extraFacility.contains('Plug')}">
															<img src="images/icons/plug.png" />
														</c:when>
														<c:otherwise>
															<img src="images/icons/no-plug.png" />
														</c:otherwise>
													</c:choose>
												</div>
											</div>
										</div>
										<div class="container">
											<div class="row">
												<div class="col">M</div>
												<div class="col">T</div>
												<div class="col">W</div>
												<div class="col">Th</div>
												<div class="col">F</div>
												<div class="col">S</div>
												<div class="col">Su</div>
											</div>
											<div class="row">
												<div class="col">
													<c:choose>
														<c:when test="${flightDetails.days.contains('Mon')}">
															<img src="images/icons/check-square-fill.svg" />
														</c:when>
														<c:otherwise>
															<img src="images/icons/check-square.svg" />
														</c:otherwise>
													</c:choose>
												</div>
												<div class="col">
													<c:choose>
														<c:when test="${flightDetails.days.contains('Tue')}">
															<img src="images/icons/check-square-fill.svg" />
														</c:when>
														<c:otherwise>
															<img src="images/icons/check-square.svg" />
														</c:otherwise>
													</c:choose>
												</div>
												<div class="col">
													<c:choose>
														<c:when test="${flightDetails.days.contains('Wed')}">
															<img src="images/icons/check-square-fill.svg" />
														</c:when>
														<c:otherwise>
															<img src="images/icons/check-square.svg" />
														</c:otherwise>
													</c:choose>
												</div>
												<div class="col">
													<c:choose>
														<c:when test="${flightDetails.days.contains('Thrus')}">
															<img src="images/icons/check-square-fill.svg" />
														</c:when>
														<c:otherwise>
															<img src="images/icons/check-square.svg" />
														</c:otherwise>
													</c:choose>
												</div>
												<div class="col">
													<c:choose>
														<c:when test="${flightDetails.days.contains('Fri')}">
															<img src="images/icons/check-square-fill.svg" />
														</c:when>
														<c:otherwise>
															<img src="images/icons/check-square.svg" />
														</c:otherwise>
													</c:choose>
												</div>
												<div class="col">
													<c:choose>
														<c:when test="${flightDetails.days.contains('Sat')}">
															<img src="images/icons/check-square-fill.svg" />
														</c:when>
														<c:otherwise>
															<img src="images/icons/check-square.svg" />
														</c:otherwise>
													</c:choose>
												</div>
												<div class="col">
													<c:choose>
														<c:when test="${flightDetails.days.contains('Sun')}">
															<img src="images/icons/check-square-fill.svg" />
														</c:when>
														<c:otherwise>
															<img src="images/icons/check-square.svg" />
														</c:otherwise>
													</c:choose>
												</div>
											</div>
										</div>
									</div>

								</div>
								<div class="row my-dropdown-row-selective">
									<div class="col-1 padding-0">
										<p class="my-text-date">${flightDetails.arrival.substring(11,16)}</p>
									</div>
									<div class="col-1 pt-4">
										<div class="progress" style="height: 2px;">
											<div class="progress-bar" role="progressbar"
												style="width: 100%;" aria-valuenow="25" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
									<div class="col-1 padding-0">
										<p class="my-text-date">${flightDetails.departure.substring(11,16)}</p>
									</div>
									<div class="col-9"></div>
								</div>
								<div class="row my-dropdown-row-selective">
									<div class="col-1 padding-1">
										<p class="my-source">${flightDetails.source}</p>
									</div>
									<div class="col-1 padding-1">
										<p class="my-source">${flightDetails.duration}</p>
									</div>

									<div class="col-1 padding-1">
										<p class="my-source">${flightDetails.destination}</p>
									</div>
									<div class="col-6"></div>
									<div class="col-1">
										<img src="images/icons/travel-luggage.png" />
									</div>
									<div class="col-1 pt-5">
										<p class="my-text-date">${flightDetails.luggage}</p>
									</div>

								</div>
								<div class="row my-row-style">
									<div class="col-3">
										<p class="my-text-date">Base Fare</p>
									</div>
									<div class="col-3">
										<p class="my-text-date">Tax</p>
									</div>

									<div class="col-3">
										<p class="my-text-date">Other Discounts</p>
									</div>
									<div class="col-3">
										<p class="my-text-date">Total</p>
									</div>
									<div class="col-3">
										<p class="my-source">&#8377 ${searchedFlightDetailList.seatList[status.index].priceforbooking}</p>
									</div>
									<div class="col-3">
										<p class="my-source">&#8377 ${searchedFlightDetailList.seatList[status.index].tax}</p>
									</div>
									<div class="col-3">
										<p class="my-source">No</p>
									</div>
									<div class="col-3">
										<p class="my-source">&#8377 ${searchedFlightDetailList.seatList[status.index].priceforbooking
											+ searchedFlightDetailList.seatList[status.index].tax}</p>
									</div>

								</div>
								<div class="row my-dropdown-row">
									<div class="col-10">
										<p class="my-text">Cancellation Cost:- &#8377
											${searchedFlightDetailList.seatList[status.index].priceforcancel}</p>
									</div>
									<div class="col-1 my-col">
										<a href="/moredetails?id=${flightDetails.flightId}"
											class="btn btn-primary">Book Ticket</a>
									</div>

								</div>




							</div>
						</div>
					</div>
				</c:forEach>

			</div>
			<!-- modelSpidy(') -->


		</div>

	</div>
	<%@ include file="jspf/footer.jspf"%>
</body>
</html>