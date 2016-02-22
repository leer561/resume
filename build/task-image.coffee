gulp = require 'gulp'
plugins = require('gulp-load-plugins')()
config = require './config.coffee'
errorHandler = require './error-handler'
del = require 'del'

path_src = config.path_src
dest_path = "#{config.path_app}/static/img"

files = [
  "#{path_src}/img/**/*.jpg"
  "#{path_src}/img/**/*.gif"
  "#{path_src}/img/**/*.png"
  "#{path_src}/img/**/_*.*"
]

gulp.task "image", ->
  del dest_path
  .then ->
    gulp.src files
    .pipe gulp.dest dest_path

exports.watch = ->
  gulp.watch files, ['image']
