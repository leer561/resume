angular.module 'design', ['design-data']
.controller 'designCtrl', [
  '$scope'
  'designData'
  ($scope, designData) ->
    $scope.designData = designData
]