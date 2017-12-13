//Función para generar Password
function generaPassword(){
	 "use strict";
	    var options = {};
	    options.ui = {
	        container: "#pwd-container",
	        showVerdictsInsideProgressBar: true,
	        viewports: {
	            progress: ".progress_meter"
	        },
	        showErrors: true
	    };
	    $('#password').pwstrength(options);
}