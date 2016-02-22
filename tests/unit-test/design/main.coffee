describe "Controller designCtrl", ->
  beforeEach module('design', 'design-data')

  it 'should instantiated correctly', inject ($rootScope, $controller, designData) ->
    designData = designData
    scope = $rootScope.$new()
    controller = $controller 'designCtrl', {
      $scope: scope
      designData: designData
    }
    expect(controller).toBeDefined()
