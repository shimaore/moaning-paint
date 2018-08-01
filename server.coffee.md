    module.exports = main = ->
      cfg = do require './index'
      ducks = require 'thinkable-ducks/config'
      await ducks cfg
      return

    if require.main is module
      main().catch (error) ->
        console.error "Failed to start", error.stack
        process.exit 1
