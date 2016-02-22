gulp = require 'gulp'
plugins = require('gulp-load-plugins')()
config = require './config.coffee'
errorHandler = require './error-handler'

path_src = config.path_src
dest_path = config.path_app

orderFiles = [
  "#{path_src}/application/common/**/*.coffee"
  "#{path_src}/application/main.coffee"
  "#{path_src}/application/**/*.coffee"
]

gulp.task 'coffee', ->
  gulp.src "#{path_src}/application/**/*.coffee", base: path_src
  .pipe plugins.plumber {errorHandler: errorHandler('COFFEE')}
  .pipe plugins.coffee()
  .pipe plugins.order(orderFiles, base: process.cwd())
  .pipe plugins.concat("app.js")
  .pipe plugins.if !config.IS_LOCAL, plugins.uglify()
  .pipe plugins.if config.IS_LOCAL, plugins.sourcemaps.write()
  .pipe gulp.dest("#{dest_path}/static/js")
  .pipe plugins.livereload()

 exports.watch = ->
   gulp.watch orderFiles, ['coffee']
