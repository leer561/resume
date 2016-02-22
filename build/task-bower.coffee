gulp = require 'gulp'
plugins = require('gulp-load-plugins')()
bowerFiles = require 'main-bower-files'

errorHandler = require './error-handler'
config = require './config'

path_app = config.path_app
dest_path = "#{config.path_app}/static/vendor"

vendor = "#{path_app}/static/vendor"
bower_src = 'bower_components'

orderFiles = [
  "#{bower_src}/lodash/**/*.js"
  "#{bower_src}/jquery/**/*.js"
  "#{bower_src}/tether/**/*.js"
  "#{bower_src}/angular/*.js"
  "#{bower_src}/angular*/*.js"
]


gulp.task 'bower', ->
  gulp.src bowerFiles(), base: bower_src
  .pipe plugins.plumber {errorHandler: errorHandler('BOWER_FILES')}
  .pipe plugins.order(orderFiles, base: process.cwd())
  .pipe plugins.concat("vendor.js")
  .pipe plugins.if !config.IS_LOCAL, plugins.uglify()
  .pipe plugins.if config.IS_LOCAL, plugins.sourcemaps.write()
  .pipe gulp.dest(dest_path)

exports.watch = ->
  gulp.watch bowerFiles(), ['bower']

