angular.module 'route-config', ['ngRoute']
.config [
  '$routeProvider'
  ($routeProvider) ->
    $routeProvider
    .when("/", {
      controller: 'LandingPageCtrl'
      templateUrl: '/landing-page/main.html'
    })
    .when("/front", {
        controller: 'frontEndCtrl'
        templateUrl: '/front-end/main.html'
    })
    .when("/design", {
        controller: 'designCtrl'
        templateUrl: '/design/main.html'
    })
    .when("/ios", {
        templateUrl: '/ios/main.html'
      })
    .otherwise({
      controller: 'LandingPageCtrl'
      templateUrl: '/landing-page/main.html'
    })
]
