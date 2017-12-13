var inputsList;
var bootstrapList;
var jqgridList;
var validationList;

$(document).ready(function()
{	
	//console.log('document ready');
	$('#inputBusqueda').val('');			// limpia campo busqueda
	
	configuraBusqueda();					// configura busqueda en el menu
	
	/* campo de busqueda */
	$('#inputBusqueda').keyup(function() {
		console.log('keyup: ' + $(this).val() + " " + $(this).val().length);		
		
		if ( $(this).val().length == 0 || $(this).val().trim() == '') {
			/* muestra todos los menus dropdown */
			$('#inputsHeader').show();
			$('#listInputs').show();			
			$('#jqgridHeader').show();
			$('#validationHeader').show();
			
			/* muestra todos los elementos en todas las listas */
			inputsList.search(); 
			bootstrapList.search(); 			
			jqgridList.search(); 
			validationList.search(); 
			hideList('');
			
		} else {		
			//console.log("busca: " + $(this).val());
			
			/* inicia la busqueda en cada lista */
			inputsList.search($(this).val());
			bootstrapList.search($(this).val());
			jqgridList.search($(this).val());
			validationList.search($(this).val());
		}
		
	});
	
	
	
	/* intercambia incono colapsado expandido */
	$('a[data-toggle=collapse]').click( function() {
		//console.log('html: ' + $(this).html());
		$(this).find("i").toggleClass("glyphicon-chevron-right glyphicon-chevron-down");
		
	})
	
});



function configuraBusqueda() {
		
	var options = {
		    valueNames: [ 'menu', 'opcion']
		};
	var options2 = {
		    valueNames: [ 'opcion']
		};
		
		/*	una lista por cada tipo de componente */
		inputsList = new List('inputs-list', options);
		bootstrapList = new List('bootstrap-list', options);
		jqgridList = new List('jqgrid-list', options);
		validationList = new List('validation-list', options2);

		
		
		/* eventos inputsList */		
		inputsList.on('searchStart', function () {
		
			//console.log("searchStart");
			
			$('#listOptions').show();
			
		
			
		
			//console.log("buscando: " + $('#buscaMenu').val());		
			/* busca en las demas listas */
			bootstrapList.search($('#buscaMenu').val());
			jqgridList.search($('#buscaMenu').val());
			validationList.search($('#buscaMenu').val());			
			
		}).on('searchComplete', function () {
			
			//console.log("inputs-list: " + inputsList.matchingItems.length);
			
			
			if (inputsList.matchingItems.length == 0
					&& bootstrapList.matchingItems.length == 0) {
				
				$('#inputsHeader').hide();
				
			} else  {
				$('#inputsHeader').show();
				
			}
			
			
			if (inputsList.matchingItems.length > 0) {
				
				$('#listInputs').show();
				showList('#listInputs li ');
				//showList('#inputs-list ul ');
				
			} else {
				$('#listInputs').hide();
				hideList('#listInputs li ');
				//hideList('#inputs-list ul ');
			}
		});
		
		bootstrapList.on('searchComplete', function () {
			
			//console.log("bootstrapList: " + bootstrapList.matchingItems.length);
			
			if (bootstrapList.matchingItems.length > 0) {
				
				showList('#bootstrap-list ul ');
			} else {
				
				hideList('#bootstrap-list ul ');
			}
			
		});
		
		
		/* eventos jqgridList */		
		jqgridList.on('searchComplete', function () {
			
			//console.log("jqgridList: " + jqgridList.matchingItems.length);
			
			if (jqgridList.matchingItems.length > 0) {
				$('#jqgridHeader').show();
				showList('#jqgrid-list ul ');
				
			} else {
				$('#jqgridHeader').hide();
				hideList('#jqgrid-list ul ');
			}
			
		});
		
		/* eventos validationList */
		
		validationList.on('searchComplete', function () {
			
			//console.log("validationList: " + validationList.matchingItems.length);
			
			if (validationList.matchingItems.length > 0) {
					
				$('#validationHeader').show();
				
				showList('#validation-list ul ');
				
			} else {
				$('#validationHeader').hide();
				
				hideList('#validation-list ul ');
				
				
			}
		});
	
}



function hideList(selector) {
	//console.log('hide list');
	$(selector + ".collapse").collapse('hide');
	//console.log("selector: " + selector + "a[data-toggle=collapse]");
	
	if($(selector + "a[data-toggle=collapse]")
							.html() != undefined) {
			
		//console.log('html: ' + $(selector + "a[data-toggle=collapse]").html());
			
			if( $(selector + "a[data-toggle=collapse]")
					.html().indexOf("glyphicon-chevron-down") >= 0) {
		
		//console.log('ok');
		$(selector + "a[data-toggle=collapse]")
		.find("i").toggleClass("glyphicon-chevron-right glyphicon-chevron-down");
	} 
	}
}

function showList(selector) {
	//console.log('show list');
	$(selector + ".collapse").collapse('show');
	//console.log("selector: " + selector + "a[data-toggle=collapse]");
	
	if($(selector + "a[data-toggle=collapse]").html() != undefined) {
		
		//console.log('html: ' + $(selector + "a[data-toggle=collapse]").html());
		
		if( $(selector + "a[data-toggle=collapse]")
				.html().indexOf("glyphicon-chevron-right") >= 0) {
		
			//console.log('ok');
				
			$(selector + "a[data-toggle=collapse]")
				.find("i").toggleClass("glyphicon-chevron-right glyphicon-chevron-down");
		}
	}
}
