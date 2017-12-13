var oculto = false;  

	function cargaGridEditForm() {
	  	
	  	/* string json  */  
	  /* string json con datos de la tabla  */  
		var dataAgentes =  "{totalpages: '1', currpage: '1', totalrecords: '4', " +
				"invdata : [ " +
					"{'numeroAgentePromotor': '1001','nombre': 'Alberto', " +
					"'apellidoPaterno':'Mota', 'apellidoMaterno': 'Hernandez', 'edad':'20'," +
					"'flagEstatus': 'Ok', 'descripcionAdministradora': 'Fondos x1'}," +
					
					"{'numeroAgentePromotor': '1002','nombre': 'Pancho', " +
					"'apellidoPaterno':'Lopez', 'apellidoMaterno': 'Mendez', 'edad':'31'," +
					"'flagEstatus': 'Ok', 'descripcionAdministradora': 'Fondos Abiertos'}," +
					
					"{'numeroAgentePromotor': '1003','nombre': 'Jazmin', " +
					"'apellidoPaterno': 'Peralta', 'apellidoMaterno': 'Diogenes', 'edad':'80'," +
					"'flagEstatus': 'No', 'descripcionAdministradora': 'Fondos Cerrados SA'}" +
					
					" ]}"; 	

  		
  		/* jquery grid */
        $("#jqTableEdit").jqGrid({
            datatype: "jsonstring",
            datastr : dataAgentes,
            jsonReader: {
                repeatitems: false,
                root: "invdata", 
                page: "currpage", 
                total: "totalpages",
                records: "totalrecords",
                id: "numeroAgentePromotor"
            },
            mtype: "POST",
            regional : 'es',
            pgtext : "P&aacute;gina {0} de {1}",
            // Especifica nombre de columnas
            
            colNames: ["N&uacute;mero de Agente Promotor", "Nombre", "Apellido Paterno", "Apellido Materno", "Edad", "Estatus","Administradora"],
 
            /* Configura columnas */            
            colModel: [ 
                        { name: "numeroAgentePromotor",sortable:true,width:185,align:"left"},
                        
                        { name: "nombre", sortable: true,
			width: 195, align: "left", editable:true, edittype:'text'},	// campo editable
			
				{ name: "apellidoPaterno", sortable: true, 
			width: 150, align: "left", editable:true},		// campo editable
    													
    			{ name: "apellidoMaterno", sortable: true,  width: 150, align: "left"},
    			
    			{ name: "edad", sortable: true,  
    				width: 65, align: "left", editable:true,
    				editrules:{edithidden:true, required:true, number:true,
    				minValue:18, maxValue:150}
    			},
	            
    			{ name: "flagEstatus", sortable: true,
			width: 110, align: "left", editable:true,
			edittype:"select", editoptions: {value:"1:OK;2:No"}},		// campo editable, select
	            										
	            				
    			{ name: "descripcionAdministradora", sortable: true,  width: 145, align: "left"}            
            ],
            pager: '#pagerEdit',
            
            /* eventos */
           /* 
        	beforeEditCell: function (rowid, cellname, value, iRow, iCol) {
            	alert(rowid);
            	
            },
            
            onSelectCell: function (rowid, cellname, value, iRow, iCol) {
            	alert(rowid);
            	
            },
           
            ondblClickRow: function (id) {
            	alert(id);
            },
           */
            // Tamaño de grid
           	width: 935,
            height: 350,
 
            viewrecords: true,
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
        
            caption: "jqGrid Editable",	// titulo           
            gridview: false,
            ondblClickRow: function(rowid, iRow, iCol, e) {
                
            		jQuery("#jqTableEdit").editGridRow( rowid, {
            			recreateForm: true      			
            			
            		});
            		
            		
            	},	
	        });
            
    }
	
	
	function hideShowCampo(campo, formId) {
    	if (oculto) {
    		$("#tr_edad", formId).show();
    		oculto = !oculto; 
    	} else {
    		$("#tr_edad", formId).hide();
    		oculto = !oculto;
    	}
    }
	
	
	function editaFila(gridId, rowid) {
		$("#" + gridId).editGridRow( rowid, properties );
	}
	
