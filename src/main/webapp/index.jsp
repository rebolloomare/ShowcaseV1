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
		<link  href="<c:url value='/resources/jquery/core/jquery-ui-1.11.4.custom/jquery-ui.css'/>" rel="stylesheet" type="text/css" />
		
		<!-- jqGrid -->
		<link   href="<c:url value='/resources/jquery/plugins/jqGrid/css/ui.jqgrid.css'/>" rel="stylesheet" type="text/css" />
		<link  href="<c:url value='/resources/jquery/plugins/jqGrid/css/ui.jqgrid-bootstarp.css'/>" rel="stylesheet" type="text/css" />
				
		<!-- custom style procesar -->
		<link id="customStyle" href="<c:url value='/resources/css/customProcesar.css'/>" rel="stylesheet" type="text/css" />
		
		<!-- custom scroller -->
		<link  href="<c:url value='/resources/jquery/plugins/customScroller/jquery.mCustomScrollbar.css'/>" rel="stylesheet" type="text/css" />
		
		<!--  css signature -->
		<link href="<c:url value='/resources/css/signature/jquery.signature.css'/>" rel="stylesheet" type="text/css" />
		
		<!--  graficas -->
		<link href="<c:url value='/resources/css/graficas/graficas.css'/>" rel="stylesheet" type="text/css" />
		
		<!-- Captcha -->
		<link href="<c:url value='/resources/css/captcha/jquery.realperson.css'/>" rel="stylesheet" type="text/css" />
		
		<!-- File Input -->
		<link href="<c:url value='/resources/css/fileInput/jasny-bootstrap.css'/>" rel="stylesheet" type="text/css" />

		<!-- pickList -->
		<link href="<c:url value='/resources/css/picklist/pickList.css'/>" rel="stylesheet" type="text/css" />

		<!-- steps -->
		<link href="<c:url value='/resources/css/steps/jquery.steps.css'/>" rel="stylesheet" type="text/css" />
		
		<!-- ribbon -->
		<link href="<c:url value='/resources/css/ribbon/soft_button.css'/>" rel="stylesheet" type="text/css" />
		
		<!-- font -->
		<link href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css" rel="stylesheet">

	
	<!-- ------------------------ scripts -------------------------------- -->		
		<!-- jquery -->
		<script type="text/javascript" src="<c:url value='/resources/jquery/core/js/jquery.js'/>"></script>				
		<!-- 
		<script type="text/javascript" src="<c:url value='/resources/datepicker/js/jquery-2.1.1.min.js'/>"></script> 
		<script type="text/javascript" src="<c:url value='/resources/jquery/core/js/jquery.min.js'/>"></script>-->
		<script type="text/javascript" src="<c:url value='/resources/jquery/core/jquery-ui-1.11.4.custom/jquery-ui.min.js'/>"></script>
		
		<!-- plugin de validacion -->
		<script type="text/javascript" src="<c:url value='/resources/jquery/plugins/JQValidation/jquery.validate.min.js'/>"></script>

		<!-- plugin de pickList -->
		<script type="text/javascript" src="<c:url value='resources/jquery/plugins/picklist/pickList.js'/>"></script>

		<!-- plugin de steps -->
		<script type="text/javascript" src="<c:url value='resources/jquery/plugins/steps/jquery.steps.js'/>"></script>
		
		<!-- Barcode -->
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript" src="<c:url value='/resources/jquery/plugins/barcode/jquery-barcode.js'/>"></script>
				
		<!-- bootstrap -->
		<script type="text/javascript" src="<c:url value='/resources/bootstrap/core/js/scripts.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/resources/bootstrap/core/js/bootstrap.min.js'/>"></script>
		
		<!-- jqGrid -->		
		<script type="text/javascript" src="<c:url value='/resources/jquery/plugins/jqGrid/jquery.jqGrid.min.js'/>"></script>		
		<script type="text/javascript" src="<c:url value='/resources/jquery/plugins/jqGrid/i18n/grid.locale-es.js'/>"></script>	
		<script type="text/javascript" src="<c:url value='/resources/jquery/plugins/jqGrid/i18n/grid.locale-en.js'/>"></script>
	
		<!-- custom JS -->
		<script type="text/javascript" src="<c:url value='/resources/util/js/showcaseUtilities.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/resources/util/js/jqGridGeneraTabla.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/resources/util/js/jqGridEditCell.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/resources/util/js/jqGridEditInline.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/resources/util/js/jqGridEditForm.js'/>"></script>
		
		<!-- signature JS 
		<script type='text/javascript' src="<c:url value='/resources/util/js/signature/jquery.signature.js'/>"></script>-->		
		<script type="text/javascript" src="<c:url value='/resources/util/js/configPluginBusqueda.js'/>"></script>	
		<!-- date time picker 
		<link  href="resources/datepicker/css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />-->
		<script type="text/javascript" src="<c:url value='/resources/jquery/plugins/datepicker/js/moment-with-locales.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/resources//jquery/plugins/datepicker/js/bootstrap-datetimepicker.js'/>"></script>		
		<!-- custom scroller -->
		<script type="text/javascript" src="<c:url value='/resources/jquery/plugins/customScroller/jquery.mCustomScrollbar.concat.min.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/resources/util/js/configCustomScrollBar.js'/>"></script>
		<!-- list.js -->
		<script type="text/javascript" src="<c:url value='/resources/jquery/plugins/listJs/list.js'/>"></script>
		<!-- Graficas -->
		<script type="text/javascript" src="<c:url value='/resources/util/js/graficas/jquery.canvasjs.min.js'/>"></script>
		<!-- Captcha -->
		<script type="text/javascript" src="<c:url value='/resources/jquery/plugins/captcha/jquery.plugin.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/resources/jquery/plugins/captcha/jquery.realperson.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/resources/util/js/captcha/jqCaptcha.js'/>"></script>
		<!-- File Input -->
		<script type="text/javascript" src="<c:url value='/resources/jquery/plugins/fileInput/jasny-bootstrap.js'/>"></script>
		<!-- Password Strength-->
		<script type="text/javascript" src="<c:url value='/resources/jquery/plugins/passwordStrength/pwstrength-bootstrap.js'/>"></script>
		<script type="text/javascript" src="<c:url value='/resources/util/js/passwordStrength/jqPasswordStrength.js'/>"></script>
		<!-- Slider -->
		<script type="text/javascript" src="<c:url value='/resources/util/js/slider/jqSlider.js'/>"></script>
		<!-- Spinner -->
		<script type="text/javascript" src="<c:url value='/resources/util/js/spinner/jqSpinner.js'/>"></script>
		<!-- Popover -->
		<script type="text/javascript" src="<c:url value='/resources/util/js/popover/jqPopover.js'/>"></script>
		<!-- Tooltip -->
		<script type="text/javascript" src="<c:url value='/resources/util/js/tooltip/jqTooltip.js'/>"></script>

		<!-- Picklist -->
		<script type="text/javascript" src="<c:url value='/resources/util/js/picklist/jqPickList.js'/>"></script>
		<!-- Steps -->
		<script type="text/javascript" src="<c:url value='/resources/util/js/steps/jqSteps.js'/>"></script>
		<!-- plugin de mascara -->
		<script type="text/javascript" src="<c:url value='/resources/jquery/plugins/mask/jquery.mask.js'/>"></script>

		
	<title>Showcase Bootstrap</title>
