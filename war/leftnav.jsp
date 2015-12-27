<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="/css/style.css" rel="stylesheet" />
    
     <script src="/js/jquery-1.10.2.js"></script>
  	 <script src="/js/jquery-ui.js"></script>
     <script>
  		$(function() {
	    	$( "#accordion" ).accordion({
    	  	collapsible: false
    		});
  		});
  		
  		function createTicket(){
  			window.location="createticket.jsp";
  		}
  		
  		function viewTicket(){
  			window.location="viewticket.jsp";
  		}
  		
  		function searchCustomer(){
  			window.location="searchcustomer.jsp";
  		}
  		
  </script>

</head>
<body>

<div id="accordion" class="leftnav">
  		
  		<h3 class="clicklink">Tickets</h3>
  		<div>
  			<ul class="clicklink" style="list-style: none;">
  				<li onclick="createTicket()">Create Tickets</li>
  				<li onclick="viewTicket()">View Tickets</li>
  				
  			</ul>
  		</div>
  		<h3 class="clicklink">Search</h3>
  		<div>
  			<ul class="clicklink"  style="list-style: none;">
  				<li onclick="searchCustomer()">Customer</li>
  			</ul>
  		</div>
  		
  	</div>

</body>
</html>