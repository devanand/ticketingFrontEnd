<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/angular.js"></script> 
<script src="/js/app.js"></script> 
<script src="/js/jquery-1.10.2.js"></script>
<script src="/js/jquery-ui.js"></script>
<script>
  $(function() {
	  $('#table').hide();
    $( "input[name='from']" ).datepicker({ 
        onSelect: function(){
        var selected = $(this).val();
        //alert(selected);
        }
    });
    $( "input[name='to']" ).datepicker({ 
        onSelect: function(){
        var selected = $(this).val();
        
        }
    });
  });
 </script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body ng-app="ticketingapp" ng-controller="SearchTicketCtrl">
<%@ include file="header.jsp" %>
<%@ include file="leftnav.jsp" %>
 <div class="maincontainer">
  	<form name="view_ticket_form" ng-submit="processSearch()">
  		<label class="lbl">Customer Phone</label>
  		<input class="textbx" name="custphone" ng-model="formData.custphone" ng-init= "" type="text" value="" >
  		<br/><br/><br/>
  		<label class="lbl">Ticket ID</label>
  		<input class="textbx" name="ticketid" ng-model="formData.ticketid" ng-init= "" type="text" value="" >
  		<br/><br/><br/>
  		<label class="lbl">From</label>
  		<input class="textbx" id="from" name="from" ng-model="formData.from" ng-init= "" type="text" value="" >
  		<br/><br/><br/>
  		<label class="lbl">To</label>
  		<input class="textbx" id="to" name="to" ng-model="formData.to" type="text" value="" >
  		<br/><br/><br/>
  		<input type="submit" class="btn" value="Search" />
  	</form>
  	<br/><br/>
	 <div id="table" >
		<div class="header-row row">
	    	<span class="cell primary">Ticket ID</span>
	    	<span class="cell">Comments</span>
	     	<span class="cell">Agent ID</span>
	    	<span class="cell">Customer ID</span>
	    	<span class="cell">Status</span>
	  	</div>
		<!-- <div class="row">
			<span class="cell primary"data-label="Vehicle">2013 Subaru WRX</span> 
			<span class="cell" data-label="Exterior">World Rally Blue</span> 
			<span class="cell" data-label="Interior">Black</span>
			<span class="cell" data-label="Engine">2.5L H4 Turbo</span> 
			<span class="cell" data-label="Trans"><a href="">5 Speed</a></span>
		</div> -->
		<!-- <div class="row">
			<span class="cell primary" data-label="Vehicle">2013 Subaru WRX STI</span> 
			<span class="cell" data-label="Exterior">Crystal Black Silica</span> 
			<span class="cell" data-label="Interior">Black</span> 
			<span class="cell" data-label="Engine">2.5L H4 Turbo</span> 
			<span class="cell" data-label="Trans">6 Speed</span>
		</div>
		<div class="row">
			<input type="radio" name="expand"> <span class="cell primary"
				data-label="Vehicle">2013 Subaru BRZ</span> <span class="cell"
				data-label="Exterior">Dark Grey Metallic</span> <span class="cell"
				data-label="Interior">Black</span> <span class="cell"
				data-label="Engine">2.0L H4</span> <span class="cell"
				data-label="Trans">6 Speed</span>
		</div>
		<div class="row">
			<input type="radio" name="expand"> <span class="cell primary"
				data-label="Vehicle">2013 Subaru Legacy</span> <span class="cell"
				data-label="Exterior">Satin White Pearl</span> <span class="cell"
				data-label="Interior">Black</span> <span class="cell"
				data-label="Engine">2.5L H4</span> <span class="cell"
				data-label="Trans">Auto</span>
		</div>
		<div class="row">
			<input type="radio" name="expand"> <span class="cell primary"
				data-label="Vehicle">2013 Subaru Legacy</span> <span class="cell"
				data-label="Exterior">Twilight Blue Metallic</span> <span
				class="cell" data-label="Interior">Black</span> <span class="cell"
				data-label="Engine">2.5L H4</span> <span class="cell"
				data-label="Trans">Auto</span>
		</div>
		<div class="row">
			<input type="radio" name="expand"> <span class="cell primary"
				data-label="Vehicle">2013 Subaru Forester</span> <span class="cell"
				data-label="Exterior">Ice Silver Metallic</span> <span class="cell"
				data-label="Interior">Black</span> <span class="cell"
				data-label="Engine">2.5L H4 Turbo</span> <span class="cell"
				data-label="Trans">Auto</span>
		</div> -->
  
  </div>
</body>
</html>