var am = angular.module("myApp", []);

am.controller('ProductList', [ '$scope', '$http', function($scope, $http) {
	
	$http.get('/ecom-ecart/product/all').then(
		function(response){
			$scope.products = response.data;
		});
} ])