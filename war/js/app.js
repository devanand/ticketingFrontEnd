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
	
});

