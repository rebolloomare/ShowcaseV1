  function cargaGrid() {
	  	
	  	/* string json  */  
  		var dataAgentesPromotores =  '{	"page":1, "max":1, "total":1, "rows":[ {"administradora":{"cvAfore":"538","descripcionAdministradora":"PRINCIPAL AFORE","flagActivo":1,"idProcesar":914643824248},"idProcesarAfore":914643824248,"apellidoMaterno":"HERNANDEZ","apellidoPaterno":"ANAYA","estatusAgente":{"flagEstatus":"ACTIVO","idEstatusAgente":1,"usuarioModificador":"MIGRACION","cvEstatusAgente":"1A","descripcionEstatusAgente":"REGISTRO EXITOSO"}, "idProcesar":199283876954,"nombre":"JORGE","numeroAgentePromotor":"1507005897","usuarioModificador":"OPERACION 80","rolesAsignados":{"id":{"idProcesar":199283876954,"cvTipoAgente":"04"},"tipoAgente":{"claveTipoAgentePromotor":"04"},"usuarioModificador":"OPERACION 80","fechaControl":"2015-07-15","estatus":{"flagEstatus":"INACTIVO","idEstatusAgente":33,"usuarioModificador":"MIGRACION","cvEstatusAgente":"3B","descripcionEstatusAgente":"BAJA POR IRREGULARIDADES EN LOS DOCUMENTOS DEL AGENTE PROMOTOR"}},"fechaInicioAfore":"14/06/2015","curp":"AAHJ800815HJCNRR06"}]}'; 	

  		
  		/* jquery grid */
        $("#jqTable").jqGrid({
            datatype: "jsonstring",
            datastr : dataAgentesPromotores,
            jsonReader: {
                repeatitems: false,
                root: "rows", 
                page: "page", 
                total: "total",
                records: "max"          
            },
            mtype: "POST",
            regional : 'es',
 
            // Especifica nombre de columnas
            colNames: ["N&uacute;mero de Agente Promotor", "Nombre", "Apellido Paterno", "Apellido Materno","Estatus","Administradora","fecha Inicio en Afore", "Clave Afore" ,"DescripcionEstatusAgente","CURP"],
 
            // Configura columnas
            colModel: [
            { name: "numeroAgentePromotor", sortable: true, width: 185, align: "left"},
            { name: "nombre", sortable: true,  width: 195, align: "left"},
            { name: "apellidoPaterno", sortable: true, width: 150, align: "left" },
            { name: "apellidoMaterno", sortable: true,  width: 150, align: "left"},
            { name: "rolesAsignados.estatus.flagEstatus", sortable: true,  width: 110, align: "left"},
            { name: "administradora.descripcionAdministradora", sortable: true,  width: 145, align: "left"},
            { name: "fechaInicioAfore",  hidden:true},
            { name: "administradora.cvAfore",  hidden:true},
            { name: "rolesAsignados.estatus.descripcionEstatusAgente",  hidden:true},
            { name: "curp",  hidden:true}],
 
            // Tamaño de grid
           	width: 935,
            height: 350,
 
            // Paginado
            toppager: false,
            pager: "#jqTablePager",
            emptyrecords: "No existe informaci&oacute;n para mostrar",
            recordtext: "Vistos {0} - {1} de {2}",
            loadui: 'disable',
  			//loadtext: "Cargando...",
			pgtext : "P&aacute;gina {0} de {1}",
            rowNum: 15,
            rowList: [15,30, 50, 100],
            viewrecords: true,
//             loadonce: true,
            sortable: true,
            sortname: "numeroAgentePromotor",
            sortorder: "asc",
            loadComplete: function () {
                var $self = $(this);
                if ($self.jqGrid("getGridParam", "datatype") === "jsonstring") {
                    setTimeout(function () {
                        $self.trigger("reloadGrid"); // Call to fix client-side sorting
                    }, 50);
                }
            },
        
            caption: "jqGrid",
            toolbar: [true,"top"],
            gridview: false,
            ondblClickRow: function (id) {
                				if (id != null) {

                					var data = $("#jqTable").getRowData(id);
                					//se conforma el nombre completo e informacion para la pantalla de detalle del agente
                					var nombreCompleto = data.nombre +" "+ data.apellidoPaterno + " " + data.apellidoMaterno;
                					var cvAdministradora = $('#jqTable').jqGrid('getCell',id,'administradora.cvAfore');
                					var administradora = $('#jqTable').jqGrid('getCell',id,'administradora.descripcionAdministradora');
                					var estatus = $('#jqTable').jqGrid('getCell',id,'rolesAsignados.estatus.flagEstatus');
                					var descEstatus = $('#jqTable').jqGrid('getCell',id,'rolesAsignados.estatus.descripcionEstatusAgente');
									alert("Seleccionó: "+nombreCompleto);
                				}
            				}
        
        }).navGrid("#jqTablePager",
            { refresh: false, add: false, edit: false, del: false, search: false}// refreshtext: "Actualizar",searchtext: "Filtrar" },
//                 {}, // opciones para editar
//                 {}, // opciones para agregar
//                 {} // opciones para borrar
//                 {sopt: ["cn"], multipleSearch: true},// opciones para buscar 
//                 {closeOnEscape:true}
         );
         jQuery("#jqTable").jqGrid('filterToolbar', { searchOperators: false, searchOnEnter: false, autosearch: true });

       
    }
