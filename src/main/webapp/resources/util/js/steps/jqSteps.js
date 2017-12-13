/**
 * Funcion para generar el Steps
 */

function creaSteps() {
	$("#profileForm").steps({
		headerTag: "h2",
		bodyTag: "section",
		transitionEffect: "slideLeft",
		stepsOrientation: $.fn.steps.stepsOrientation.vertical,
		onStepChanging: function (event, currentIndex, newIndex) {
			var form = $( "#profileForm" );
			var valida = form.valid();
			return valida; 
		},				
		onFinishing: function (event, currentIndex) {
			var form = $( "#profileForm" );
			var valida = form.valid();
			if(valida == true){
				$('#welcomeModal').modal();
			}
			return valida; 
		},
		labels: {
			cancel: "Cancelar",
			current: "Paso actual:",
			pagination: "Paginacion",
			finish: "Finalizar",
			next: "Siguiente",
			previous: "Anterior",
			loading: "Cargando ..."
		}			
	});
	$( "#profileForm" ).validate( {
		rules: {
			cnombre: "required",
			cpaterno: "required",
			cmaterno: "required",
			username1: {
				required: true,
				minlength: 6
			},
			password1: {
				required: true,
				minlength: 5
			},
			confirm_password1: {
				required: true,
				minlength: 5,
				equalTo: "#password1"
			},
			email1: {
				required: true,
				email: true
			},
			agree1: "required"
		},
		messages: {
			cnombre: "Ingrese su nombre",
			cpaterno: "Ingrese su apellido paterno",
			cmaterno: "Ingrese su apellido materno",
			username1: {
				required: "Debe ingresar un usuario",
				minlength: "El usuario debe ser de minimo 6 posiciones"
			},
			password1: {
				required: "Ingrese su password",
				minlength: "El password debe tener minimo 5 caracteres"
			},
			confirm_password1: {
				required: "Confirme su password",
				minlength: "El password no coincide",
				equalTo: "El password coincide!"
			},
			email1: "Ingrese un email valido",
			agree1: "Confirme los datos proporcionados"
		},
		errorElement: "em",
		errorPlacement: function ( error, element ) {
			error.addClass( "help-block" );
			element.parents( ".col-sm-5" ).addClass( "has-feedback" );

			if ( element.prop( "type" ) === "checkbox" ) {
				error.insertAfter( element.parent( "label" ) );
			} else {
				error.insertAfter( element );
			}

			if ( !element.next( "span" )[ 0 ] ) {
				$( "<span class='glyphicon glyphicon-remove form-control-feedback'></span>" ).insertAfter( element );
			}
		},
		success: function ( label, element ) {
			if ( !$( element ).next( "span" )[ 0 ] ) {
				$( "<span class='glyphicon glyphicon-ok form-control-feedback'></span>" ).insertAfter( $( element ) );
			}
		},
		highlight: function ( element, errorClass, validClass ) {
			$( element ).parents( ".col-sm-5" ).addClass( "has-error" ).removeClass( "has-success" );
			$( element ).next( "span" ).addClass( "glyphicon-remove" ).removeClass( "glyphicon-ok" );
		},
		unhighlight: function ( element, errorClass, validClass ) {
			$( element ).parents( ".col-sm-5" ).addClass( "has-success" ).removeClass( "has-error" );
			$( element ).next( "span" ).addClass( "glyphicon-ok" ).removeClass( "glyphicon-remove" );
		},
	})
}