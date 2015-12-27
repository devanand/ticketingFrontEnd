
var urlPrefix = "http://192.168.1.3:9000/";
var agent = "Devanand";
function genTicketId(length,chars){
	
	    var mask = '';
	    if (chars.indexOf('a') > -1) mask += 'abcdefghijklmnopqrstuvwxyz';
	    if (chars.indexOf('A') > -1) mask += 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
	    if (chars.indexOf('#') > -1) mask += '0123456789';
	    if (chars.indexOf('!') > -1) mask += '~`!@#$%^&*()_+-={}[]:";\'<>?,./|\\';
	    var result = '';
	    for (var i = length; i > 0; --i) result += mask[Math.floor(Math.random() * mask.length)];
	    return result;
}

function dateToMilliseconds(dateString) {
	var from = dateString.split("/");
	if(from.length!=3) {
		return "";
	}
	var f = new Date(from[2], from[0] - 1, from[1]);
	console.log(f);
	return f.getTime();
}

function validateEmail(email) {
    var re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(email);
}

function getStatus(status) {
	var a = new Array();
	 a[1] = "NEW";
	 a[2] = "OPEN";
	 a[3] = "CLOSED";
	 return a[status];
}

var app = angular.module('ticketingapp', []);
app.controller('CreateTicketCtrl', function($scope, $http) {
	$scope.formData={};
	var ticketId = genTicketId(10, 'A#');
	console.log("ticket Id "+ticketId);
	$scope.processForm = function(){
		var now = new Date().getTime();
		//console.log("form submitted "+$scope.formData.custid);
		$http({
			method  :'POST',
			url: urlPrefix+"generate",
			//data: $scope.formData, // pass in data as strings
			

			data:{"ticketId":ticketId,"agentId":agent,"comments":$scope.formData.comments,"status":1,"customerId":$scope.formData.custid,"assignedTo":"","generatedTime":now},
			headers :{'Content-Type':'application/json'} // set the headers so angular passing info as form data (not request payload)
			})
			.success(function(data){
			console.log(data);
			
				$scope.msg = "Ticket successfully created with ticket id "+data.ticketId;
			
			})
			.error(function(data){
				console.log(data);
				$scope.msg = data;
			});
		
		
	};
	    
});

app.controller('ViewTicketCtrl',function($scope, $http){
	
	
	
}); 

app.controller('SearchTicketCtrl',function($scope,$http){
	$scope.formData={};
	
	$scope.processSearch = function(){
		var ticketId = $scope.formData.ticketid;
		var customerId = $scope.formData.custphone;
		var from = ""+dateToMilliseconds(document.getElementById("from").value);
		var to = ""+(dateToMilliseconds(document.getElementById("to").value));
		if(from>to) {
			alert("Start date should be before the end date");
			return;
		}
		$http({
			method  :'POST',
			url: urlPrefix+"getTickets",
			data:{"ticketId":ticketId,"customerId":customerId,"timeStart":from,"timeEnd":to, "agentId":agent},
			headers :{'Content-Type':'application/json'}
		}).success(function(data){
			if(data != undefined||data != null) {
				var arr = $.map(data, function(el) { return el; })
				addToTable(arr);
				
			}
		}).error(function(data){
			alert("Internal server error ")
		});
	};
});

function addToTable(data) {
	console.log(data);
	for( var i=0;i<data.length;i++) {
		var temp = data[i];
		
		var iDiv = document.createElement('div');
		iDiv.id = temp.ticketId;
		iDiv.className = 'row';
		document.getElementById('table').appendChild(iDiv);
		
		var span1 = document.createElement('span');
		span1.id="ticketId";
		span1.className="cell";
		span1.innerHTML=temp.ticketId;
		
		iDiv.appendChild(span1);
		
		var span2 = document.createElement('span');
		span2.id="comments";
		span2.className="cell";
		span2.innerHTML=temp.comments;
		
		iDiv.appendChild(span2);
		
		var span3 = document.createElement('span');
		span3.id="agentId";
		span3.className="cell";
		span3.innerHTML=temp.agentId;
		
		iDiv.appendChild(span3);
		
		var span4 = document.createElement('span');
		span4.id="customerId";
		span4.className="cell";
		span4.innerHTML=temp.customerId;
		
		iDiv.appendChild(span4);
		
		var span5 = document.createElement('span');
		span5.id="status";
		span5.className="cell";
		span5.innerHTML=getStatus(temp.status);
		
		iDiv.appendChild(span5);
	}
	if(data.length>0)
	$('#table').show();
}

