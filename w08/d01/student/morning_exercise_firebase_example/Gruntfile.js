module.exports = function(grunt) {

  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    clean: {
      dist:        ["dist/*"],
      scripts:     ["dist/**/scripts"],
      GHPagesRepo: [
        '/Users/ga-pj/dev/wdi/example_firebase_todo/*',
        '!/Users/ga-pj/dev/wdi/example_firebase_todo/.git'
      ]
    },
    copy: {
      src: {
        files: [
          {expand: true, cwd: 'src', src: '**', dest: 'dist/'}
        ]
      },
      toGHPagesRepo: {
        files: [
          {expand: true, cwd: 'dist', src: '**', dest: '/Users/ga-pj/dev/wdi/example_firebase_todo'}
        ]
      }
    },
    processhtml: {
      dist: {
        options: {
          process: true
        },
        files: {
          'dist/basic/index.html':     ['dist/basic/index.html'],
          'dist/make_over/index.html': ['dist/make_over/index.html']
        }
      }
    },
    concat: {
      options: {
        separator: ';'
      },
      basic: {
        src:  ['src/basic/**/*.js'],
        dest: 'dist/basic/scripts/main.js',
      },
      make_over: {
        src:  ['src/make_over/**/*.js'],
        dest: 'dist/make_over/scripts/main.js',
      },
    },
    uglify: {
      options: {
        banner: '/*! <%= pkg.name %> <%= grunt.template.today("dd-mm-yyyy") %> */\n'
      },
      all: {
        files: {
          '<%= concat.basic.dest %>':     ['<%= concat.basic.dest %>'],
          '<%= concat.make_over.dest %>': ['<%= concat.make_over.dest %>']
        }
      }
    },
    markdown: {
      all: {
        files: [
          {
            expand: true,
            src:    'index.md',
            dest:   'dist/.',
            ext:    '.html'
          }
        ]
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-clean');
  grunt.loadNpmTasks('grunt-contrib-copy');
  grunt.loadNpmTasks('grunt-processhtml');
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-concat');
  grunt.loadNpmTasks('grunt-markdown');

  grunt.registerTask('default', ['clean:dist', 'copy', 'clean:scripts', 'processhtml', 'concat', 'uglify', 'markdown']);
  grunt.registerTask('copyToRepo', ['default', 'clean:GHPagesRepo', 'copy:toGHPagesRepo']);
};