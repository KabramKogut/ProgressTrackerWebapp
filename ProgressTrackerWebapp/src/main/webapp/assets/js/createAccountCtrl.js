var app = angular.module('createAccount', [] );

var createAccountController = function($scope) {
	$scope.firstName = "John";
	$scope.lastName = "Doe";
	$scope.sex = ["Man","Woman"];
	$scope.somatotype = ["Ectomorphs","Endomorphs", "Mesomorphs"]
}

app.filter('range', function() {
	  return function(input, min, max) {
		    min = parseInt(min); //Make string input int
		    max = parseInt(max);
		    for (var i=min; i<max; i++)
		      input.push(i);
		    return input;
		  };
		});


app.controller('createAccountCtrl', createAccountController);