angular.module 'meta-config', ['meta-tag']
.config [
  'metaTagProvider'
  (metaTagProvider) ->
    metaTagProvider.setMeta {
      '/': {
        title: "Leer's resume"
        description: 'resume'
      },
      '/front': {
        title: "前端开发"
        description: '前端开发'
      },
      '/design': {
        title: "UI设计"
        description: 'UI设计'
      },
      '/ios': {
        title: "IOS开发"
        description: 'IOS开发'
      },
      '/404': {
        title: 'Page Not Found - RightCapital'
      }
    }
]
