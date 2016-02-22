gulp = require 'gulp'
plugins = require('gulp-load-plugins')()
config = require './config.coffee'

coffee = require './task-coffee'
jade = require './task-jade'
bower = require './task-bower'
sass = require './task-sass'
temp = require './task-jade-temp'
image = require './task-image'

gulp.task "watch", ["build"], ->
  if config.IS_LOCAL
    plugins.livereload.listen quiet: true

    coffee.watch()
    jade.watch()
    bower.watch()
    sass.watch()
    temp.watch()
    image.watch()

  return
