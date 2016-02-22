angular.module 'main-header', ['header-data']
.directive 'mainHeader', [
  'headerData'
  '$location'
  (headerData, $location) ->
    restrict: 'E'
    templateUrl: '/common/directive/main-header/main.html'
    replace: true
    link: ($scope, $elm, $attrs) ->
      $scope.navs = headerData
      $scope.isActive = (url) ->
        return 'active' if $location.path() is url
]
