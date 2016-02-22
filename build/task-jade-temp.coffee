gulp = require 'gulp'
plugins = require('gulp-load-plugins')()
config = require './config.coffee'
errorHandler = require './error-handler'

path_src = config.path_src
dest_path = "#{config.path_app}/static/js/"

files = [
  "#{path_src}/application/**/*.jade"
  "!#{path_src}/application/index.jade"
]

task = ->
  gulp.src files
  .pipe plugins.plumber({errorHandler: errorHandler('JADE-TEMP')})
  .pipe plugins.jade()
  .pipe plugins.angularTemplatecache
    root: '/'
    module: "app-templates"
    filename: "templates-app.js"
    standalone: true
  .pipe plugins.uglify()
  .pipe gulp.dest dest_path
  .pipe plugins.livereload()

gulp.task "jade-temp", task

exports.watch = ->
  gulp.watch files, ['jade-temp']
