express = require 'express'
app = require('express')()
http = require('http').Server(app)
hbs = require 'express-handlebars'
routes = require "./app/routes"

fs = require "fs"
utils = require "./modules/utils"

bodyParser = require "body-parser"
path = require "path"

hbsInstance = hbs.create(
  extname: '.html'
)

app.engine 'html', hbsInstance.engine
app.set "view engine", "html"
app.set "views", "./app/views"
app.use express.static("./app/public")
app.use express.static("./resources")
app.use "/", routes
app.use bodyParser.json()

http.listen process.env.PORT, ->
  utils.log "hr"
  utils.log "hr"
  utils.log "hr"
  utils.log "info", "listening on *:#{process.env.PORT}"
  return
