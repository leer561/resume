angular.module 'front-end', ['front-end-data']
.controller 'frontEndCtrl', [
  '$scope'
  'frontEndData'
  ($scope, frontEndData) ->
    $scope.frontEndData = frontEndData
]
