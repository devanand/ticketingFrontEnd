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
<body ng-app="ticketingapp" ng-controller="ViewTicketCtrl">
<%@ include file="header.jsp" %>
<%@ include file="leftnav.jsp" %>
 <div class="maincontainer">

  	<form name="view_ticket_form" ng-submit="processForm()" >
  		<label class="lbl">TicketId</label>
  		<input class="textbx" name="ticketid" ng-model="formData.ticketid" type="text" value="" required>
  		<span style="color:red" ng-show="view_ticket_form.ticketid.$dirty">
  			<span ng-show="view_ticket_form.ticketid.$error.required">Please enter a ticket id</span>
  		</span>
  		<br/><br/>
  		
  		<input type="submit" class="btn" value="View Ticket" />
  		<br/>
  		
  	</form>
  	<br><br/>
  	<table>
			<tr>
				<th>Ticket Id</th>
				<th>Status</th>
				<th>Comments</th>
				<th>Assign To</th>
			</tr>
			<tr>
				<td>T123</td>
				<td><Select><option value="Open">
						    <option value="Closed">
					</Select>
				</td>
				<td><textarea></textarea></td>
			</tr>

	</table>
  
  </div>

</body></html>