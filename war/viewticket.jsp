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
 <div id="bgGradient" class="maincontainer">

  	<form name="view_ticket_form" ng-submit="findTicket()" >
  		<label class="lbl">Ticket Id</label>
  		<input class="textbx" name="ticketid" ng-model="formData.ticketid" type="text" value="" required>
  		<span style="color:red" ng-show="view_ticket_form.ticketid.$dirty">
  			<span ng-show="view_ticket_form.ticketid.$error.required">Please enter a ticket id</span>
  		</span>
  		<br/><br/>
  		<br/>
  		<input type="submit" class="btn" value="View Ticket" />
  		
  	<br><br/>	
  	</form>
		<div id="editTicket" style="display: none">
			<table width="800px">
				<tr>
					
					<td style="" align="left" width="80"> ID:</td>
					<td id="__ticketId" align="left" width="50"></td>
					<td align="left" width="50"></td>
					<td width="20"></td>
					<td style="padding-left: 50px" width="100">Assigned To:</td>
					<td><input id="__assignedTo" type="text" value=""></input></td>
				</tr>
				<tr height="50"></tr>
				<tr class="nothing">
					<td style="" align="left" width="80"><b>Status :</b></td>
					<td id="status" align="left">
					<select id="__status" onfocus="checkFocus()" onchange="checkClosed()">
							<option value="NEW">NEW</option>
							<option value="OPEN">OPEN</option>
							<option value="CLOSED">CLOSED</option>
					</select></td>
					<td width="20"></td>
					<td style="padding-left: 50px"><b>Comments</b></td>
					<td><textarea id="__comments"></textarea></td>
				</tr>
			</table>
			<br>
			<div align="center" style="padding-right: 500px">
				<input style="margin-left: 10px" type="button" class="btn" value="Update" onclick="updateTicket()" />
			</div>
			<div style="display:none">
				<input id="__customerId" type="text" value=""></input>
			</div>
			<br>
		</div>

	</div>

</body></html>