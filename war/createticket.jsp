<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="/css/style.css" rel="stylesheet" />
<script src="/js/angular.js"></script> 
<script src="/js/app.js"></script> 
     
</head>
<body ng-app="ticketingapp"  ng-controller="CreateTicketCtrl" style=" margin-left: 0px;margin-right: auto;">
<%@ include file="header.jsp" %>
<%@ include file="leftnav.jsp" %>
 <div class="maincontainer">
 <div id="msg" ng-show="msg">{{msg}}</div>
  	<form name="create_ticket_form" ng-submit="processForm()" >
  		<label class="lbl">Customer Phone</label>
  		<input class="textbx" name="custid" ng-model="formData.custid" type="text" value="9823729222" required>
  		<span style="color:red" ng-show="create_ticket_form.custid.$dirty">
  			<span ng-show="create_ticket_form.custid.$error.required">Customer id is required</span>
  		</span>
  		<br/><br/>
  		<label class="lbl">Comments</label>
  		<textarea class="txtarea" name="comments" ng-model="formData.comments" value="" required></textarea>
  		<span style="color:red" ng-show="create_ticket_form.comments.$dirty">
  			<span ng-show="create_ticket_form.comments.$error.required">Comments cannot be empty</span>
  		</span>
  		<br/>
  		
  		<input type="submit" class="btn" value="Create"/>
  		<br/>
  		
  	</form>
  
  </div>

</body>
</html>