/**
 * JavaScript que contiene funciones de utileria para cargar información de los tabs
 */
var winHeight = 0;

var arrayStyles = ["resources/css/customProcesar.css", "resources/css/customAlterno.css"];

var loadTabContainer = true;


$(document).ready( function() {
	
	winHeight = $(window).height();
			
	$('#contenido').load("resources/showCaseElements/homeContainer.jsp");
	//console.log("ajax done: home");
	
	
	
});
	
	
/**
 * Carga el componente de acuerdo a la seleccion del usuario en la pantalla
 * 
 * */
function cargaComponente(componente, selector, scroll, script, scriptExterno, archivoScript) {
	
	
	//console.log("cargaComponente");
	
	/* carga el contenedor de pestañas */
	
	if (loadTabContainer) {
		//console.log("carga pestañas");
		$('#contenido').load("resources/showCaseElements/tabContainer.jsp", function() {
		
			cargaContenido(componente, selector, scroll, script, scriptExterno, archivoScript);
			loadTabContainer = false;
		});
	
	} else {
		//console.log("no carga pestañas");
		cargaContenido(componente, selector, scroll, script, scriptExterno, archivoScript);
		
	}
}



function cargaContenido(componente, selector, scroll, script, scriptExterno, archivoScript) {
	var accordion = false;
	
	$.ajax({
		url: componente,			// componente a cargar		
		dataType: 'html',
		cache: false,
		type: "GET"
			
	}).done(function (data) {		// componente cargado
		//console.log("ajax done: componente");
						
		
		var textHTML = "";
		
		if ($(data).find('#accordion').length > 0) {
			//console.log('accordion true');
			textHTML = $(data).find('#' + selector + "1").prop('outerHTML');
			
			accordion = true;
			
		} else {
			//console.log('accordion false');
			textHTML = $(data).filter("#" + selector).prop('outerHTML');
		}
		
		
		
		var textHTMLScript = $(data).filter('#' + selector + "Script").prop('outerHTML');
		
		
		/* para la pesta�a de Demo ejemplo */
		if (script) {
			/* inserta el codigo del demo */
			$('#navTabDemo').html("<div class='panel panel-default'><div class='panel-body " + scroll + "'>" 
					+ $(data).filter('#' + selector).html());
			/* inserta el codigo Javascript en el demo */
			$('#navTabDemo').append( $(data).filter('#' + selector + "Script"));
			$('#navTabDemo').append("</div></div>");
			
		} else {
			/* inserta el codigo del demo */
			$('#navTabDemo').html("<div class='panel panel-default'><div class='panel-body " + scroll + "'>" 
														+ $(data).filter('#' + selector).html() + "</div></div>");
			
			
		}
		
		if (accordion) configEventsAccordion();			// configura eventos de acordeon
		
		/* para la pesta�a de Codigo Fuente */
		if (script) {			
			
			/* carga el codigo a mostrar en la pestaña */
			$('#navTabCode').html('<h4>Codigo HTML:</h4>');
			$('#navTabCode').append('<pre><code><b>' + $('<div />').text(textHTML).html() + '</b></code></pre>');
			
			/* carga el codigo javascript a mostrar en la pestaña */
			$('#navTabCode').append('<h4>Codigo Javascript:</h4>');
			$('#navTabCode').append('<pre><code><b>' + $('<div />').text(textHTMLScript).html() + '</b></code></pre>');
			
			if (scriptExterno) {
				agregaBotonScript(selector, archivoScript);
			}
			
			
			} else {
				/* carga el codigo a mostrar en la pestaña */
				$('#navTabCode').html('<pre><code><b>' + $('<div />').text(textHTML).html() + '</b></code></pre>');
				
				
			}
			
			/* para la pesta�a de Documentaci�n */
			$('#navTabDoc').html("<div class='panel panel-default'><div class='panel-body scroll70'>"
														+ $(data).filter('#' + selector + 'Doc').html());
			
			//console.log("winHeight: " + winHeight);
			
			$('.scroll70').css('max-height', (winHeight * 0.55) + 'px');
			
			
			$('#navTabDoc').append("</div></div>");
		
		});
	
}


function agregaBotonScript(selector, archivoScript) {
	/* crea boton ver script*/
	$('#navTabCode').append("<div class='row'><button id='buttonScript' type='button' class='btn btn-primary' >Ver archivo Javascript</button></div>");
	
	/* asigna evento onclick cargaArchivoScript */
	$('#buttonScript').attr("onclick", "muestraModalArchivoScript(\'" + archivoScript + "\');");
	
}

function muestraModalArchivoScript(archivoScript) {
	//console.log("muestraModalArchivoScript");
	
	$.ajax({
		url: 'resources/htmlComponents/modalScript.html',					
		dataType: 'html',
		cache: false,
		type: "GET" 
	})
	.done(function (data) {
		
		//console.log("muestraModalArchivoScript .done");
		
		$('#navTabCode').append(data); // incrusta codigo para modal
		
		cargaArchivoScript(archivoScript);
	});
	
}

function cargaArchivoScript(archivoScript) {
	//console.log("cargaArchivoScript");
	
	$.ajax({
		url: archivoScript,	
		cache: false,
		type: "GET" 
	})
	.done(function (data) {
		//console.log("cargaArchivoScript .done");
		
		
		
		/* inscrusta codigo Javascript del documento */
		$("#modalScript > .modal-dialog > .modal-content > .modal-body")
								.html("<pre><code>" + data + "</code></pre>");
		
		/* muestra modal */
		$("#modalScript").modal({			
			backdrop: true,
			keyboard: false,
			show: true,
			remote: false			
		}).error (function (jqXHR, status, errorThrown) {
			//console.log("cargaArchivoScript .error");
			//console.log(errorThrown + ": " + status);
			/* inscrusta codigo Javascript del documento */
			$("#modalScript > div.modal-content > div.modal-body").html(errorThrown + ": " + status);
			
		});		
		
	});
	
}

/**
 *  configura evento para componentes mostrados en acordeon,
 *  carga dinamicamente el fuente html para cada componente dentro del acordeon 
 * */
function configEventsAccordion() {
	$('#accordion > .panel > .collapse').on('show.bs.collapse', function () {
		var textHTML = '';
		
		
		if ($(this).attr('id') == 'collapse11') {
			//console.log("collapse11: " + $('#datepicker11Code'));
		
			textHTML = $('#datepicker11Code').prop('outerHTML');
			
		} else {
		
			textHTML = $(this).find('.panel-body > div').prop('outerHTML');
		}
		
		$('#navTabCode').html('<pre><code><b>' + $('<div />').text(textHTML).html() + '</b></code></pre>');			
		
	});
	
}


function changeStyle(idStyle) {
	console.log("idStyle: " + idStyle);
	$('#customStyle').attr('href', arrayStyles[idStyle]);
	
	$("#modalTemas").modal('hide');		/* close modal */
	
}


