angular.module 'landing-page', ['profile-data', 'ngAnimate']
.controller 'LandingPageCtrl', [
  '$scope'
  'profileData'
  ($scope, profileData) ->
    $scope.profileData = profileData

]
