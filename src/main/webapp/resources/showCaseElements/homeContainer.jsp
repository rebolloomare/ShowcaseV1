<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
	
	<div class="row">
		<div class="col-xs-12 col-sm-12 padding_70"></div>
	</div>
	
	<div class="row">
		<div class="col-xs-5 col-sm-5">
			<div class="row">
				<div class="col-xs-2 col-sm-2"></div>
				<div class="col-xs-7 col-sm-7 text-home">	
					
					<h2>Librer&iacute;as</h2>
					<p>Bootstrap es un framework libre para dise&ntilde;o de sitios y
						aplicaciones web. Contiene plantillas de dise&ntilde;o con tipograf&iacute;a,
						 formularios botones men&uacute;s de navegaci&oacute;n y otros elementos
						 de dise&ntilde;o basado en HTML y CSS.</p>
						 
					<p>Las extensiones de JavaScript necesarias las puedes descargar a
						continuaci&oacute;n</p>
					<br>
					<p><a href="<c:url value='/resources/zip/librerias.zip'/>" class="btn btn-showcase btn-block"  download="librerias.zip" >Descargar Librer&iacute;as</a></p>
				</div>
				<div class="col-xs-3 col-sm-3">
					<div class="row">
						<div class="col-xs-5 col-sm-5"></div>
						<div class="col-xs-2 col-sm-2">
							<div class="divisor_home"></div>
						</div>
						<div class="col-xs-5 col-sm-5"></div>
					</div>
				</div>
								
			</div>
		</div>
		
		<div class="col-xs-7 col-sm-7">
			
			<div class="row">
							
				<div class="col-xs-4 col-sm-4 button_square_container1">				
					<a href="#" ><img  alt="MANUAL" data-toggle="modal" data-target="#modalManualPDF" src="resources/images/imgShowCaseMenu-01.png"></a>
					<!-- 		
					<button id="buttonTutorial" type="button" data-toggle="modal" data-target="#modalManualPDF" ></button> -->
				</div>
				<div class="col-xs-4 col-sm-4 button_square_container1">
					<a href="#" ><img  data-toggle="modal" data-target="#modalComponentes" alt="COMPONENTES" src="resources/images/imgShowCaseMenu-02.png"></a>
					<!-- 
					<button id="buttonComponentes" type="button" >COMPO <br> NENTES</button> -->
				</div>
				<div class="col-xs-4 col-sm-4 button_square_container1">
					<a href="#" ><img data-toggle="modal" data-target="#modalTemas" alt="TEMAS" src="resources/images/imgShowCaseMenu-03.png"></a>
					<!--  
					<button id="buttonTemas" type="button" >TEMAS</button>-->
				</div>
			</div>
			
			<div class="row button_square_container">
				
				<div class="col-xs-4 col-sm-4 button_square_container2">
					<a href="#" ><img  data-toggle="modal" data-target="#modalMobile" alt="MOBILE" src="resources/images/imgShowCaseMenu-04.png"></a>
					<!-- 
					<button id="buttonMobile" type="button" >MOBILE</button> -->
				</div>
				<div class="col-xs-4 col-sm-4 button_square_container2">
					<a href="#" ><img  data-toggle="modal" data-target="#modalProductividad" alt="PRODUCTIVIDAD" src="resources/images/imgShowCaseMenu-05.png"></a>
					<!-- 
					<button id="buttonProductividad" type="button" >PRODUC <br> TIVIDAD</button> -->
				</div>
				<div class="col-xs-4 col-sm-4 button_square_container2">
					<a href="#" ><img  alt="ACERCA DEL SHOWCASE" data-toggle="modal" data-target="#modalAcercaDe" src="resources/images/imgShowCaseMenu-06.png"></a>
					<!-- 
					<button id="buttonAcerca" type="button" >ACERCA <br>DEL <br>SHOWCASE</button> -->
				</div>
			</div>
		</div>
		
	</div>
	
	
	<!-- modales -->
	
	
	<div id="modalManualPDF" class="modal fade" role="dialog">		<!-- inicia Modal manual pdf -->
		  
	  <div class="modal-dialog modal-lg">	<!-- caja de dialogo -->
	
	    <!-- content-->
	    <div class="modal-content">
	      
	      <!-- header -->
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">×</button>
	        <img class="img-responsive"  alt="Logo ProceSAR mr." src="<c:url value='resources/images/bannerManualUso.png'/>">
	      </div>
	      
	      <!-- body -->
	      <div class="modal-body">
	      
	      	<object  data="<c:url value='/resources/pdf/ManualShowcasePROCESAR.pdf'/>" type="application/pdf" width="100%" height="100%"></object>
	        
	      </div>
	      
	      <!-- footer -->
	      <div class="modal-footer">
	      	<p><a href="<c:url value='/resources/pdf/ManualShowcasePROCESAR.pdf'/>" class="btn btn-primary" download="ManualShowcasePROCESAR.pdf" target="_blank">Descargar</a></p>	        
	      </div>
	    </div>
	
	  </div>					<!-- fin caja de dialogo -->
	  <script type="text/javascript">
	  	$('#modalManualPDF .modal-body').ready(function() {
			var height = $(window).height();
			
	  		console.log('modal loaded: ' + height);
	  		$('#modalManualPDF .modal-body').css('height', (height * 0.70) + 'px');
  	
  		});	  	
	  </script>
	  
	</div>				<!-- fin de modal -->
	
	
	
	
	<div id="modalComponentes" class="modal fade" role="dialog">		<!-- inicia Modal Componentes -->
		  
	  <div class="modal-dialog modal-lg">	<!-- caja de dialogo -->
	
	    <!-- content-->
	    <div class="modal-content">
	      
	      <!-- header -->
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">×</button>
	        <img class="img-responsive"  alt="Logo ProceSAR mr." src="<c:url value='resources/images/bannerComponentes.png'/>">
	      </div>
	      
	      <!-- body -->
	      <div class="modal-body">
				
				<H4><b>Informaci&oacute;n al alcance de todos.</b></H4>
	      		
	      		<p>La informaci&oacute;n sobre los componentes se encuentra organizada en tres 
	      		    pestañas como se muestra a continuación:</p>
	      		    
				<div class="row">
	      		<div class="col-xs-12 col-sm-12">
	      			<img class="img-responsive"  alt="Logo ProceSAR mr." src="<c:url value='resources/images/componentes.png'/>">
	      		</div>
	      	</div>
      		
	      </div>
	      
	      <!-- footer -->
	      <div class="modal-footer">
	      		<p>ProceSAR 2016 - Gerencia de Arquitectura de Software</p>        
	      </div>
	    </div>
	
	  </div>					<!-- fin caja de dialogo -->	 
	  
	</div>				<!-- fin de modal -->
	
	
	
	<div id="modalTemas" class="modal fade" role="dialog">		<!-- inicia Modal Temas -->
		  
	  <div class="modal-dialog modal-lg">	<!-- caja de dialogo -->
	
	    <!-- content-->
	    <div class="modal-content">
	      
	      <!-- header -->
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">×</button>
	        <img class="img-responsive"  alt="Logo ProceSAR mr." src="<c:url value='resources/images/bannerTemas.png'/>">
	      </div>
	      
	      <!-- body -->
	      <div class="modal-body">
	      
      		<div class="row">
      			<div class="col-xs-2 col-sm-2"></div>
      			<div class="col-xs-8 col-sm-8">
      			<H4><b>Un estilo para cada aplicaci&oacute;n.</b></H4>
	      		
	      		<p>Las hojas de estilo y los widgets de Bootstrap est&aacute;n disponibles en varios temas, 
	      		    siendo estos adaptables de acuerdo a la necesidad de la aplicaci&oacute;n</p>
		      		<!-- lista de seleccion -->
					<div class="form-group">
						<label for="sel1">Selecccione un Tema:</label> 
						<select class="form-control" id="selTema" onChange="changeStyle(this.value);">
							<option value="0">ProceSAR</option>
							<option value="1">Alterno</option>
						</select>
					</div>
					<!-- lista de seleccion -->
				</div>
				
				<div class="col-xs-2 col-sm-2"></div>
			</div>
	      </div>
	      
	      <!-- footer -->
	      <div class="modal-footer">
	      		<p>ProceSAR 2016 - Gerencia de Arquitectura de Software</p>        
	      </div>
	    </div>
	
	  </div>					<!-- fin caja de dialogo -->	 
	  
	</div>				<!-- fin de modal -->
	
	
	
	<div id="modalMobile" class="modal fade" role="dialog">		<!-- inicia Modal Mobile -->
		  
	  <div class="modal-dialog modal-lg">	<!-- caja de dialogo -->
	
	    <!-- content-->
	    <div class="modal-content">
	      
	      <!-- header -->
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">×</button>
	        <img class="img-responsive"  alt="Logo ProceSAR mr." src="<c:url value='resources/images/bannerMobile.png'/>">
	      </div>
	      
	      <!-- body -->
	      <div class="modal-body">
	      		<H4><b>Aplicaciones a la medida de tu dispositivo</b></H4>
	      		
	      		<p>El Framework Bootstrap y los plugins de jQuery est&aacute;n pensados 
	      		    para trabajar en la mayor&iacute;a de los dispositivos m&oacute;viles y 
	      		    navegadores modernos(siempre que soporten HTML 5, CSS y JavaScript)</p>
				
				<H5><b>Configuraci&oacute;n responsiva</b></H5>
				
				<p>Bootstrap provee un sistema de configuraci&oacute;n responsiva 
				    (Grid de Bootstrap) que permite a los componentes de una aplicaci&oacute;n 
				    adaptarse a la orientaci&oacute;n del dispositivo o al tamaño de la ventana 
				    f&aacute;cilmente en cualquier navegador.
				</p>
				
			</div>
	      
	      <!-- footer -->
	      <div class="modal-footer">
	      		<p>ProceSAR 2016 - Gerencia de Arquitectura de Software</p>        
	      </div>
	    </div>
	
	  </div>					<!-- fin caja de dialogo -->	 
	  
	</div>				<!-- fin de modal -->
	
	
	
	<div id="modalProductividad" class="modal fade" role="dialog">		<!-- inicia Modal Productividad -->
		  
	  <div class="modal-dialog modal-lg">	<!-- caja de dialogo -->
	
	    <!-- content-->
	    <div class="modal-content">
	      
	      <!-- header -->
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">×</button>
	        <img class="img-responsive"  alt="Logo ProceSAR mr." src="<c:url value='resources/images/bannerProductividad.png'/>">
	      </div>
	      
	      <!-- body -->
	      <div class="modal-body">
      			<H4><b>Experiencia de usuario superior que resuelve problemas de negocio</b></H4>
	      		
				<H5><b>Desarrollo</b></H5>
				
				<p>Incrementa la eficiencia en la construcci&oacute;n de vistas para m&uacute;ltiples 
				    plataformas y navegadores.
				</p>
				
				<H5><b>Diseño</b></H5>
				
				<p>Vistas que incluyen componentes de alto desempeño, fabricados y probados previamente.</p>
				
	      </div>
	      
	      <!-- footer -->
	      <div class="modal-footer">
	      		<p>ProceSAR 2016 - Gerencia de Arquitectura de Software</p>        
	      </div>
	    </div>
	
	  </div>					<!-- fin caja de dialogo -->	 
	  
	</div>				<!-- fin de modal -->
	
	
	
	<div id="modalAcercaDe" class="modal fade" role="dialog">		<!-- inicia Modal Acerca De -->
		  
	  <div class="modal-dialog modal-lg">	<!-- caja de dialogo -->
	
	    <!-- content-->
	    <div class="modal-content">
	      
	      <!-- header -->
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">×</button>	         	        	
	        
	        <img class="img-responsive"  alt="Logo ProceSAR mr." src="<c:url value='resources/images/bannerAcercaDe.png'/>">         
	        <!-- <h4 class="modal-title">Acerca del Showcase</h4> -->
	      </div>
	      
	      <!-- body -->
	      <div class="modal-body">
			<div class="row">
				<div class="col-xs-3 col-sm-3">
					<img  class="img-responsive" alt="Logo Showcase Bootstrap" src="<c:url value='resources/images/backLogoBootstrap.jpg'/>">
				</div>
				<div class="col-xs-9 col-sm-9">
						<p class="about">
							<b>Herramienta creada para agilizar el acceso a la
								documentaci&oacute;n e implementaci&oacute;n de componentes web,
								usando los frameworks Bootstrap y jQuery; como parte de la
								Arquitectura 3.0</b>
						</p>

			      	<p class="comentarios">Comentarios y dudas, favor de enviar un correo a GERENCIA_ARQUITECTURA_SOFTWARE@inet.procesar.com.mx</p>
	      		</div>
	      	</div>
	      </div>
	      
	      <!-- footer -->
	      <div class="modal-footer">
	      	<p>ProceSAR 2016 - Gerencia de Arquitectura de Software</p>	        
	      </div>
	    </div>
	
	  </div>					<!-- fin caja de dialogo -->	  
	  
	</div>				<!-- fin de modal -->	
	
	
	
	<!-- modales -->
		
