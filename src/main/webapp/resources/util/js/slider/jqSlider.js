/**
 * Funcion para generar los Slider Tipos:
 * - Default Horizontal
 * - Default Vertical
 * - Con Inicio mínimo (precio)
 * - Con Rango
 */
function creaSlider() {
	"use strict";

	// --- Inicia crear Slider Default Horizontal
	$("#slider-horizontal").slider({
		orientation : "horizontal",
		range : "min",
		min : 0,
		max : 100,
		value : 0,
		slide : function(event, ui) {
			$("#amount-horizontal").val(ui.value);
		}
	});
	$("#amount-horizontal").val($("#slider-horizontal").slider("value"));
	// --- Fin crear Slider Default Horizontal

	// --- Inicia crear Slider Default Vertical
	$("#slider-vertical").slider({
		orientation : "vertical",
		range : "min",
		min : 0,
		max : 100,
		value : 0,
		slide : function(event, ui) {
			$("#amount-vertical").val(ui.value);
		}
	});
	$("#amount-vertical").val($("#slider-vertical").slider("value"));
	// --- Fin crear Slider Default Vertical

	// --- Inicia crear Slider con Valor Inicial (Etiqueta Precio)
	$("#slider-range-min").slider({
		range : "min",
		value : 50,
		min : 0,
		max : 100,
		slide : function(event, ui) {
			$("#amount-min").val("$" + ui.value);
		}
	});
	$("#amount-min").val("$" + $("#slider-range-min").slider("value"));
	// --- Fin crear Slider con Valor Inicial (Etiqueta Precio)

	// --- Inicio crear Slider con Rango de Valores (Etiqueta Precio)
	$("#slider-range").slider({
		range : true,
		min : 0,
		max : 500,
		values : [ 75, 300 ],
		slide : function(event, ui) {
			$("#amount-range").val("$" + ui.values[0] + " - $" + ui.values[1]);
		}
	});
	$("#amount-range").val(
			"$" + $("#slider-range").slider("values", 0) + " - $"
					+ $("#slider-range").slider("values", 1));
	// --- Fin crear Slider con Rango de Valores (Etiqueta Precio)

}