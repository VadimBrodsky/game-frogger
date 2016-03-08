gulp   = require('gulp')
coffee = require('gulp-coffee')
Mincer = require('mincer')
mince  = require('gulp-mincer')

folders =
  js:  'assets/javascripts'
  css: 'assets/stylesheets'
  public: 'public'

env = new Mincer.Environment()
env.appendPath(folders.js)
env.appendPath(folders.css)

gulp.task 'default', ->
  gulp.src 'assets/**/application.*'
  .pipe(mince env)
  .pipe(gulp.dest folders.public)


