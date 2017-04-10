exec = require 'executive'

require '../register'

describe 'sake-chai', ->
  it 'should complain if mocha is missing', ->
    {stdout, stderr} = yield exec 'sake', cwd: __dirname