</head>
<body>


<!-- Main -->
	
	<div class="container-fluid">
		
		<div  class="row">
			<div class="col-xs-2 col-sm-2 azul-medio logo_procesar"> <!-- azul-medio logo_procesar -->				 
				<div class="row">
					<div class="col-xs-2 col-sm-2"></div>
						 <div class="col-xs-8 col-sm-8"> <!--class="img-responsive"   width="180" -->						 						
							<p class="display_logo"><img class="img-responsive"  alt="Logo ProceSAR mr." src="<c:url value='resources/images/logo_blanco.png'/>"></p>					
						</div>	
					<div class="col-xs-2 col-sm-2"></div>
				</div>	

						 
			</div>
		
			
			<div  id="barraSuperior" class="col-xs-10 col-sm-10 gris-claro">
				<div class="row">					
					<div class="col-xs-5 col-sm-5">
						
						<div class="row">
							<div class="col-xs-1 col-sm-1"></div>	
							<div class="col-xs-10 col-sm-10">
		      					<img  class="img-responsive" alt="Logo Showcase Bootstrap" src="<c:url value='resources/images/bootstrapLogo.png'/>">
		      				</div>
		      				<div class="col-xs-1 col-sm-1"></div>
		      			</div>
					</div>
					
					<!-- <div class="col-xs-2 col-sm-2"></div> -->
					
					<div class="col-xs-7 col-sm-7">
						<div class="row">
							<div class="texto_gerencia col-xs-12 col-sm-12">
			        			<p><b>Gerencia de</b></p>
			        		</div>
			        	</div>
			        	
			        	<div class="row">
							<div class="texto_gerencia2 col-xs-12 col-sm-12">
			        			<p><b>Arquitectura de Software</b></p>
			        		</div>
			        	</div>			        	
			        </div>
			        
			        
			    </div>      	
			</div> <!-- fin de barra superior -->
			
		</div>
	</div>
	
	
	
	<div class="container-fluid">
	
	
		
    <div class="row">
    
    	<!-- menu lateral izquierda  -->
        <div class="col-xs-2 col-sm-2 azul-fuerte menu_izquierda">
    		<br>    	
			<p class="home_derecha"><a href="<c:url value='/'/>" class="btn btn-primary btn-xs">inicio</a></p>
        	<br>
        	<br>
           	
           <!-- campo de busqueda -->
        		 
 			<table> 
				<tr> <!-- icono de busqueda -->  
					<td><p class="texto_blanco"><span class="glyphicon glyphicon-search"></span>&nbsp;</td>
					<td><input id="inputBusqueda" class="form-control search" placeholder="Busqueda" ></td>
				</tr>
			</table>            
            
           <div id="menuScroll" class="mCustomScrollbar" data-mcs-theme="dark">	<!-- custom scroller -->
    		<div class=".contentMenu">
    			
    			<!-- inicio de list.js -->
        		<div id="inputs-list">
            	<br>  
				<div id="inputsHeader">
					<br>
					<a href="#"><strong>Componentes Bootstrap</strong></a>
				</div>
	            <ul id="listInputs" class="nav nav-stacked">
	            	<li class="nav-header " ><a href="#" data-toggle="collapse" data-target="#inputMenu">Campos de Entrada<i class="glyphicon glyphicon-chevron-right"></i></a>
	            		<div id="inputs-list">
	                    <ul  class="nav nav-stacked ident1 collapse list" id="inputMenu">
	                    	<li class="nav-header"><p class="menu"><a href="#" data-toggle="collapse" data-target="#radiosMenu">Botones de radio<i class="glyphicon glyphicon-chevron-right"></i></a></p>
		                        <ul class="nav nav-stacked collapse ident2" id="radiosMenu">
			                        <li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/radiobuttons.html', 'radiobuttons', 'no_scroll70', false)" href="#">Botones de radio</a></p></li>
			                        <li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/radiobuttonsInline.html', 'radiobuttons', 'no_scroll70', false)" href="#">Botones de radio L&iacute;neales</a></p></li>
		                        </ul>
	                        </li>
	                        <li class="nav-header"><p class="menu"> <a href="#" data-toggle="collapse" data-target="#checksMenu">Checkbox<i class="glyphicon glyphicon-chevron-right"></i></a></p>
		                        <ul class="nav nav-stacked collapse ident2" id="checksMenu">
			                        <li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/checkboxes.html', 'checkboxes', 'no_scroll70', false)" href="#">Checkbox</a></p></li>
			                        <li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/checkboxesInline.html', 'checkboxes', 'no_scroll70', false)" href="#">Checkbox L&iacute;neal</a></p></li>
		                        </ul>
	                        </li>
	                        <li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/datepicker.html', 'datepicker', 'scroll70', false)" href="#">Datetimepicker</a></p></li>

							
	                    	<li class="nav-header"><p class="menu"><a href="#" data-toggle="collapse" data-target="#listasMenu">Listas<i class="glyphicon glyphicon-chevron-right"></i></a></p>
		                        <ul class="nav nav-stacked collapse ident2" id="listasMenu">
									<li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/selectList.html', 'selectList', 'no_scroll70', false)" href="#">Listas de selecci&oacute;n</a></p></li>
									<li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/picklist.html', 'picklist', 'all_scroll70', true, true, 'resources/util/js/picklist/jqPickList.js');" href="#">Listas intercambiables</a></p></li>
		                        </ul>
	                        </li>
	                        <!-- Mascara -->
	            			<li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/mask.html', 'mask', 'all_scroll70', true, false);" href="#">Mascara</a></p></li>
	            			<!-- Mascara -->
	                        <!-- Slider -->
	            			<li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/slider.html', 'slider', 'all_scroll70', true, true, 'resources/util/js/slider/jqSlider.js');" href="#">Slider</a></p></li>
	            			<!-- Spinner -->
	            			<li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/spinner.html', 'spinner', 'all_scroll70', true, true, 'resources/util/js/spinner/jqSpinner.js');" href="#">Spinner</a></p></li>
	                        <li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/inputs.html', 'inputs', 'scroll70', false)" href="#">Texto</a></p></li>
	                        <li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/textarea.html', 'textarea', 'no_scroll70', false)" href="#">Textarea</a></p></li>                         
	                    </ul>
	                    </div>
	                </li>
                </ul>
                </div> <!-- fin de listjs -->
                <div id="bootstrap-list">                
	            <ul class="nav nav-stacked list">					
					<!-- Progress Bar -->
	            	<li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/progressBar.html', 'progressBar', 'no_scroll70', false)" href="#">Barras de Progreso</a></p></li>							
	            	<li class="nav-header"><p class="menu"> <a href="#" data-toggle="collapse" data-target="#buttonsMenu">Botones<i class="glyphicon glyphicon-chevron-right"></i></a></p>
	                    <ul class="nav nav-stacked collapse ident1" id="buttonsMenu">
			            	<li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/buttons.html', 'buttons', 'no_scroll70', false)" href="#">Botones</a></p></li>
							<li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/buttonsGroup.html', 'buttonsGroup', 'scroll70', false)" href="#">Botones agrupados</a></p></li>
						</ul>
					</li>
	                <li class="nav-header"><p class="menu"> <a href="#" data-toggle="collapse" data-target="#formMenu">Formularios<i class="glyphicon glyphicon-chevron-right"></i></a></p>
	                    <ul class="nav nav-stacked collapse ident1" id="formMenu">
							<li><p class="opcion"> <a id="pasos" onclick="cargaComponente('resources/htmlComponents/steps.html', 'steps', 'all_scroll70', true, true, 'resources/util/js/steps/jqSteps.js' );" href="#">Asistente paso a paso</a></p></li>
	                    	<li><p class="opcion"> <a id="horizontal" onclick="cargaComponente('resources/htmlComponents/formHorizontal.html', 'frmHorizontal', 'no_scroll70', false)" href="#">Horizontal</a></p></li>
	                    	<li><p class="opcion"> <a id="inline" onclick="cargaComponente('resources/htmlComponents/formInline.html', 'frmLinea', 'no_scroll70', false)" href="#">L&iacute;neal</a></p></li>
	                        <li><p class="opcion"> <a id="vertical" onclick="cargaComponente('resources/htmlComponents/formVertical.html', 'frmVertical', 'no_scroll70', false)" href="#">Vertical (default)</a></p></li>
	                    </ul>
	                </li>
	                <!-- Iconos --> 
	                <li class="nav-header"><p class="menu"> <a href="#" data-toggle="collapse" data-target="#iconosMenu">Iconos<i class="glyphicon glyphicon-chevron-right"></i></a></p>
	                	<ul class="nav nav-stacked collapse ident1" id="iconosMenu">  
		            		<li><p class="opcion"> <a id="font" onclick="cargaComponente('resources/htmlComponents/font.html', 'font', 'all_scroll70', false);" href="#">Font Awesome</a></p></li>
		            		<li><p class="opcion"> <a id="office" onclick="cargaComponente('resources/htmlComponents/office.html', 'office', 'all_scroll70', false);" href="#">Office 2010</a></p></li>
		            	</ul>	
		            </li>   
		            
					<li class="nav-header"><p class="menu"> <a href="#" data-toggle="collapse" data-target="#imagesMenu">Im&aacute;genes<i class="glyphicon glyphicon-chevron-right"></i></a></p>
	                   <ul class="nav nav-stacked collapse ident1" id="imagesMenu">
						<li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/carousel.html', 'carousel', 'scroll70', false);" href="#">Carrusel</a></p></li>
	                    <li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/images.html', 'images', 'scroll70', false)" href="#"> Im&aacute;genes</a></p></li>
	                    <li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/imageGallery.html', 'imageGallery', 'no_scroll70', false)" href="#"> Galer&iacute;a de Im&aacute;genes</a></p></li>
	                    <li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/imageGalleryModal.html', 'imageGallery', 'scroll70', false)" href="#"> Galer&iacute;a de Im&aacute;genes con Modal</a></p></li>
	                   </ul>
	               </li>
	               <li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/modal.html', 'modal', 'no_scroll70', false)" href="#">Modal</a></p></li>
	               <li class="nav-header"><p class="menu"> <a href="#" data-toggle="collapse" data-target="#navegaMenu">Navegaci&oacute;n <i class="glyphicon glyphicon-chevron-right"></i></a></p>
						<ul class="nav nav-stacked collapse ident1" id="navegaMenu">
							<!-- Barras de navegación -->
							<li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/navigation.html', 'navigation', 'no_scroll70', false)" href="#">Barras de Navegaci&oacute;n</a></p></li>
							<!-- Tabs -->
							<li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/tabs.html', 'tabs', 'scroll70', false)" href="#">Tabs</a></p></li>
						</ul>
					</li>				
					<li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/panels.html', 'panels', 'scroll70', false)" href="#">Paneles</a></p></li>
					<li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/grids.html', 'grids', 'all_scroll70', false)" href="#">Sistema Grid</a></p></li>
					<li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/tables.html', 'tables', 'scroll70', false)" href="#">Tablas</a></p></li>
					<li class="nav-header"><p class="menu"> <a href="#" data-toggle="collapse" data-target="#tooltipsMenu">Tooltips <i class="glyphicon glyphicon-chevron-right"></i></a></p>
						<ul class="nav nav-stacked collapse ident1" id="tooltipsMenu">
							<!-- Popover -->
							<li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/popover.html', 'popover', 'all_scroll70', true, true, 'resources/util/js/popover/jqPopover.js');" href="#">Popover</a></p></li>
							<!-- Tooltip -->
							<li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/tooltip.html', 'tooltip', 'all_scroll70', true, true, 'resources/util/js/tooltip/jqTooltip.js');" href="#">Tooltip</a></p></li>
						</ul>
					</li>
