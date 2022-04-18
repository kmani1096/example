var data = [];

function yourJsFunction(length) {
	var n = document.getElementsByName("firstName[]");
	var p = document.getElementsByName("lastName[]");
	var g = document.getElementsByName("gender[]");
	for (var i = 0; i < length; i++) {
		data.push({
			firstname: n[i].value,
			lastName: p[i].value,
			gender: g[i].value
		});
	}
	

}
$(function (event) {
	var emailField = $("#email");
	var phoneNumberField = $("#phoneNumber");

	emailField.blur(function (event) {
		var email = emailField.val();
		if (!isValidEmail(email)) {
			$("#email-info").text("Not Valid Email").css("color", "red");
			event.preventDefault();
		} else {
			$("#email-info").text(" ");
			data.push({
				email: email
			});
		}
	});

	phoneNumberField.blur(function (event) {
		var phoneNumber = phoneNumberField.val();
		if (!isValidPhoneNumber(phoneNumber)) {
			$("#phone-info").text("Not Valid Phone Number").css("color", "red");
			event.preventDefault();
		} else {
			$("#phone-info").text(" ");
			data.push({
				phoneNumber: phoneNumber
			});
			const myJSON = JSON.stringify(data);
			console.log(myJSON);
		}
	});

});

function isValidEmail(email) {
	return email.trim().length >= 2;
}

function isValidPhoneNumber(phoneNumber) {
	var pattern = /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/;
	return pattern.test(phoneNumber);
}

function isValidTextField(textField) {
	return textField.trim().length >= 2;
}