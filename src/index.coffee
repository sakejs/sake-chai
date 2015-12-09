cake = require 'shortcake'

module.exports = (opts = {}) ->
  (task, option) ->
    task 'test', (opts) ->
      opts.useChai = true
