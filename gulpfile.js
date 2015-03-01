var gulp = require('gulp');
var R = require('ramda');


var symlinks = require('./symlinks.json');

gulp.task('link', function() {
  R.forEach(function(item) {
    var destination = R.head(item);
    var link = R.tail(item)[0];
    console.log('ln -sf ', destination, link);
  }, symlinks);
});
