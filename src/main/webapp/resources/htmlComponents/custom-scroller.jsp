<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
			
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- para navegador inferior a  IE9 -->
	<!--[if lt IE 9]>
		<script src="<c:url value='/resources/bootstrap/ieOld/html5shiv.js'/>"></script>
		<script src="<c:url value='/resources/bootstrap/ieOld/respond.js/1.4.2/respond.src.js'/>"></script>
	<![endif]-->
	
	<!-- ------------------------ estilos -------------------------------- -->
		<!-- bootstrap -->		
		<link id="comun-template"  href="<c:url value='/resources/bootstrap/core/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css" />
		<link  href="<c:url value='/resources/bootstrap/core/css/styles.css'/>" rel="stylesheet" type="text/css" />
		<link  href="<c:url value='/resources/jquery/core/jquery-ui-1.11.4.custom/jquery-ui.css'/>" rel="stylesheet" />
				
		<!-- custom style procesar -->
		<link  href="<c:url value='/resources/css/customProcesar.css'/>" rel="stylesheet" type="text/css" />
		
		<!-- nano scroller -->
		 
		<link  href="<c:url value='/resources/jquery/plugins/nanoscroller/nanoscroller.css'/>" rel="stylesheet" type="text/css" />
		<link  href="<c:url value='/resources/jquery/plugins/nanoscroller/main.css'/>" rel="stylesheet" type="text/css" />
		<!-- ------------------------ scripts -------------------------------- -->
		
		<!-- jquery -->
		<script type="text/javascript" src="<c:url value='/resources/datepicker/js/jquery-2.1.1.min.js'/>"></script>		 
		<script type="text/javascript" src="<c:url value='/resources/jquery/core/jquery-ui-1.11.4.custom/jquery-ui.min.js'/>"></script>
		
		<!-- nano scroller -->
		<script type="text/javascript" src="<c:url value='/resources/jquery/plugins/nanoscroller/jquery.nanoscroller.js'/>"></script>
		
		<script type="text/javascript">
			
			$(document).ready(function()
			{	
				
				 //$('#scrollbar1').tinyscrollbar({trackSize:0.5, wheelSpeed: 90});
				 
				$('.nano').nanoScroller();
				 
							
			});		
		</script>
		
		
		
	<title>Bootstrap</title>
</head>
<body>




<!-- Main -->
	
	
			<div class="container">
			
			<div class="row">
			
				<div class="col-sm-4"></div>
				<div class="col-sm-4">

			<div class="nano">
      			<div class="nano-content">
    		<p>
    			Advanced methods
			scroll
			
			To scroll at the top:
			
			$(".nano").nanoScroller({ scroll: 'top' });
			
			To scroll at the bottom:
			
			$(".nano").nanoScroller({ scroll: 'bottom' });
			
			To scroll at the top with an offset value:
			
			$(".nano").nanoScroller({ scrollTop: value });
			
			To scroll at the bottom with an offset value:
			
			$(".nano").nanoScroller({ scrollBottom: value });
			
			To scroll to an element:
			
			$(".nano").nanoScroller({ scrollTo: $('#a_node') });
			
			stop:
			
			To stop the operation. This option will tell the plugin to disable all event bindings and hide the gadget scrollbar from the UI.
			
			$(".nano").nanoScroller({ stop: true });
			
			destroy:
			
			Destroys nanoScroller and restores browser's native scrollbar.
			
			$(".nano").nanoScroller({ destroy: true });
			
			flash:
			
			To flash the scrollbar gadget for an amount of time defined in plugin settings (defaults to 1,5s). Useful if you want to show the user (e.g. on pageload) that there is more content waiting for him.
			
			$(".nano").nanoScroller({ flash: true });
			
			nanoScroller();
			
			Refresh the scrollbar. This simply re-calculates the position and height of the scrollbar gadget.
			
			$(".nano").nanoScroller();
			
			Custom events
			'scrollend'
			
			A custom 'scrollend' event is triggered on the element every time the user has scrolled to the end of the content element (does not get triggered more than once when user tries to scroll down and has already reached the end of scrollable content).
			</p>
			
            </div>
            </div>
            </div>
            
            <div class="col-sm-4"></div>
            </div>
            
           </div>
        
   

</body>
</html>
