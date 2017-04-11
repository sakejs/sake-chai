use 'sake-bundle'
use 'sake-mocha'
use 'sake-outdated'
use 'sake-publish'
use 'sake-version'

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
