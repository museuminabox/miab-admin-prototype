fs = require "fs"
utils = require "../../../modules/utils"
mongoose  = require "mongoose"

module.exports = homepage =

  index: (request, response) ->
    utils.log "hr"
    utils.log "info", "In homepage.index()"

    templateValues =
      msg: "hello world"

    response.render "homepage/index", templateValues
