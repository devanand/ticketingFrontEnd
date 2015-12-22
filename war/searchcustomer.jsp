<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/angular.js"></script> 
<script src="/js/app.js"></script> 

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body ng-app="ticketingapp" ng-controller="SearchTicketCtrl">
<%@ include file="header.jsp" %>
<%@ include file="leftnav.jsp" %>
 <div class="maincontainer">

  	<form name="view_ticket_form" >
  		<label class="lbl">Customer Phone</label>
  		<input class="textbx" name="custphone" ng-model="formData.custphone" type="text" value="" >
  		<br/><br/>
  		<label class="lbl">Customer Email</label>
  		<input class="textbx" name="email" ng-model="formData.email" type="text" value="" >
  		
  		<br/><br/>
  		<input type="submit" class="btn" value="Search" />
  		
  	</form>
  
  </div>

</body>
</html>