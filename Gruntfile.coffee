module.exports = (grunt) ->
  require('jit-grunt') grunt
  
  grunt.initConfig
    less:
      development:
        options:
          compress: true,
          yuicompress: true,
          optimization: 2
        files:
          "css/main.css" : "less/main.less"
  
  
    coffee:
      compileJoined:
        options:
          join: true
        files:
          'js/main.js':
            [
              'coffee/namespace.coffee',
              'coffee/utils/*.coffee'
              'coffee/math/*.coffee',
              'coffee/game/*.coffee',
              'coffee/Main.coffee'
              
            ]
            
    watch:
      coffee:
        files: ['coffee/*.coffee','coffee/**/*.coffee']
        tasks:
          [
            'coffee'
          ]
      styles:
        files: ['less/**/*.less'],
        tasks: ['less'],
        options:
          nospawn: true

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  
  grunt.registerTask 'default', ['coffee', 'less']
