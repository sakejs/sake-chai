use 'sake-bundle'
use 'sake-outdated'
use 'sake-publish'
use 'sake-version'
use 'sake-mocha'

option '-b', '--browser [browser]', 'browser to use for tests'
option '-g', '--grep [filter]',     'test filter'
option '-t', '--test [test]',       'specify test to run'
option '-v', '--verbose',           'enable verbose test logging'

task 'clean', 'clean project', ->
  exec 'rm -rf lib'

task 'build', 'build project', ->
  Promise.all [
    exec 'coffee -bc -o . src/register.coffee'
    bundle.write
      entry: 'src/index.coffee'
      compilers:
        coffee: version: 1
  ]
