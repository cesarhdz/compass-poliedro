module.exports = function(grunt) {

  grunt.loadNpmTasks('grunt-contrib-watch');

  // Project configuration.
  grunt.initConfig({
    watch: {
      theme: {
        files: [
          // Archivos del tema
          "public/**/*",
          "views/**/*"
        ],
        options: {
          livereload: true
        }
      }
    }
  });

};