<!-- 	            	<li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/alerts.html', 'alerts', 'no_scroll70', false)" href="#">Alerts</a></p></li>							 -->
<!-- 					<li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/graficas.html', 'graficas', 'no_scroll70', true)" href="#">Gr&aacute;ficas</a></p></li> -->	
<!-- 					<li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/labelsBadges.html', 'labelsBadges', 'no_scroll70', true)" href="#">Labels & Badges</a></p></li> -->
<!-- 					<li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/collapse.html', 'collapse', 'no_scroll70', true)" href="#">Collapse</a></p></li> -->
<!--  					<li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/picklist.html', 'picklist', 'no_scroll70', true)" href="#">PickList</a></p></li> -->				
				</ul>
				</div> <!-- fin de listjs -->
				
				<div id="advancedComponentsHeader">
					<hr>
	            	<a href="#"><strong>Componentes Avanzados</strong></a>
	            </div>	            
	            <div id="advancedComponents-list">	<!-- listjs -->
				   <ul class="nav nav-stacked list">
				    <!-- Captcha -->
	            	<li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/captcha.html', 'captcha', 'all_scroll70', true, true, 'resources/util/js/captcha/jqCaptcha.js');" href="#">Captcha</a></p></li>
	            	<!-- File Input -->
	            	<li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/fileInput.html', 'fileInput', 'all_scroll70', false);" href="#">Carga de Archivo</a></p></li>
	            	<!-- Barcode -->
	            	<li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/barcode.html', 'barcode', 'no_scroll70', true);" href="#">C&oacute;digo de barras</a></p></li>
	            	<!-- Graficas -->
					<li class="nav-header"><p class="menu"> <a href="#" data-toggle="collapse" data-target="#graficasMenu">Gr&aacute;ficas <i class="glyphicon glyphicon-chevron-right"></i></a></p>
		                  <ul class="nav nav-stacked collapse ident1" id="graficasMenu">
		                     <!-- Areas -->
		                     <li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/graAreas.html', 'areas', 'no_scroll70', true);" href="#">&Aacutereas</a></p></li>
		                     <!-- Barras -->
		                     <li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/graBarras.html', 'barras', 'no_scroll70', true);" href="#">Barras</a></p></li>
		                     <!-- Circular -->
		                     <li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/graCircular.html', 'circular', 'no_scroll70', true);" href="#">Circular</a></p></li>
		                     <!-- Columnas -->
		                     <li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/graColumnas.html', 'columnas', 'no_scroll70', true);" href="#">Columnas</a></p></li>
		                     <!-- Lineas -->
		                     <li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/graLineas.html', 'lineas', 'no_scroll70', true);" href="#">L&iacuteneas</a></p></li>
		                  </ul>
		               </li>	 
				    <!-- Password Strength -->
	            	<li><p class="opcion"> <a onclick="cargaComponente('resources/htmlComponents/passwordStrength.html', 'passwordStrength', 'all_scroll70', true, true, 'resources/util/js/passwordStrength/jqPasswordStrength.js');" href="#">Seguridad de Contraseña</a></p></li>

				   </ul>
				</div> <!-- fin de listjs -->
				
				<div id="jqgridHeader">
					<hr>
	            	<a href="#"><strong>JQGrid</strong></a>
	            </div>
						<div id="jqgrid-list" class="st">
							<!-- listjs -->
							<ul class="nav nav-stacked list ident1">
								<li class="nav-header"><p class="menu">
										<a href="#" data-toggle="collapse" data-target="#gridsMenu">jqGrids<i
											class="glyphicon glyphicon-chevron-right"></i></a>
									</p>
									<ul class="nav nav-stacked collapse ident2" id="gridsMenu">
										<li><p class="opcion">
												<a
													onclick="cargaComponente('resources/htmlComponents/jqGrid.html', 'jqGrid', 'all_scroll70', true, true, 'resources/util/js/jqGridGeneraTabla.js');"
													href="#">Grid Simple</a>
											</p></li>
										<li><p class="opcion">
												<a
													onclick="cargaComponente('resources/htmlComponents/jqGridEditCell.html', 'jqGridEdit', 'all_scroll70', true, true, 'resources/util/js/jqGridEditCell.js');"
													href="#">Grid Editable (Celda)</a>
											</p></li>
										<li><p class="opcion">
												<a
													onclick="cargaComponente('resources/htmlComponents/jqGridEditInline.html', 'jqGridEdit', 'all_scroll70', true, true, 'resources/util/js/jqGridEditInline.js');"
													href="#">Grid Editable (Fila)</a>
											</p></li>
										<li><p class="opcion">
												<a
													onclick="cargaComponente('resources/htmlComponents/jqGridEditForm.html', 'jqGridEdit', 'all_scroll70', true, true, 'resources/util/js/jqGridEditForm.js');"
													href="#">Grid Editable (Forma)</a>
											</p></li>
									</ul></li>
							</ul>
						</div>
						<!-- listjs -->
             	 
             	 <div id="validationHeader">      	
	             	<hr>   	
	         		<a href="#"><strong>Plugin de validaci&oacute;n de jQuery</strong></a>
	          	</div>
	          		
    			<div id="validation-list"> <!-- listjs -->            
	           	<ul class="nav nav-stacked list ident1">
	           		<li><p class="opcion"><a onclick="cargaComponente('resources/htmlComponents/validationPlugin.html', 'validation', 'no_scroll70', true)" href="#" > Plugin de validaci&oacute;n</a></p></li>   		               
	            </ul> 
           		</div>					<!-- listjs -->
            
            </div>
            </div>          
            
        </div>
        
        <!-- /col-3 -->
        <div class="col-xs-10 col-sm-10 cuerpo-central">
        
        	
            <div id="contenido" class="row"> <!-- contenido -->
       		</div>	<!-- contenido -->
        	
        	
        	<div class="row">
				<div id="footer" class="panel-footer pie_pagina"><b>ProceSAR 2016 <br>ProceSAR 2016 - Gerencia de Arquitectura de Software</b></div>
			</div>       	
        
    	</div>
    
	</div>	
	
</div>
	
</body>
</html>