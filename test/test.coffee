exec = require 'executive'

describe 'cake-chai', ->
  it 'should add tasks', ->
    {stdout} = yield exec 'cake', cwd: __dirname
