/**
 * Funcion para generar el PickList
 */

function creaPickList() {
	var val = {
		01: {id: 556, text: 'Azteca'},
		02: {id: 552, text: 'Banamex'},
		03: {id: 568, text: 'Coppel'},
		04: {id: 550, text: 'Inbursa'},
		05: {id: 562, text: 'Invercap'},
		06: {id: 564, text: 'Metlife'},
		07: {id: 578, text: 'Pensi\u00F3n ISSSTE'},
		08: {id: 538, text: 'Principal'},
		09: {id: 534, text: 'Profuturo GNP'},
		10: {id: 544, text: 'Sura'},
		11: {id: 530, text: 'XXI Banorte'},
	};

	// Etiquetas para los botones (opionales)
	var etiquetas = {
		add: 'Agrega Afore >',
		addAll: 'Agregar Todas >>',
		remove: '< Remover Afore',
		removeAll: 'Remover Todas >>'
	};

	var pick = $("#pickList").pickList({data: val}, etiquetas);

	// Los datos de la listas se guardan en un arreglo de objetos
	$("#getSelected").click(function () {
		var lista='';
		var datos = pick.getValues();
		for(indice=0 ; indice < datos.length ; indice++){
			lista = lista + 'id:' + datos[indice].id + '   text:' + datos[indice].text + '\n';
		}
		$("#dataSelect").val(lista);
	});
}