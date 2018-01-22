
var app = angular.module('Account');

var loginController = function($scope) {
	$scope.login = "testLogin";
	$scope.isError = jQuery('#jstlErrorValue').val();
	$scope.errorMsg = jQuery('#jstlErrorMessageValue').val();
	if (jQuery('#jstlErrorMessageValue').val() === " "  ) {$scope.isError = false; }
}

app.controller('loginCtrl', ['$scope',loginController]);