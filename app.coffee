express = require "express"
logfmt  = require "logfmt"
app     = express()

app.use logfmt.requestLogger()

port = Number(process.env.PORT || 5000)

app.use express.static("#{__dirname}/public")

app.listen port, ->
  console.log "Listening on #{port}"
