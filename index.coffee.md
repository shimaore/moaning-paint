    config = require 'ccnq4-config'

    module.exports = ->
      console.log "Loading config"
      cfg = config()

      cfg.use = [
        'tough-rate/middleware/config'
      ]

      cfg.use = cfg.use.map (m) ->
        console.log "Loading #{m}"
        require m

      cfg
