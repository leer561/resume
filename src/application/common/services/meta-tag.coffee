# Set page Title and meta description
angular.module 'meta-tag', []
.provider 'metaTag', [
  ->
    meta = {}
    {
    setMeta: (urlMeta) ->
      meta = angular.extend meta, urlMeta

    $get: -> {
      getMeta: (path) ->
        metaPath = meta[path] ? meta['/']
        metaPath.is404 = /\/404/.test path
        metaPath
      }
    }
]
.run [
  '$rootScope'
  '$location'
  'metaTag'
  ($rootScope, $location, metaTag) ->
    $rootScope.$on '$locationChangeSuccess', ->
      $rootScope.metatags = metaTag.getMeta $location.path()
]
