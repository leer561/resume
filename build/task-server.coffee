gulp = require 'gulp'
config = require './config.coffee'
serveStatic = require 'serve-static'
express = require('express')

gulp.task "server", ->
  app = express()
  app.use serveStatic("#{config.path_app}", {
    'index': ['index.html', 'default.html']
  })
  app.listen 9001
