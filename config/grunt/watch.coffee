module.exports = (grunt) ->
  grunt.config('watch',
    scribe:
      files: ['src/**/*.coffee']
      tasks: ['browserify:scribe', 'browserify:exposed']
    tests:
      files: ['tests/mocha/**/*.coffee']
      tasks: ['browserify:tests']
    coffee:
      files: ['demo/scripts/*.coffee', 'tests/webdriver/**/*.coffee']
      tasks: ['newer:coffee:all']
    jade:
      files: ['demo/*.jade', 'tests/**/*.jade']
      tasks: ['newer:jade']
    stylus:
      files: ['demo/**/*.styl', 'tests/**/*.styl']
      tasks: ['newer:stylus']
    imageEmbed:
      files: ['build/demo/styles/*.css', 'build/tests/**/*.css']
      tasks: ['newer:imageEmbed']
  )