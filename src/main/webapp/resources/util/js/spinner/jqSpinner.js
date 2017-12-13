/**
 * Funcion para generar el Spinner
 */

function creaSpinner() {
	"use strict";
	var spinner = $("#spinner").spinner();

	$("#disable").on("click", function() {
		if (spinner.spinner("option", "disabled")) {
			spinner.spinner("enable");
		} else {
			spinner.spinner("disable");
		}
	});
	$("#getvalue").on("click", function() {
		alert(spinner.spinner("value"));
	});
	$("#setvalue").on("click", function() {
		spinner.spinner("value", 5);
	});
	$("button").button();
}