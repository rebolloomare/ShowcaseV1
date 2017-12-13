<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<link id="comun-template"  href="<c:url value='/resources/bootstrap/core/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css" />
	<link id="comun-template"  href="<c:url value='/resources/bootstrap/core/css/styles.css'/>" rel="stylesheet" type="text/css" />

	<script type="text/javascript" src="<c:url value='/resources/jquery/core/js/jquery.js'/>"></script>	
	<script type="text/javascript" src="<c:url value='/resources/bootstrap/core/js/bootstrap.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/bootstrap/core/js/scripts.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/bootstrap/core/js/jquery.min.js'/>"></script>

</head>
<body>
<div class="container">
<div class="panel panel-default">
<div class="panel-body">
 <div id="frmHorizontal">
<div class="container">
  <h2>Horizontal</h2>
  <form class="form-horizontal" style="width: 1100px">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
    </div>
  </div>
  <div class="form-group">
      <label for="text" class="col-sm-2 control-label">Text:</label>
      <div class="col-sm-10">
      	<input type="text" class="form-control" id="itText" placeholder="text">
      </div>
    </div>
    <div class="form-group">
  		<label for="sel1" class="col-sm-2 control-label">Select:</label>
  		<div class="col-sm-10">
  			<select class="form-control" id="selSelect">
    			<option>Option 1</option>
    			<option>Option 2</option>
    			<option>Option 3</option>
    			<option>Option 4</option>
  			</select>
  		</div>
	</div>
    <div class="form-group">
      <label for="num" class="col-sm-2 control-label">Number:</label>
      <div class="col-sm-10">
      	<input type="number" class="form-control" id="inNumber" placeholder="Number">
      </div>
    </div>
    <div class="form-group">
      <label class="col-sm-2 control-label">Remember me</label>
      <div class="col-sm-1">
      	<input type="checkbox" class="form-control" id="chbRemember">
      </div>
    </div>
    <div class="radiobutton"> 
    <label for="rb" class="col-sm-2 control-label">Radio Button:</label>
    	<div  class="col-sm-10">
    	<label class="radio-inline">
      		<input type="radio" id="rbOpt1" name="optradio">Option 1
    	</label>
    	<label class="radio-inline">
      		<input type="radio"id="rbOpt2" name="optradio">Option 2
    	</label>
    	<label class="radio-inline">
      		<input type="radio" id="rbOpt3" name="optradio">Option 3
    	</label>
    	</div>
	</div>
  <div class="form-horizontal">
    <div class="col-sm-offset-6 col-sm-10">
      <button type="submit" class="btn btn-default">Sign in</button>
    </div>
  </div>
</form>
</div>
</div>
</div>
</div>
</div>
</body>
</html>
