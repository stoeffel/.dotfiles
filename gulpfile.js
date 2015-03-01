var gulp = require('gulp');
var symlink = require('gulp-symlink');
var R = require('ramda');


var symlinks = require('./symlinks.json');

gulp.task('link', function() {
  var dests = R.map(R.head, symlinks);
  var links = R.flatten(R.map(R.tail, symlinks));

  return gulp.src(dests)
    .pipe(symlink(links, { force: true }));
});
