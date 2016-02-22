gulp = require 'gulp'
plugins = require('gulp-load-plugins')()
config = require './config.coffee'
errorHandler = require './error-handler'
del = require 'del'

path_src = config.path_src
dest_path = config.path_app

files = [
  "#{path_src}/application/index.jade"
]

task = ->
  del "#{dest_path}/**/*.html"
  .then ->
    gulp.src files
    .pipe plugins.plumber({errorHandler: errorHandler('JADE')})
    .pipe plugins.jade()
    .pipe gulp.dest dest_path
    .pipe plugins.livereload()

gulp.task "jade", task

exports.watch = ->
  gulp.watch files, ['jade']
