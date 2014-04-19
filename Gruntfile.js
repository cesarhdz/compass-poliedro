module.exports = function(grunt) {

  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-gh-pages');

  // Project configuration.
  grunt.initConfig({
    // Github-pages
    'gh-pages': {
      options: {
        base: 'gh-page'
      },
      src: ['**']
    },
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