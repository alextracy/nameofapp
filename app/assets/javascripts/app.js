var app = angular.module('shop', ['ngResource']);

$(document).on('ready page:load', function(){
	angular.bootstrap(document.body, ['shop'])
});

app.factory('models', ['$resource', function($resource){
	var orders_model = $resource("/orders/:id.json", {id: "@id", total: "@total" });
	var products_model = $resource("/products/:id.json", {id: "@id" });
	
	var x = {
		orders: orders_model,
		products: products_model
	};
	return x;
}]);

app.controller('OrdersCtrl', ['$scope', 'models', function($scope, models){
	$scope.orders = models.orders.query();
	$scope.products = models.products.query();

	$scope.addOrder = function(){
		if(!$scope.newOrder.product_id || $scope.newOrder.total === ''){ return; }
		order = models.orders.save($scope.newOrder, function(){
			recent_order = models.orders.get({id: order.id});
			$scope.orders.push(recent_order);
			$scope.newOrder = '';
		});
	}
	$scope.deleteOrder = function(order){
		models.orders.delete(order);
		$scope.orders.splice($scope.orders.indexOf(order), 1);
	}

}]);

/* angular.module('momentumService', ['ngResource']).
  factory('Task', function($resource) {
    return $resource('/tasks/:task_id', {}, {
      destroy: { method: 'DELETE' }
    });
  });

  http://blog.berylliumwork.com/2012/09/tutorials-on-angularjs-and-rails-4.html
*/