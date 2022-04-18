<%@ include file="jspf/header.jspf"%>
<title>Payment Process</title>
</head>
<body>
	<div class="body-spidy-container">
		<%@ include file="jspf/navigation/navigation.jspf"%>
		<div class="inner-page">
			
				<div class="container">
					<div class="form spidy-card">
						<h3>Pay through Card</h3>
						<form:form modelAttribute="payment" method="post">
							<div class="row">
								<div class="mt-4 ">
									<form:input path="cardnumber" class="form-control col-md-2"
										placeholder="Enter card number" />
									<form:errors path="cardnumber" cssClass="text-warning" />
								</div>
							</div>
							<div class="row">
								<div class="col pt-2">
									<form:input path="expiryandvalidity"
										class="form-control col-md-2"
										placeholder="Enter expiry/validity" />
									<form:errors path="expiryandvalidity" cssClass="text-warning" />
								</div>
								<div class="col pt-2">
									<form:input path="cvv" class="form-control col-md-2"
										placeholder="Enter cvv" />
									<form:errors path="cvv" cssClass="text-warning" />
								</div>
							</div>

							<div class="row">
								<div class="mt-4 ">
									<input type="submit" class="btn btn-secondary" value="Pay">
								</div>
							</div>
						</form:form>
					</div>
				</div>
		</div>

	</div>
	
	
	<%@ include file="jspf/footer.jspf"%>
</body>
</html>