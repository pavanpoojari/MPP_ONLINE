var am = angular.module("myApp", []);

am.controller('ProductList', [ '$scope', '$http', function($scope, $http) {
	$scope.$emit('LOAD');
	
	$http.get('/ecom-ecart/product/all').then(function(response) {
		$scope.products = response.data;
		
		$scope.$emit('UNLOAD');
	});
} ]);
am.run(function($rootScope) {

	$rootScope.$on('LOAD', function() {
		$rootScope.loading = true;
	});

	$rootScope.$on('UNLOAD', function() {
		$rootScope.loading = false;
	});

});