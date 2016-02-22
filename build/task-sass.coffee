gulp = require 'gulp'
plugins = require('gulp-load-plugins')()
config = require './config.coffee'
errorHandler = require './error-handler'
del = require 'del'

path_src = config.path_src
dest_path = config.path_app

orderFiles = [
  "#{path_src}/scss/variables.scss"
  "#{path_src}/scss/bootstrap.scss"
  "#{path_src}/application/scss/*.scss"
  "#{path_src}/application/common/*.scss"
  "#{path_src}/application/**/*.scss"
]

gulp.task 'sass', ->
  del "#{dest_path}/**/*.css"
  .then ->
    gulp.src "#{path_src}/**/*.scss", base: path_src
    .pipe plugins.plumber {errorHandler: errorHandler('SASS')}
    .pipe plugins.order(orderFiles, base: process.cwd())
    .pipe plugins.concat("app.scss")
    .pipe plugins.sass({outputStyle: 'compressed'})
    .pipe gulp.dest("#{dest_path}/static/css")
    .pipe plugins.livereload()

  exports.watch = ->
    gulp.watch orderFiles, ['sass']
