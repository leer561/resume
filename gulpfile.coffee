require('require-dir')('./build')
gulp = require 'gulp'

gulp.task "build", ["jade", "bower", "coffee", "sass", "jade-temp", "image"]

gulp.task "default", ["build", "watch", "server"]

gulp.task "production", ["build"]
